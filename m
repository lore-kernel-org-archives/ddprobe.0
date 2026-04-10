Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C9330F7FA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775836054; cv=none; b=FYxBVNd+aZWbQIhQWxrdwSjHDKo8OAoNQ6nf3nyGcf+BvEzsRKEOKRk6caozgnJDG6FJWtF+w845Pu4OR+mbEgUH5kM/Shd8y1KrqP9T1ltJ2yGGsC6VvWoz5UvWj/LBPxIpEV5ZQOy/EPrnxnvTiyM3CeT3G7ImlGwRWdU1FDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775836054; c=relaxed/simple;
	bh=/HZtkDMJdzARRBUJA9WOjZ5HZQY6WhWvug5jXsMBNHI=;
	h=To:Subject:From:Message-Id:Date; b=MtMSJRcsuf8Ua6jNMef8ID4xLC2azjHrYg97NLSzXcfwHraDgfNqVqKRxnWqJ2U/ise8QzPGKzkjeLpVqfNiIoVOQ6RZnwDNS8CLiT2z27qHRuOHo/V4EkB3aP7iygX7nhliJu71T2wr0VkRFbMKSVldPpX/AWiDgFq7JoXJZYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCffBqu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCffBqu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDD9C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775836053;
	bh=/HZtkDMJdzARRBUJA9WOjZ5HZQY6WhWvug5jXsMBNHI=;
	h=To:Subject:From:Date:From;
	b=DCffBqu9KYCvFMSv4fJeS3/6s/abPpJGwIjpKNkIGHfrvqSzqh1GYFMfYxVZbufoT
	 hCU0nAF1WCX4W7XmOhRri8vzY2mF/l784+98A6YzIvacYCuxLJOCj5nCAyyXZUr1AT
	 +TKfCyhEwCpW25qRa3nmJm3XwPuz+4Rcs7NR/bSOrcDhW9xM1qHFoUmWW10GUhtgBS
	 cfis5Q60o85TOOgUtudWwiAsEXuX4enVhv0LvXRFabIRAs1a85f0cdgeHhVeiIod5N
	 +0uvx91PVpumqe600+kFZueHs3ZD4jzgnfnZNGPUZ+qYPNV4eNMvxVsvyIXJXvAGUy
	 JHfzT1PY99zXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC1AF459F5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583605368.11215.18413817340095510725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a949e8d2b9ea111a974531059749e9a493c77e2d42758c0e9382af3280c1e9ba
Date: Fri, 10 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775836053
