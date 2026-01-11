Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F32199EAD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768152234; cv=none; b=EDusmxf87E2qJtWH1Xr+CKWil2kKDku2Qu0dJsr4rHVzlAnR4eTxzDUUP8sCksuq8yMrkFj91ZPHnd/aLASx6tsELy0Rp53jboNo+lAVj52Z2hrg00p2k/FCBTQCdvfEraqUlptKjiHFrUe0NXl7hj2OOhk35xphfUynn4P9rfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768152234; c=relaxed/simple;
	bh=kcB+uQUmGBFdgoq+mqjeQplQdClb6TXTxkbgIREwj6g=;
	h=To:Subject:From:Message-Id:Date; b=Fl/buZ3zKlQOoAQpIcAlhWRDY2Qi/CqIMUeQrsMA967AOtOYNOppRwtJbK01WVY3E7mrzsT+inFibYtqgCefZrEk7EGUEf+XpivyEQ4O0PbgCYOaOMeG7LqGqok9UkjOIukfQDVNFQ5R55Poj0v7SdgQqSxK+b3/hfPiYtVNhdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXddM1n3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXddM1n3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A31C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768152233;
	bh=kcB+uQUmGBFdgoq+mqjeQplQdClb6TXTxkbgIREwj6g=;
	h=To:Subject:From:Date:From;
	b=VXddM1n3BwIDKxJO13D5sFHkT3+eV3eNivkAbTh6OXlYJkjQKIbbmWu0Xpiz+aUDD
	 GTYRoyRkXo6HujF59u8cTS0bS03YpfC0NN1hPj7rgLmAsysJFQv0bD2Lv3pMmOcrCZ
	 y7aDKMEKRY5xb/CG1zyiHkgX1O8Ev2SxAZ4z6DUY4lxQmSdKrTwDm6UW+uoT9bsHSX
	 OD0bKOpClNQecuYWa7mtLKR0mwAOyhLotqAZB0KsyvzvsPMBkdAwgkDxGhHnKFJrb2
	 /bRWzxMFsukAVBb8OP0mnas7h08MReZZZUKQeknrd0xWswJl+3HHg8Vv2B6k0zOGbl
	 NvGFpMC5tZDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40CD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815223357.20039.6939785059289978046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5820b3b5c601b7676a127474e3317189f649c1cb089c70c486e535ca52cde43b
Date: Sun, 11 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768152233
