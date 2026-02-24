Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BB036657C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771921494; cv=none; b=Ts44YbUH/Gx6IOvtthFDzOaJJBSEWTc2S02oa3LgKKaZXzEwML/WRqAcA+IAAEbwFlQG53UGpnjrKoPwyYUx9uXt+n3lMfv7uuGSow9USFFS0NXUN2OSluyoexvUHvtx35oDuiNbKorgtb3UinVqx2bQ9fog4oLC9ISbPEbhvIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771921494; c=relaxed/simple;
	bh=S3g077fLfK01wxndGMWozsbNdCGmCvEjfsyGmwnv3ZQ=;
	h=To:Subject:From:Message-Id:Date; b=OImHi/rlKj9k3c5Y3o3E/5hEk1xOLyQJJqK8jgQ2qglsa/InmqtiRkBuhpu7CcgPrGEMSVKpNfvHY7+vBLJKv7P26Lwlcb/DTkeS8TokgEdcmR/O7MlVet+F97mLX0Qn8JhCCQ4fJdvy8arnKh7LQYvV+0n2X3u+UDiBvYp/8KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up2/0Q1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up2/0Q1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A485FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771921493;
	bh=S3g077fLfK01wxndGMWozsbNdCGmCvEjfsyGmwnv3ZQ=;
	h=To:Subject:From:Date:From;
	b=Up2/0Q1TrelK9VBET0iagx9elTHXmP9R3lyocPG5sbhyW/GeiL6ML1x7U9PVntYdn
	 gfGa7vCF6zJ+1FZ8aynR5XzQvM2DgXqScP4uqfDZvlJ2vRIGXCxV1jzZYaYKX1RJPS
	 wgurtpmStWJQaTw4Qrfj7Oa++qQwmGytNrlpjpuHBFABMHL6w47P2KswjDBT/uWYTC
	 Kw31CAH4s2RHqXD/NlLjw7sdVRt+Lm9i3d+dxaBOjFiueGdz7L58T5ntc9znAq10Ct
	 IZGBhSmBR5jBzifN1AhmVOxeem6A29EOA75g8uWGGPciG6P/A07gcbYU/pwvHaOqYV
	 4fgJF105N7dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB0EFB811
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192149359.23812.9000822040973914830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27655a6f87298db9e7ac25e0b1f454fa6eee70233919147e4ab0f326cd784690
Date: Tue, 24 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771921493
