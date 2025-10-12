Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B682727F9
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760278193; cv=none; b=anV7U29gWbo0bGp67+qV2Kf08B77gtGymycQ43fGMBWBqNau/ZOtHN7ZISFgWnvegEPgBAgZICxsg88WP1SzpjbalEaojfr7vngBX3rwrZcOUI+xSIdrrkPcW+VeXNxBgcsFrzEY2MTlC883A+7pr0PBJMlRk+24AG6Y6IPUmxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760278193; c=relaxed/simple;
	bh=HALmQ0npS16YlPB4HAhg0x1S3iDd0y7TTWdW4IT8A8A=;
	h=To:Subject:From:Message-Id:Date; b=iPlFyOk2SeCtW+1jli80VZ/caSTHMPuLit07WB8P/Kd3CnetaGLVMo/VjUSrMuMGCEtZzKETTraHTywiCrXhQaZ2n84gr9pBK3AVq5MOlvwGaPNavW9NtDB1G5LLk4UVdBoCQbPWLeq8TZoCkqQBfHGDsPdKuIOu3N0QhVASYRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdmiEOLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdmiEOLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A269FC4CEFE
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760278193;
	bh=HALmQ0npS16YlPB4HAhg0x1S3iDd0y7TTWdW4IT8A8A=;
	h=To:Subject:From:Date:From;
	b=rdmiEOLH+AW/gXXejlnUToIwfOwYn8nSTgczIyB3ByKOxBDS4y5/4mw4Rn1hgcHsZ
	 Xra0FZjOtpN65/Nens9dcoJkANBIr+Y+BhlO4PeBl3kiB/0RPCSKf4IY4qAoe13iNx
	 9+OvZxKxZwjiqj7mISc4YQX/6qu9KeyJ/Vwap8wwjckbm6P3KpV2qokStk0kAEtz4q
	 Ynp1pC61MU4i/nTjTc478j//tqiqohyaimUMDU33OYVAEGnXF4LlNkIK1LFIpwW+j5
	 hmrk2xP73GImBZ33a6mv6QN+FHo39A+Cvc/vr+0mPvLeLmE4gvHf87igHZZcmKFaYv
	 WQ9JYKaIww/2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBCCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027819357.21336.14639563166043854721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c1b56e8510dc24cc375e8b7309c8e1b472346f29e921d097b6b7adc7273c47
Date: Sun, 12 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760278193
