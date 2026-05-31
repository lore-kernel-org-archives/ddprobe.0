Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4230022F01
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780202674; cv=none; b=aGU7O2qkeESyEcnlp90imVOAESuM1VBWekBABayUsrlpO+ZL8fzzf/blSvHFGusPNiB1clWxW/tfFF3hW4ahtV9fwov1I4TVk9FsnT1w1sVzmMl95YIN1PCuTaxyfhULsjK/ut6VWqKPjte6aQdSrWxSn9KF9AQSKAOplHsywHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780202674; c=relaxed/simple;
	bh=Rmp22kRzhFLk3l41fxNx8oH7hK38KghMMHMk9ZbJulY=;
	h=To:Subject:From:Message-Id:Date; b=GI9NrlZ0Uma7C9teeXhINEpzmYHX+U9mS4E7V2fYWaJyo1/8oWp0ZVOqzaOiBUDw4/NyuRjetnF+EO5pk2CE6XgpqcEa/5ADI0b9n77Y+pRTNIBCaWmljkTpJK3x6rwi6WZGgfPIxP4fWR6xtfkqTt1BxKRhihgy+Kx8ODygETg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiH+5Gkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiH+5Gkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63B7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780202673;
	bh=Rmp22kRzhFLk3l41fxNx8oH7hK38KghMMHMk9ZbJulY=;
	h=To:Subject:From:Date:From;
	b=CiH+5GkjJnYS4Mp4yumAiKvrJ1e8GpZpuHoWaehU+ORspFMux4hzp+pCB94K84qJR
	 xr5LZYoIjfRX9PIuoW34Xypvjm9TKeeXsCv4W+hwqrONquhJ1HP7dhoOxn8wMI72+O
	 SSdnhtzU6G+23f0QRtYn+lWlg08pFMHV+wITFUzBjCEAh67qp93bp+aLSfqlOd0DyT
	 /lSXOrGuJTTQuQeNIM9onulEXaWYq4FT5bgZZZl4v6vOluuFeW4oIoiDMIizrLsB7v
	 XmiMss6KePsFEf6j21hdEH0ozQ5YgMflXnC+QcsjSjOwwYJ/mXScu/XAfBMYnm9D1n
	 Cm8mB3LGalz4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF54CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020267368.25461.17059147817791009797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c7bcefd030944f6995be719723e790a094a93bf0ac221a1b26983103dfd3f8
Date: Sun, 31 May 2026 04:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780202673
