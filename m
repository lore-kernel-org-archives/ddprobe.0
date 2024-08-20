Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A0418E049
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724150754; cv=none; b=JpbDkNVnBR1e+MRgNSBO5scIH9ZmLLEP7Q1ctAepTcg6pvdOFqct31KRNYJXxAI6kS4FpypfHvOcEsoeAfBHXK5N+7jNOrXoabygWc9vq7JT6ADWn3GhS3f0zIE9ThWUog1sFn1SGiJx5P3GZHH0EMlGMofKOkyaRWxrVE5nIZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724150754; c=relaxed/simple;
	bh=wQrixY18/JwNelpMUY5GrvHkAf8NZfsW3wdanunrQ2g=;
	h=To:Subject:From:Message-Id:Date; b=Os5wPfdJjrmReETpC+/gDdKPfKtVyFzDSat5YdKPapVtzXUGPa4ojgvOjV2XmuYvc3b2ST64EzUm3jOdV7uCMN2Zezh9QOmTVxldBxjF3tsJkE3OM2zkjRcTWBGTXMaK/ubmNqnKFw571PZDZuSAqpAP4Fmoc3yHGlXH37nyAaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXZnvhQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXZnvhQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B290EC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724150753;
	bh=wQrixY18/JwNelpMUY5GrvHkAf8NZfsW3wdanunrQ2g=;
	h=To:Subject:From:Date:From;
	b=IXZnvhQrCk1IHEvCcqZJgcZpOq+BMyL5svEau8DUDUciCvl80/VZ0c8hrxLWwQFSa
	 3obNSvj/nLhJDQxCp7nPB38LjZkfeBOrVhmbxO9usjN3oxULgaAF3AY/oEzl6BxYqb
	 mSVEZBieo9LhxUWyHw74t4vTnQWqehwwwreaUg15LPWiq7Ge24lKrUXANARDjpDpQ1
	 VHrMJ0LhMOog6YH1hrIz6HtA5zhOd8PCJTkBZLqK6/889dkskcEqAxAfjjttZymkjy
	 zqHT5/w5FzHuMYT79gVFCQJoCbER4q38uAW87Sbz+hX5amDKiGhBjMie4bFqvQ2pSr
	 gryZNcuOFGcwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBBDC531DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172415075362.14676.1692184608640352058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf173cc7999766cf9c7268604dae91ae6d265087737067d999df7e494b8a0b9
Date: Tue, 20 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724150753
