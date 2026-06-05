Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB43369222
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780668274; cv=none; b=a14u5prk1EvSUaBiaN/xAb4JxMyKFpqvS0yzDDT/g+78iNON9Jt9G7UfxSYr55GE0rkxoV34JoJF61Z2z8UxMuSPRfURtCkocxxeNcjPkyuNZzdNJSiGtaY2lmgVK6gv4MB62x6JANc1W9v2L0HdKiikBLJHEFv8X00MqzxKbQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780668274; c=relaxed/simple;
	bh=eJde10k1J9snRes0MK9GcueSrO0+VByygHt6dIJBUus=;
	h=To:Subject:From:Message-Id:Date; b=XuogLCO3Ny9FyFIDSH6ApTyvzzsXJm9eK65NLaP7PPRnDx+VgUrwXrIP9ZUldKe5Mdq2h5LamutxyHUBshd/sAnMD1Vc2ZfN3L9Y9bgMUESg5iwzsVAUsKWauzPwx8F2QsEAbVzihj19dmavEi4Q9oYBjzct1vObB/8ZYqAaUII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqg+p/SX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqg+p/SX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E433BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780668273;
	bh=eJde10k1J9snRes0MK9GcueSrO0+VByygHt6dIJBUus=;
	h=To:Subject:From:Date:From;
	b=dqg+p/SXdBgOnGdAa61O5arVT3rZZ1/WFiNP+dd9kZhZ4afFV9jeeqoTSHkiO/aCj
	 b/gafQt5T25DJCxQdx/nH1Y6CUCps0DRopIRiwDM4cfzDS3qVDg6y9/M7XPtcy3vmo
	 Gx3yHxFzM8TM476h0jhgIQwjF6jqV/wx6VRNu74rCwLIvRgLU7ijWmD1oZGxP+w8OZ
	 MDNUMtnWJZGBlA5li3B2LnWiM+6gYUe7CGUo/oKoVg8wSkLQREYcGU76O8Ir8TFMo4
	 VMGNWZb94OBGjihuFjjQOXuCyIKzSfJA5PrrgKEJMXMNSAXjj4QyyEvuuFAQc59QyA
	 eDZfx0vGBWXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0BBCD8C83
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066827374.4275.15799892819862776260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42904cd4b817924012431c3ebb97ac26404e4a8a4902af2bbafe62e3d80dc91
Date: Fri, 05 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780668273
