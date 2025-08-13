Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292F428C2D3
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755101394; cv=none; b=l1NMzob8fxDxwHQP5x2pcfl/cwEp/+hlDvVCd722JJGFEGMozyx0AFDKIF20CbEpyOYcqUxqKjJA8Om6afjwbaNz/P8n56kreoYfgSHRIFYL86dAqwtoWEbYaYTnlGhlEnzp474utFHplDCCg98KBvD+gHFM8AIUhBkJ8MB1Mk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755101394; c=relaxed/simple;
	bh=ndKVCBSGfXyyC0VxoRA2w8mpwFU9F7Pwl+LQoaaP82A=;
	h=To:Subject:From:Message-Id:Date; b=j6rf0WjH4vySIjcfoQ8bcmAULmADH+egDG1OBoXXto01ccdjHbz82/6ct4/1OfLlbMFeB+sculC5zvPlChpq5UOxY8cqDoqqBGEw1PaJe3kf227MYw2spD02bzT41CJOz9arcSHUuBJsqLGLMsBuVahmdguw7JeifK2VWHo+SPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sV12logx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV12logx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F47C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755101393;
	bh=ndKVCBSGfXyyC0VxoRA2w8mpwFU9F7Pwl+LQoaaP82A=;
	h=To:Subject:From:Date:From;
	b=sV12logxDsWnkp6FqC1RpVlWd+E4M7eZiRKNvImAi11YbA9d5G47UVGFaghT+GoLp
	 VD7KhHHSF8xcuEzmZ4EBcEGzyKT2wb7yQ1q7XtKC9TRQDxPJt06a+R+OGWGwGhNV75
	 8TJCw//lKiRrT2v7moRP/jHc+zfUF3gAbDgDy3zkMNWJ5oZyhekHKYhhKcciS/ot5U
	 +JrBZvM/43/aj+At2yMSyAAhlhPIhxBTv0NE02NP+UuTkX3ufnOm/7lIjXlfJoj5KS
	 KJWI8Znj2ru683YKKHUs6Qcey4rr9B3SPvUOy3z+ei6PIvK1OBboYUi6gWhCqQfdzK
	 DRaFHvGORbx3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93439CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510139358.2667.10821809905751380279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea380e39a469c4c5c4b553f5bf1c78488de280f770d04531d543cf320e292fa
Date: Wed, 13 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755101393
