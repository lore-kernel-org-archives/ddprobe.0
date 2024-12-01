Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318441BC094
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733076954; cv=none; b=ffPH6lFKCXlILPlmiQtBDfaXdipunay7YqRrG63Iws346IrPbPB8elUqzAy09hHXn/+2/uTt0XAaV40O8kTIb/Xh+VuZAegpShun16RMad94nJIC6Y7wRqAL/95ls9ujS372XyJ0KvWuO9M34ayVCCWMmqAObKoe6UN5cQJNG2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733076954; c=relaxed/simple;
	bh=Hf+TZJmQF+q3n4WeL89uTBZgBQJSBVFrO1HSTOUNBRs=;
	h=To:Subject:From:Message-Id:Date; b=ExwIvaggIKMY4qxUyanZ3muen0xWDe7+5Zm94SbIuax5dfChU3GpaQXhoCq4NuZrnfMBKX30zaMxx/T4yMhY2Mp3LAH1GokMPJ2VKuM6Cw1Cbun8tLH8Q+5ZcxZmfTA7hmB6LhHli+jfbjjWyuDdEYci/UG5k5riUuTo/JnDwxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODneWJOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODneWJOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5827C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733076953;
	bh=Hf+TZJmQF+q3n4WeL89uTBZgBQJSBVFrO1HSTOUNBRs=;
	h=To:Subject:From:Date:From;
	b=ODneWJOsBEs2ORhP+u5IhOps4PyhwQd10nSiJei1+kZaZ0lfEH00XxS4qUFJ3JgT3
	 gQ2cNr9GVdNe257GdGU9ARq0S3CMQBIr8sr1loJiaCdFVXm1yT5EM9JWF5plUtB4iI
	 7HiukBMec3DAvsRxZhvp2/0+skiDOf61dUxyu+VXS8bWAAdfgc11mIqGmw9yTQeJcT
	 EKxjQQstESYQJKhMx5aO2+wGqAXyLhrCgIAwki0xYe/KwrJRae1Ef5IWxvjA0EpbFa
	 HLt6I+JeKOHKlYE59k+9pJj+aTy+vRozal0D/X0sg71Am/aS2pMdrVYfFzT31fYryX
	 Q7/ty8uyR1T0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CC0D4977B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173307695360.18115.8779424944081754779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001887a202a7a9a210b0d4a622daad1eb4534152e0fec3ba7178165765e91b72
Date: Sun, 01 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733076953
