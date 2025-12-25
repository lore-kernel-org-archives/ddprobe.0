Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04330757EA
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766652834; cv=none; b=mmTZWE3OZZLQ/0/2Q4MnJqOYvGcWN0+CBaxfUWyVe0a2sXY/haAqYac9K6sBE7wGsQPUE3y4ZxcXVuE5Ht7uzXDYm9WhWiA4VCam3cgt2j3OpN+GZE7WDdJsUHyJENvI2BcYKibyylOVr4y/fSQusZa6WvCjukF26YxCBcljjQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766652834; c=relaxed/simple;
	bh=WAz5tQSSJuQZijV9bH5FWdlkfrrC4u4N/ygpV9hL0K8=;
	h=To:Subject:From:Message-Id:Date; b=uNIUd9KQDi00kGtikJTlXvGMt5vgaLpuBkotAynR7q5GYVEqfNS8ZRMCwvyr2KBgimyghsrnnmJm3Y0mg4IcaGVHAKv29VTtNbC2UxWzNw5ZDGsnJ37hrFz8MhqAzhnM18zoqfDW6IFkfL0r9Xofwp1ngC9FBfEUmcrp8B4868E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2y/yY29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2y/yY29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766652833;
	bh=WAz5tQSSJuQZijV9bH5FWdlkfrrC4u4N/ygpV9hL0K8=;
	h=To:Subject:From:Date:From;
	b=p2y/yY29m0e9BsbSxCNlriYm/w3QCbKHkgIlulP1Pn9EjtMqrb3lQQzOMPfdON6GK
	 gcddLu2ibXmWTY9NJ/cROPr0YZ3yWF3FMIRxz5OxX7GE5Q+5N20C09M0RyeOagFAxy
	 Y6K1OqYvNO1BPkzJBtd02sKAc8aonBkvnnPSQ5Ir28UhSx3SM/SnbiPiMJwGvKx6Qp
	 c/wm+iZNHG8Vgzd5Fl3fJGVNV+mQT6rOR1RrwC2GgHvNv118FAZYTbE3WHag6oPDOF
	 suyp2JC7CkOQZxOmV9pQfXvKmhGCheP6CfACXRxYSf2I1NMfOZyMCsQea+2VLFmMQP
	 NjDhGun4F5d0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9091AE7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665283358.9823.14260160226140313749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f98991ef063b5309c98e36b12e0300d93567af5e7b6f558b4eb80e968cdd0c4
Date: Thu, 25 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766652833
