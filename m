Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FBA2517A5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406674; cv=none; b=ElWJu41jswo2u1clWL1i2YcBbYs7kf5R4p3/IGqt+yXrY21Ky6HNYNzPJk4npNWngdGpPHNZTSl+AH2XwAfmdy05p/YIOKn8L6Yu0d6mzdjV0lN6h085Kp7oJqooUV5vAS6zyg0bi1NXAHo9r4Z6PfUbH2F/Y9xvSSyJaB5qLOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406674; c=relaxed/simple;
	bh=X2hZzIK0xydEXggI65KlaDjAf1f/BgHpMURe4g/aNOU=;
	h=To:Subject:From:Message-Id:Date; b=Ky8S3QH6VrsH9/El5ACDQ/txhqdZLJQX8V5/mVXEe2FXhcNVR+1g0PQ06JeLGjm4ZgL1q4j9FOD4ktbySgKaThLbneK1sOpMRCUoBFB/omefrpgfoAYwzjbFUNsDI1Pa7q+3QbB6aH6HR+LJa33LXkRqsLEZnSpVb/O0CA3gpiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9jzM+g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9jzM+g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F42C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780406673;
	bh=X2hZzIK0xydEXggI65KlaDjAf1f/BgHpMURe4g/aNOU=;
	h=To:Subject:From:Date:From;
	b=E9jzM+g3CrQhvDupvOGxHI7rpzbdNZK6rGSyavo5rhfAfYWUnBdlojLjpFfHk0hob
	 fTOxdDSrrjEHxhUQ+HKmvmE+eEwiK6PY/7lwD3thwwMdonbpoZmN88mcCSWBANzg6B
	 ptB3FaATf197W/YT3DdLIsLlS//B2SbiTM3qP/aj5p0Ru27lhlwLWrh6ZZ/RVOm/H6
	 +ACbXAkIulRtR2t35LMq8Dr7fBrGuSAO9JkkXvd8uTPUTh2OgP3o80y6xjtoFoPObX
	 3B3UUW2iu34BUHGM2XQsKxDhwDSF1wN1tPKTbcFI8fXN+VkROWwSTzhK99AHsItzz4
	 KKcwOIqAfgU7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA11ECD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040667368.1588.1564378296876161419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6281a8ec74d0c52a3b784d3c2832e0531eca400df322a96c32b344012363d0eb
Date: Tue, 02 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780406673
