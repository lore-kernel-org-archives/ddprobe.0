Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE9F3C2B95
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783776514; cv=none; b=VvBAV3duiYeCnaa2WFuC7K5qZ4qu4qWBNNPTPeoQ4kAJkY6alJQOdd/0l3wG7G0ec5IFMzRISwE9bdAW7ojHbHS2g+Synv2k2GRrdLXx3x9c9WDqotYcTUv7/4nSThHZ8p4EYfKUEAPYxrO3MgHBGOXc4Yr7RvXKazRq4fwlIoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783776514; c=relaxed/simple;
	bh=7BfWP3w/2k6AUpZf7uSzGhsOkbN6O6Ns4hAT+DziFfM=;
	h=To:Subject:From:Message-Id:Date; b=RwC5z6KYlLRej3QG/SSrrH3SSMSHZF9KuAH5CfhmLN3mrVpvnqhP1ha22EBFJaNV21vLAsi+mBJ9jmEkvPtHhPVTKCcAbHGOGIVN2ty/qEV0kWxRixv1EWIS9MGUW0VXWmLWvzv3aNaR2+2YeNn21P8Wrjv7K6yJTt33Dy03cxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG6fZkWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG6fZkWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CBBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783776513;
	bh=7BfWP3w/2k6AUpZf7uSzGhsOkbN6O6Ns4hAT+DziFfM=;
	h=To:Subject:From:Date:From;
	b=PG6fZkWFg9cFxW824twITe23vnm2E1TP1+4/6rv/LhKom/X9LEvoPbTPuZmIMaAtV
	 j4cegV1OzQPM39eePKYIv1BiBKJP/gikMCnFt6Wf3qKqeP8U3/1kRcH+GMta/PoubH
	 jiRq5+H4SatM8HtOccNGOSTvr4XRVDDzQ/+xMUV44qJCvxe8Q64VoVpGW2qdUWGCOM
	 rw+PpF9RkWgQY7R9hg1BWnvyrVKLWansTNn2acZPGpDm1MAVE8z96Aiau9gdD4CPTP
	 5CPWwQ+UZktBMvgag9faAmgIrHtjvSiHvpktutvEEzNmbU/8T2tLds9y8GcXTZ5tcC
	 Ojw99eBNpM1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8827C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377651368.20531.8817961122421165885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb2e842d392948ec21d766d25d7a88d67b94a39e9a251e5cfc4139e36cbe0c7
Date: Sat, 11 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783776513
