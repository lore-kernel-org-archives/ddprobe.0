Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D48F1DFE09
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750201195; cv=none; b=IPxxm9smcTolVGcoWoojsH4bK0aD2qahUT8cevK821FVoiWCwhiEesqXOB/23ve3d6N/iWKDlKBNlkvlI4LwvvvaiHzriS0HZ/RTq8ta1z1Fi73+UY3qDXhpHvERHXnK78Am6Hb1Qc6muLi0swRgUYpkua12AM2/vHM0gCYt8A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750201195; c=relaxed/simple;
	bh=xjOp151Z9IV5ZO49BDJrJJi6n0mSIpMzZP3MRMN7bY0=;
	h=To:Subject:From:Message-Id:Date; b=T3w0n/Knk8p3dsniShQ+BbzIn5SZinB0w661vQPvX1N2O2nNMSZC3l1nOndjOy+tpBLN0Vwus94I/Le/ZQYTFgZAEXPmqQ0iGsakgV+Sfenpe+imhEcQ9LWCE1ZkPa87SR8EyX+mt3V2alxuNn6hWjTzbO8zvJNMyX2OCJ99mWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox+Ez4SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox+Ez4SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB637C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750201193;
	bh=xjOp151Z9IV5ZO49BDJrJJi6n0mSIpMzZP3MRMN7bY0=;
	h=To:Subject:From:Date:From;
	b=Ox+Ez4SYQQ/r5QJVgLaW1bTJWrN0oJYN4EE1jboaswwEhd+CfCPlzDvUyp1IAtljf
	 Zh/Z8WFtg5fBPbW52tPtECZTUQrGkbjChG7qbWnBn2FL5DwKsJZFXN/tOZ65/OeXB9
	 Uk62TKE28xSaRRnkWzQO8JscfbK1A3mImDGw4no2FKRXRQJgYhFmq1bIRUxBTU5TMr
	 B//WGSxBzzYZ+3+S9ludfX0ChFuQM3qRjcdfiuJTkS6KjHoEoo8OCb8Hm84i3ABWvT
	 Ui4xgCSb4og0YdbPpoBkOfsCdor9c+j3ZbTnhc7fvPzhiulBZyGpj5/EEW+OD+Q87l
	 1IwXq2qqtrV+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA71C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020119362.22692.16733972315875209310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8b96dbdbb701400290ac2266ed9afb594a029d67dcd25fc8c5a638d41bdb11
Date: Tue, 17 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750201193
