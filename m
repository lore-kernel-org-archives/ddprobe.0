Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F90537B015
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777757854; cv=none; b=IOozMLQCdsLpj/gDSsHxx6l4xfD0aOxQn4rwsDDRxlM+D3A98+GDRAHu40qjU3Hf01mupHFcIwgudoy5lT1qQFn3Lhre6In7xfUPhwBvE+7zt+n6M+6/yN8SqmLs2+u5EeYq4/hyYg5qIW5GD6y6xmSjoU7xIeb9FBPPcMrI2lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777757854; c=relaxed/simple;
	bh=aWSBxlF8gBEklE3QcKuvhd6t+ltpL7baWM/8Tb3paCU=;
	h=To:Subject:From:Message-Id:Date; b=plOl2PpxJ/Mkjrfd1nmDNdOehCmmH89ooTQKrJw1zWaoRD8tAnS26AGU7lkvY8owTQvhKyKs8GfSKk2lPi3jcE4HXptQP8DVe7JVpG6uV0ud7nQDxV+A7drIsyvHmiTfaC/RdyS0i6OLdSHjutCk7aVgL/A+5IZkQcDPKZ9K+CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDSTtK1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDSTtK1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0519C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777757853;
	bh=aWSBxlF8gBEklE3QcKuvhd6t+ltpL7baWM/8Tb3paCU=;
	h=To:Subject:From:Date:From;
	b=sDSTtK1WNoqscc2NCXYPg3tdNIxcnZvPQTjaVkMTcnrMDs9V0lvxX51tQn+ks0epy
	 AVsmciiXco3GMkDsYFdGbRL1VzvpbehunEzd1sxuoi3OHTc9raiH0gZshsQKfoBK1M
	 JT2GmLokqxu+QoVHClSuq7CDkf9O3qcD/w3Us0lzCo2X7x52s2KxCbqYBgakmzDzlG
	 oCl+MXG1Noi5Fhij50IJgGn496aRXC/jtMmzIu0ZmeWAEOWVBpNULlJxcuBM8YPA1a
	 hEIaXq8ZEvbjHPB+DuIRqJsCKOWocH1Nxy7C9ism0C1xnfXsa68Bze9Vq2IdHXcYvK
	 l4k/M8NDc8H0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB31CD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775785368.30057.969701110707394892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989a1a052bf6ec95665e881e76b8e2b1c57010a9836808c2871f67ba8d8597f0
Date: Sat, 02 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777757853
