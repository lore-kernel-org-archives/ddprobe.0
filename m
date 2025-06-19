Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1AE30E85E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750358994; cv=none; b=g1dmZJCpkRNxbmt1QsCLFB6aEguQwpYhU1/HGmBQwumIYXQe7AWt3KUIyOCqs6cQJTkU6zxpuIbCyB3AfMK6HDNcgC6qTVK1OsmQXcNA7oejesDtrLviHrX8xBbEhijzNNz/iT7mIPaf6w1WoO6OzDaMS/M2Jra8cDxvJ3A2LtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750358994; c=relaxed/simple;
	bh=CwnELdo10zdpjWq99dYb+8g1LDmIxEueYl1GU4BCAbw=;
	h=To:Subject:From:Message-Id:Date; b=tvCk8u9GtNZTG6T1LltOGs54C0/EZy1VEbbFSKerRf0i3QroaIptXGB1kH+4BUOWlA8cCyRbhWeBn7aGxf7t0JPHaXHd/th0BJ2dJjvsdKak8ZWyTz56+UNzzg2U2YoQxF/EhTTyA2CUN2V2PPwv53HKXwwuvhrs1KmgZl/dYHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmL9egXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmL9egXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF7C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750358993;
	bh=CwnELdo10zdpjWq99dYb+8g1LDmIxEueYl1GU4BCAbw=;
	h=To:Subject:From:Date:From;
	b=BmL9egXqceoQ8OMPmKIUqh0ZvFcG1Aj0uPdtPVigUb21H/OumQYVUN3ve8urQFkV4
	 W5zNDQ6h+MqbRRLeVGPlS6LtK/zVylrswxbNQwVV2nd7CJUB3mjAFzUHYArOq/8Ln7
	 8+L/JXQ5saqS/kSQnUuB6tSucCvkXP30qx8308qedwYUtcm7ymSrM3GlqId9D/9+3e
	 SN0fJtv5jyFPqJTP2V/Mr+9gZL5HL1QbQeHue6yFlORVZ9g5rljkPYLThhe5pWRNty
	 OfraEF3QEXLdboYODaHOyR5+udU4AX2TGW+AWw9oRzE2yFcBFcjTNtYhplfgQU271p
	 pKwDLeVMbfkTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D5C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035899357.23442.17480336794046976216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a2f4f75dedec0eea38dce2534b1e434a61f2474c064ef71cfbfb4bfe541079
Date: Thu, 19 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750358993
