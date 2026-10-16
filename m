Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642DF1D89EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792126234; cv=none; b=R26KdX918Xs+PdfTc5ZidyTUO5j9wmGpJN91ufQeARO4ySIFfdm/gQLs2j/1f9jGKJDkToexzWjzlTLqmWuvXlTn9+S2mNc5eKCGd6qBIHe97eNTN2hGtf7sEK3Z7VRF81mpi+3XEFENfqoWyNUDAn1cXb8Jx4lfUD+CX8R93Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792126234; c=relaxed/simple;
	bh=QEu8ArDed5a/byZifPNNYYNr8tnwiFt/stqlnohfNk0=;
	h=To:Subject:From:Message-Id:Date; b=q5XcDaWiXKJBgCzrHXiP9i72KBaBM05Q6dPC1mMK63aKQsojcqEQnbzWXWeiJlfCnX1RVZnlpq5oc91UUiZokRIyM1o6Z6kgjBYd87T/byM2piKxloFCAmBithXb6gLox+yCEFyNtygAuZOT6IUcIUlg/bqSruUp/vnBW99sA8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMe8QCO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMe8QCO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C39C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792126233;
	bh=QEu8ArDed5a/byZifPNNYYNr8tnwiFt/stqlnohfNk0=;
	h=To:Subject:From:Date:From;
	b=tMe8QCO4WNVnpjY6RyEJhdMzrfzbbfl/6yHrCTKtqRpqoBuMVDCvZZjkk0hv2fFa4
	 6dIhzAimbnZGcUJUPMm0DxLKnYRxWX8mAFIqCWMjwhErZXBYTy5jBHjMZs/+NP3s5C
	 b1T6HoamEis5hdwIqXQAhq+V7Ulro+atf4jMv9CVTW2+rRCt8QRPVqclb+Kt3YIFmg
	 WN+vHWdB5Nc2ZmwSbzawCi0stXjD5f1Ha1qrqOIvFsczDeKuJes4pY6TVLlErKR3zv
	 hctrNUplVWbN7WkZm51v26w4hlE+O7HDfVvl21hTr1ZZHNJx/DxkjlXBdqEdVdPGCf
	 LjcFKvET2z32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B23CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212623368.24621.773993346975873039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72adbebaba2998fe4dc8163f1affc508032a123076fa8b4a8e7db8d093d5b080
Date: Fri, 16 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792126233
