Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DE04562AF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786468234; cv=none; b=ZkCUkVxvFheWvXv/aa8RXGuEQHOC7lQH9fvtfhjpEqMSffWB5/7iV4zXYkAR4ZvCMDuIx7nUR3c25yuvKm0hcVlYlPmSuoYXghNMobb2Ct5dpjAdZNyuiBYnzoCJ0ftgIt5PGQ5OcuXwIW8Qb0LjSlqrgWf1frZBxF5RqP3yOhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786468234; c=relaxed/simple;
	bh=Cbnc0l7jkdh1YWHKVE4pYzDZdCFzhNpmweCfAz5siDM=;
	h=To:Subject:From:Message-Id:Date; b=sMqNe+2FYKTQ5L8HDd+rCpe1sB2o3jlir52oPofSeMCv0LCr35qs8xsZRYRSd2KYzabFRGRVVknoKtGQD+HniZlzlGXiLTUpNu+HJUv5u3urRxoJAPN5sSVD/hHxLmBBFKH8cUtrG4LJjOM5ft6ZiWbeU59uYkSSY2ykKmWwa9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul/4WqIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul/4WqIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC47C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786468233;
	bh=Cbnc0l7jkdh1YWHKVE4pYzDZdCFzhNpmweCfAz5siDM=;
	h=To:Subject:From:Date:From;
	b=ul/4WqIEAIv0hcKIzjRqA0Yat6nXHwHGKjPIo5+UHdB0LNJ4uS4OU94hLrfpG3fG0
	 cb6q8sZX/a8BubxlO20s8ApboL6kEgaZkVIlyuECVIfCgCu4uv7PMCf5/59njm94PC
	 VAlYjqMkqvp4DZj0gLuSIZeZzh4xYY5/vTtFrEuyQPTOblByD0MmbtaxvMosDLb8vd
	 aXxxfBH8AnpFTqvXmZHSM5IxOEMOTMQgHFcUZMOJsBWDQuuKJixoVAxTQUWnR3NzMp
	 U3iSooLoOI0dHhKL/QVN8VctbNnl1zHRtKmM5IZcooK2+YVjplKy1i2Iy+jgzgoRg1
	 4L+q75zAXsGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E75C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646823368.538.7968520244357667591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960aa707022c80f7a5dd16c1cbc6408170812f7662a4443544e6f248d4a369fe
Date: Tue, 11 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786468233
