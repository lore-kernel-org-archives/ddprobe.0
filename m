Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3333230EF8C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764171774; cv=none; b=Cr3WZXcorOSMpnP/PXf/fGBFbDwKFfzKWN7gqFLSpjZ40krWDW5B97Hf/yZ9O9H0iiugfCyIUp72wmdmTzZMFlEqIRfkuzcdLcCyJtpiTyUVi7JmpJyICuOJm/wFWWVe3ZO+Mc07bHakA3KcGLnvQ3cX4NbUbDLUww7Qo0H7qUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764171774; c=relaxed/simple;
	bh=tT1CM2algjk2kDkvqJtzHTV21y/DXPr9AWDu/mR+Ilo=;
	h=To:Subject:From:Message-Id:Date; b=Ou1L4BJVE6hJD/+WktNbjdkvT+4NbAW+iD2K7JjyJ6Wy4kLPzSmS5qk2vq25BY7gXRcWtsX3bt+ZGbjBXTDH7XPiKoMStudmERnlYAnMWavQg3HPJbzLf+QA4WaRdP6uH2fFTjiRgHFED6b3lp2XCtzWZV57vCkhVMCdUXbB7Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQIbbOM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQIbbOM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88C7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764171773;
	bh=tT1CM2algjk2kDkvqJtzHTV21y/DXPr9AWDu/mR+Ilo=;
	h=To:Subject:From:Date:From;
	b=iQIbbOM0FGEgmFrG2FbvnhCB5wiOcSnF9O/0zaAkReM4Ypbgdt1yEcoDYXdU3XTJG
	 fdO8xUqqSw4zR/On96PJtb7gLQPAjn6JtfxQM84e/ojKVe63iUNEClSipQbUR13nZf
	 ygU8AOwXqDMEPU1MmFZsJaZFIAHLG0eCGDzgjpupMwk/NkCopvHq3DvOJFbuZhHAQz
	 CCwPqjiab3CGhzUfB5zcBVkwYwiF3lyB73Mu/26wKKTcljNJn6+p1WuyDfsTVeOJ3Y
	 BLSSwCw99gwlaprzOZTThHOJ/sLzyxqpDNHu8KQbjBOfdgB1MwtXq9L+fEkFo7JxwQ
	 x0qwFcQLUenhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965EAD11180
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417177360.6179.7662993677329826300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6bb2b37b7d3ecde54bf5d9468b527cdc7ce03644cb708ab8d73409a4c3e1ee
Date: Wed, 26 Nov 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764171773
