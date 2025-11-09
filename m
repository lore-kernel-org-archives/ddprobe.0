Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875CC26E717
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762670394; cv=none; b=ro9/b0HAvKLBHxmOjyIAKmAR4KlkAgCd+28bch09LzVFxZDLfj30/nt8jBTyI13sg0B9kc0beyr8j7xMsO0RqQEL9+Yim616pdU2s4BWDCpCNmBUAim6mu4BZ4uyt+os2uTGLdwwjpNJTvdzP5Wky2CP+UbC2BSbPZTog63aQSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762670394; c=relaxed/simple;
	bh=2yhrukcHZfEjEs4HZujTuVWE5W9B8JeQbhpfdDTIsPU=;
	h=To:Subject:From:Message-Id:Date; b=r1HQ3kzkHsVLKxgeHNElBag8yjUM8OlDdagDYjkSS3uuOkacQCKMqpq5TjasQV15w8qKa8tp6wsBoAZ7wKgmUmeMyUL1Emto2CvZU+AvJNCCEhLyCplplPIHuWcjC/kwx4qdUmRced298CAllnZPMV1kIXMKtWhnBCp6zUEx+tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvcNnBKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvcNnBKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C8C2BCAF
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762670393;
	bh=2yhrukcHZfEjEs4HZujTuVWE5W9B8JeQbhpfdDTIsPU=;
	h=To:Subject:From:Date:From;
	b=rvcNnBKBvSITPj9BJvXYOQiME4MZ7xsNMkBmUleE+PPEID0296dmelY1aLBIUyES0
	 /PEZl5O5UZhUDOviuGcs04DJSoYzC9CV9ygBgsqz6nj7KZRDSVnHrrC7sX7QvelDv9
	 JtN5iCZlEMtExMu1HGhqMivaBqvsxqfwYz6xs7Agn7s98lxlJIKXQUM5Ntj45HcCDX
	 rP727rOPW919gaMBabArIigZntUrZcp4f3NKl2P0CDCFLYteYPBkaaZobqmV2hyT6x
	 vmis42TcAUms7f+6J7Ri4GyuH1PrIERL80VxIm7o0zb5LPSi9PP5h2X1WCV0L4xRIR
	 IiosodGI2xb9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94298CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267039358.16117.10196279605130737467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da9bcb77c70b8345e3870b53f6e275c4f311f0ed2f114b54fda91d166c3e197
Date: Sun, 09 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762670393
