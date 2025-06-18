Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4092F2F5490
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750268994; cv=none; b=Ef68MX4e0MrfDSIhLP8qPZAi6Yzs2NigbUDQoYbJiKrtf4Ueg49sxVzMUH6K2lLhEJdreHOx4HsfRTByxWd/ze4LY5VjmPQ2tA0nDMDx/CeCAOqMjqLARBfbqmU6RKCdISZEIGcdM7MlYeWwmg4ZZg+YsOLTSMiDftHmT/RgAx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750268994; c=relaxed/simple;
	bh=qaaD/TsAmtNz1AZP5FL1iqxEad4XTduTTjoc1GCqQfA=;
	h=To:Subject:From:Message-Id:Date; b=NGTpyggit65UfnMSdVPvHSUNjW1yGMfGR3PqaBvmMBuuNFBTBoRvpHgxvVLAG8jk6Vb628A85US4KgXuOHni3EDu8gvNWL5POYEn4bq+GSz5uNzFBwGuK8Z4xkgu0pSOIueBrr4td1l+MEOpN25uC2qv0gPnzL80o8K+c1GtMEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR2ViXdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR2ViXdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4546C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750268993;
	bh=qaaD/TsAmtNz1AZP5FL1iqxEad4XTduTTjoc1GCqQfA=;
	h=To:Subject:From:Date:From;
	b=GR2ViXduZDLvYHxGrl+g5RiZTY7XY1zoGCdL7oVA7Xiw4jC6DT08BSQhw9DMvzQvO
	 bmhx9i1sS4HShS0V90uHE6QFrK4zBRQ65jJIPWkNUmJNd+tindRbh0LQ7tP9gEiyw9
	 cSHB3AV0PUAJMvDf5IjzEy7PLX7QQhjynKlUU650j9jLp9kWRsv5Jc3QWG3kfYQWBD
	 y+1iA3zVDcMWNHWxgGC/rT6S6k6kPhW+IT7fErjfWLg26qS9PDdLQND2Wv9PXEyIOE
	 6GBYJHqI3t8JpbKDonX2qRS0I1VOXB/1fgLJOsSyk8dniqAq6p2cXzu3/GmW9VUcfA
	 RchVJF1LF96Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F157C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026899357.3944.14132297176182122577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee2274997da636c0f407af0d84b1c015fc2892a6a7cb65e6f994971298e8f01
Date: Wed, 18 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750268993
