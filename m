Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1BD32F75B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788658235; cv=none; b=nxAc51a/6hKYtSutdwRyPibUFxXNTa8Dnh8tHn0OKhot2ZPteZYm+Wa7ne+kFk8EQij5qQT8i2JxgHHirme/RzVcjiIuARs8vcLokjBjMo0KHTcZcVQnGgSdQGsVRdejRoaNLyUbhn3sU/AiLjnP8iXNT+OgM6jZ7h7FHHgkxyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788658235; c=relaxed/simple;
	bh=BxbeeVgZ4H9wf1z2led/QKURh0ZHADdMg7faWfKUzck=;
	h=To:Subject:From:Message-Id:Date; b=UvSmdK37GAI+fSbJ5pnawj9ECb//XA9jTUFDs4LxXhdhuGB0z0+ucaXPTOB5PYdJQWRY4ADy53dapwaG0l8EhF+hk1hEuFGAIBYa4z2n5BdC0GYctnTlv0/PBhHP6d6VTotxQA1irvpKnpMTXAsV9KJbNEU2DuKvQJ2azJUR4MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgHUJqPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgHUJqPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4146C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788658233;
	bh=BxbeeVgZ4H9wf1z2led/QKURh0ZHADdMg7faWfKUzck=;
	h=To:Subject:From:Date:From;
	b=XgHUJqPpi9rqpS1zXcrpODO8jTusDdhqdyZnnqExeRantt9SlHs706rsibuE4g+K3
	 ILd6GkUzRdq+73QVu7oPE9/N3ZFZiP0Y2z6HJ/r3/y7Y+qvfvSuOLCyfNa4/hpxWjE
	 uK3wwRvns6JnjxYDnBzq70HiLrcH3mVLg6+DTgCyMlgWFi2DaZ95HeMEBPeQMQIg6y
	 tQ+aqGs3q9L9JCWjB0kxm/Y4htrcBx0XEqd/5slt38HwFrX1CHSClQrDRk16XlMvhl
	 1qqqj8ewq3e1/2DcoBKNAwleM3MSB33ueIyfBmnd+FUVQwRliFgoHwj7Cw1WdVHRSq
	 y2BUKQQqOaEag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1C6C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865823369.15196.16989216253955295208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc22d632aaff967cc17e945c9c524d1a4ee46f3c290f6752c5c95da8243adca
Date: Sun, 06 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788658233
