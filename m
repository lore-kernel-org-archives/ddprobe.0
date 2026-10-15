Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571673E1CFD
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792092634; cv=none; b=mbsMapLdpBTUYG57VTrYBfGyt9ZnmWBluBouvm5EI6Dvn+5x+3tfkUjTNHomg/JcGJ+A2h/qIRFbxAr2Ob6HXz2Xtij5KAkwOlop9QzWfY7eGAz/CHdyXkUh7Htn9RKywAkcW0+YkxM/0M6sCs4tlKBohZKJEc2AaOg79zFRgwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792092634; c=relaxed/simple;
	bh=NQskMpZK+KgbvTB5GmJb650Mh/ktZ3pGhNgCbF94od8=;
	h=To:Subject:From:Message-Id:Date; b=o23xScV47vTUxt1dsqO8sai6s8F87MzOviiD/ASe+0jG4UbUVc9bPQASx6j5m/TEFbI2C5m8d1tPeKnsxzjPMeekmXegk+bstG7Ti1w7tk2rDwlDKYw+39pRIypIJTE57iAVbSg8BHuzHMTLfqAO1yr5JgClwD4pkeoQ3/CtC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yg67ihai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yg67ihai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2B3C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792092633;
	bh=NQskMpZK+KgbvTB5GmJb650Mh/ktZ3pGhNgCbF94od8=;
	h=To:Subject:From:Date:From;
	b=Yg67ihainiC2utvV8DQVzoZf4sjQlNe7zheQNP9gvaGw+EaeTicG9rXeEtFYGgxDF
	 9qeIDfGth8VrPG8esA2lmnE0+k6TzGPz+7j/m4ZEmSjg2ttpraKcZRR9I54nHAm9Tx
	 lG1Cph08xO2WgMYlNJLBneRLImSauRHMrr5QivhR9I+qGcLM2N7eKKgB59FIIzg+PO
	 cRYw50XvZwoVmnf4sFj8Ebp9KQyM1r+uyZqQoQrirND5auendZ+gDU298t3HZVIHQa
	 yaGGoj6LMAEFIxHGbI9bsS/TV072YenXzY89jNHqjJUs7NLZ1eraHMsr3fd5zIR+tk
	 5Cf+30wpcvwUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABCECC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209263368.5633.11586111734946990506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9024571f57e71e5faccd52fdb47746a9cfca3c7d1944f6e6a614c0f7f747f1
Date: Thu, 15 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792092633
