Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3591DA23
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716036143; cv=none; b=f3AOxOUhca7tRzL90a/aSNIh1eYAu61+ziLs6kbmn3TQZ2MnmA3iE/6Z91jdaLqgOVuqgdF5dLecfzr/ugiW3XWwhIXVJgY9u0VFBUCGchlIAhaymp3hcZPbrbDXLQmMmqCoCMnAM/cVaOg8L3Ofh9yGzlVv2YzjkoMGVyeoi0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716036143; c=relaxed/simple;
	bh=VJ7m4kLdhdC6rbRjnkdk8KP3Yw6+RN+tKLBq0HITyUM=;
	h=To:Subject:From:Message-Id:Date; b=gxilMHbP7Ep6Lb+o/cE+NIwcYd5KFFIN27OyFA9hh+/xgf5Y/iSNovONFQLYD3ON8ByaDT6SgCEZxEVZUb0iJsOPwlNKyGF4yMOIACW2Yr6spFl86tJQw76EMEkRXfTXVs84kYSChlezvhrSYzMVlhPnHFSzCe7Q7r+r5Fczj7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2Jjwc78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2Jjwc78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19DAC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716036142;
	bh=VJ7m4kLdhdC6rbRjnkdk8KP3Yw6+RN+tKLBq0HITyUM=;
	h=To:Subject:From:Date:From;
	b=K2Jjwc78Zl4w2nFNzcKJ/kCNG/ta5NvXb/8EcXv2vwGyyRfkWSUPMYvakdvkdzZ0Y
	 +Hrn9QMO3GXI8dMbqm74xhmfGp43V6RTudzII4EmN8lAqAEgOWtOXJG0jg9806MZ3u
	 0Lmy0X081KO1Hj/n0RNxDk4WMQReEEbha95ji2tuU1UmaPO7AvkqRf7jGFCb/IIgcx
	 EbqC+mvz1baBUgKpF1Sm4EwXM160yDCPq8XTAODxMYAD8x1h8fx4S4tvFOFK7AB4Nq
	 LBA4Pk13hwteUWUjBypqwzgxa+tkN+U9VPzHT4eewUbHZI5FAG71jzet8RTx7Hf3bE
	 XIe5pRB4O6vhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BEFC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603614279.18959.336173054956157234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d9f1cf140d803f7a30825daa1f3d37801960d2066716e0af7407b101dd3330
Date: Sat, 18 May 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716036142
