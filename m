Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A72914
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745542194; cv=none; b=gvi9NTFVNLqvvdQihakj6maJuvgFuwFtbmH544v5KHNV6NYnjmw2nT/5YnwvkyH+OZdq2L22wIc4xRQgiTKzgtCwRjImesS7WZvRH9NNHVgLWs5pny+RCPpimZRtZKZauQdEELKXBMwBQDpArMDt1YOoE4QJkEDsS6xFfc7vDVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745542194; c=relaxed/simple;
	bh=zdxPoQvzUsOievfMo6/OMV8VO782TotY9tRKPmrEtTQ=;
	h=To:Subject:From:Message-Id:Date; b=QW2VELg+1qjW/Jek1ShYQyvCI2myDVGmwh7u/H7BkIyW3gI3YpnEPNdxZ18fH6HkCmj0vtyd2v47el2zU6F2fqi2MzOPcCK2LsVkEzlKuG+ruJ3afRliMyPnmO2G+0wrN0zZleSBRFqH6i9YQsRWcSuduSEFMU8Uo6G5/DTiJfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAqu6U0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAqu6U0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7805C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745542193;
	bh=zdxPoQvzUsOievfMo6/OMV8VO782TotY9tRKPmrEtTQ=;
	h=To:Subject:From:Date:From;
	b=tAqu6U0ujCKrZZbYDEEgRhL5h1tnyoi0gFDj665Rgw0nCjfR+I7gzMMywf4CgEbBB
	 DWpTekmkNRBIjyEvjzJIBIvGz5WPAABFZnnFUqx44JrfQoEl2LwZFs/sqsvWNB4b17
	 2OYf2nRxu0ubarekH43yGwfTWazMbhwJfWG+5LoTU4KpZ9pVc02UoI3hO/zaZnxicZ
	 7eEJ5z0W+KoM4saaoaLYE1z9/ZXVlCIYSONnW0ZauYhdJBIESsIwSRysBafczQ9Ge5
	 xIH7wxBBsXf117bCCu1CcUrPBLJPL29xu0EgQWCAMrpmIKNv+WrPcviyvpJK0+lvl2
	 9chVeFdEuiAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D91C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554219357.6544.4768750044724401295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7374888cc325dc2d7beff478e52b6d81a991cbb2bc3969f8e271addad55a55
Date: Fri, 25 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745542193
