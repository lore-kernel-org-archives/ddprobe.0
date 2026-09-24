Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F54AE8DF
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790272234; cv=none; b=p5XtafxcSYulNNEXHopNtSlJnFdWI11Pfjv2ZKxb7P6cRnvrPs2A8qsJvqpg8B7DuXTgNcTEvYVvxyQf4v8kgHjtF6BdmluTqJTxIe2l7+5iHfmRoeLdvYvNajC4FWVXdexMMxpOy9XX0iczqD+RS2NZeol5kt/fsJK1Kre3jQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790272234; c=relaxed/simple;
	bh=B+zfEuv4L/JfEslLsWMamn5WEKP6jAVr/uUwssgeKsE=;
	h=To:Subject:From:Message-Id:Date; b=GBKjydVVTf8r/kQ3ZGmo5yxftUx7zL16M1ThOHnZk8aYgGAIOXn1mBpuXm91vPqgKdfYEgviqHAC0KNhpP3n8WSFgaKZj3khXKwv9g6t4uu8A/XKSWMc+sFD2/AGrBC0NsFGvrvvIxkid1xvYyE049nJvukVBmCex8sROKnHkUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BudUHRos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BudUHRos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1ECE6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790272234;
	bh=B+zfEuv4L/JfEslLsWMamn5WEKP6jAVr/uUwssgeKsE=;
	h=To:Subject:From:Date:From;
	b=BudUHRosWYV5T7rXoygbDb2RapoIC4OcSpoZAtuWMBZf7UN5DwC6b0FdZunrwAxFl
	 eA0AxKRkWOgeMFBKlA4Zw/NCyovfFJ/4WdiYZha3fdkOg7md5NGelQDSUmyeZrFj8W
	 h7ixr/+fJn5RUtIXJyWbmbsmSsFtBk5yVZck3dLRqkU4sWN17NGoREhoflAD7dutRd
	 H8X1FLUrH5hI5U2y/sdL57b77BT0si1iYlbWU+/Gg2DvZ+DwncL7YLwVa06fxZ8KZQ
	 8KuboTKWBBl2w2op7r+S7blyQIV07zz9ev9Mzu3/6vkBbRa6hzXrPOZkvaXpOj8HDP
	 uSbhw/aFGzwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E87C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027223378.31238.5222405539965159846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec64e0485fb722cf22e71a8bd969286c7d05893884f010ee76ed6bffa1f8fac2
Date: Thu, 24 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790272233
