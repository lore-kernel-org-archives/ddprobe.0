Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C491EA95
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705496897; cv=none; b=IftJWOGL+DBhA/cRC6MZeIyPsDNDjWQ3WzqXkamUmBylKa4NQQibsTA4EYdK0fW0ngWRd/LhXnkQH81P+bEBQC6u87EqpzYmwUtPfER5Xao9RHWPqw2SMr+Es6B+EBhlw+bfyOXTefwQH6HA7gqraHD3Vj2haEf9sRZtOn9MalY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705496897; c=relaxed/simple;
	bh=pXLMVg6gQVRzaUXwHF2pcxdCrXoazH+Gn36c+qd/Y8w=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=MIriazDKzzHRWjFx4pQQ/9/94GrQEy599Z5cii49Y3InH3Mi5vArFfIgFbjB3f1IjoGhP93HrsmSnwvgjSHtwahQmpkPcGbnQ1uMbpunRcTIzeMfJkAPhr1VIEot0oHGij2r5IXX7f5MfjIgw+XC3VZBtjlccPYfjheJ0+mUX8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYj0Wn63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYj0Wn63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9CDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705496896;
	bh=pXLMVg6gQVRzaUXwHF2pcxdCrXoazH+Gn36c+qd/Y8w=;
	h=To:Subject:From:Date:From;
	b=DYj0Wn6317hB+tB7YZgHi9+B9YHyZJFPOwtU5eWbh5QGyJ1FcjMqM89ZAAufr5KN7
	 cKsxT7X9VPQULM/+5HwW889fB7xU3GAw8wDfDDWjewldhS575VNnX16oelgifwyzGZ
	 Rv+A44v+U59T6z7GQZNVSnaQR6DHNqdS2sAnj35TZm4acqp92gSXAgK7XYORQy6GPV
	 ok6BNyTms/AZDtWDxpPjRTZKH0ibYnR1LfC7yRSGWAeaVYI28n/D9sh3YuWTRacHu8
	 r00pynZ+ppq25u0avV3bIMqT0P2RFd8KxsyzNkK2qyl2vqnwJrCF/QywmaYw83cYiz
	 sdwTqbaPAKS/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621CFC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549689636.27187.4862477327069033037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e9855de619289845db400ba4b9dd991efa75f705cf124bf959682a870462ba
Date: Wed, 17 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705496896
