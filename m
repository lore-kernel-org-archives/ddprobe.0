Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498EF4071E4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780789474; cv=none; b=mG1S+l0qZVLC8l8BPoxxBvhTSV1tKN+x16mI1RZHWBPTWQXrFUjZR3Bhml+NlobDXECW1nDKapN5HZgot7hosN0xhy6xD9pISkltrIq7b3BJXM2E77qyo4Uz4mEdyEBQXIsboizMsL6cQnqoelEBq4pAJ5aXH6QbDe6AN1F9onc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780789474; c=relaxed/simple;
	bh=jKIQgzHaawadkucegdYIu5yNS0zRAycArLADiJjC2Ck=;
	h=To:Subject:From:Message-Id:Date; b=KXa93oCTy6uoDsK1l8+ogfOI3s3Cqc/UKjz1Mrd4EUgOt0v2Ocx64dVCcpLrtgALC/lCjUcyx5WFzWk8O8Iorqh5ZXLPpVRcWW6xERIeCp2EjMkpf3DACK40+mPLLMguJJBH4/+/76EeSdcFueBF2DOhNkoCzIdPa9g+0PN2ryQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1SzHaPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1SzHaPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5F0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780789473;
	bh=jKIQgzHaawadkucegdYIu5yNS0zRAycArLADiJjC2Ck=;
	h=To:Subject:From:Date:From;
	b=X1SzHaPmyQhZXai2GeBymD9+R6zsvbs/eMXxWUCIBldvLZxCjR6gOR0UFnQUYSUL8
	 6Xw/H5r93u4znsTJQoxYvCMJLkUGG2EwADgzxCOuC2UJK8TsheaUpmGKZwALrIsJEr
	 tbZpOp/Q4BATRn3M1UGTHpN9BfJJy7qQT5UHW10H0+wYI71tVLWL8nFmSr5dtPoq5P
	 WEE/wPWQcWp3UCh5998oX+Fh9LkzzIig98UPXnX+o1MeikWzD7n6o0GEiswgFELCsu
	 NgcqfJVDC04EWKaNjMiRzv/Dgfyg3r/rujMREnzNzAX+j2pmFseVPEeJIJM8ubXNxU
	 PvZ1v+zCfdDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB66CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078947368.31144.13937222803629469289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b2a4a4e6354191b8d54ab2df5b1165b183cc45f2fcc6019d729a5ac3df4741
Date: Sat, 06 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780789473
