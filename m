Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7CF4597C
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712926163; cv=none; b=C5NS9z4oLkzRbvDl6/z38LUXwgLGROe7sll2a6OvzvPMDfOA0oU5WcXF/mQ3UrU2rlo1HLttxyiBh11++disWdGI6Tyfy/s+2wAL8CPn4NHVzSg2qhiBQWX7RlV1oZSfHP33RCW3BdnXSwk382oktiUSqjfApe/Bki8DE5FbK3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712926163; c=relaxed/simple;
	bh=VNqN4ypqYxfkBCxSLp9DsAjLjB2ToYLFWJkfWSvk+P4=;
	h=To:Subject:From:Message-Id:Date; b=MmD8KOTRL3KMSGiZ8aSnRLHjUSDu5VGM6EUH/8cDE17W7fBm3pNATdmzNgpX+CV2dCfJvJ/g4t76VUTRFhR/ohuEOl5x64OqffAWz8FPqFwb+O2XpN+r1A6qo4wPrHmKb7gP0uwIjOo2ewUL/qjpZ6IvdZFuGJGQBvCebiNnhIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNqZ8mlZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNqZ8mlZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04BFC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926162;
	bh=VNqN4ypqYxfkBCxSLp9DsAjLjB2ToYLFWJkfWSvk+P4=;
	h=To:Subject:From:Date:From;
	b=YNqZ8mlZRUxdoOkVdtGsddUgj9LVxvIGLn6p7fEK0WQwNthaZJCS3cbjYyXCd0u13
	 ido3Sh+b9YnkUpZHf2w0JpJDCDl5/yhMsbwGOiPmzhyyr/j2/arcvpjZsEdZZSdLnU
	 sWVepuSDA3I4muMtw0jd34H7L0HXrRuRKSARiXFiCIKsoWTbMSoLDEymJsbKXgLH3E
	 YrwdIO+gA8o3i/7LtvQdvdShDkZdq5lWs6SHCta2J1pjQ0T/JyZdqUDfUsDXbop6Zc
	 oZDqdFnqr5HaGYl9FsRUvH0rBnY+5sduYCZoCCnhi3MKsnvHH6NeGLtKd8Kz2R8j4o
	 cYDW4RsFr/B6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96D3C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292616281.27899.17407931584985127764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf46b310c979fdc42ec960b821d8b27eea0f79cf39267da66358778239d6b66
Date: Fri, 12 Apr 2024 12:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712926162
