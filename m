Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3033031717E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781566594; cv=none; b=NiIN9FjpUiLq1OihscQPDWop++z9qPVQWh/YXTFf3j5wRkcyGZATNZfHEbHplqDCwsoO4c80i2W396c1vX4IlsF940Q6KCfhHnKKdq3S1yYXhnoQ4bI+ZEPtt6zBIVl3ckPXBKl+6ykB81Qil5/G5j8i6aQRV3SsHvH9E4e2Mlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781566594; c=relaxed/simple;
	bh=ROB/2U4k/bwFqeTqxyNlcluJLZ7JHT2VPzS1i67YMds=;
	h=To:Subject:From:Message-Id:Date; b=EarJ+AKOOh7W8+hbQVv9xJH+sxdlsEUVTq2bXCH4DTFjqJbD2br3N0XnY9nP0MoxAB0ZfvvfRGtGDa1KnOvF/xs4qYKAvp+dIHmSo57tuXonedQriJT5OCK8qh8o9J4sJ8RiX5000vcluPA8//lWl4LekKGIzY6ojbwBtaAGYZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz05Xn9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz05Xn9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3A4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781566593;
	bh=ROB/2U4k/bwFqeTqxyNlcluJLZ7JHT2VPzS1i67YMds=;
	h=To:Subject:From:Date:From;
	b=Iz05Xn9TCLHQhyK01puQzRsqLiUfAoQrKkRAlvm5Tu9xScy+Wrox2FMg2+sJ3hYCz
	 GBSNmjWrtrIYaECJw2Ds/2ygQ+mlBTTMKsfhGw7dG2kQ2fWGio8tlN7WF3LZeAPZ8L
	 riHkREBMwKJo87o2LavU94P/j1pka2lg+l3kAIWEOEGOR0RYeQCmRj8n16/L+xkokZ
	 yx0h+V5gSDQUU+yPBzB4XgNef2YiqvkJe1n1vb5L2Undz31z7EFTl7oKhcsfrXkWDA
	 y2K+PQ6d4PcbCiTE+7MHwul8brkQK72TzMd03t+5lziqAOZm84WP84ziH1k8S821eX
	 gz0GP7wHsLsmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC05CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156659369.9932.13561386652113202471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed41b499e72eee0dd6a29220a1da495593de99e84d8d7c3396901363fb973839
Date: Mon, 15 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781566593
