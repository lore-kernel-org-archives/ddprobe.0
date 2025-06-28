Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE517799F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751133596; cv=none; b=QdcHX2MlQ+M9PmT0QpmYc70NjvQU3Vp0WakIH5Tn2jcTUCGGAaA85uXwyETg0EscEF74UyPPlV+YIB1UK5GB1FjJoDKFMhp3WBS0BAcNMK0Bvkoid+OzL0JIRNeDpcQzWXHkzQayn1KckdKlGKn80FA5n+714lHBEaC0TQ5DK6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751133596; c=relaxed/simple;
	bh=ho0xQnuqytUtN44YC9D265r5y6Dh6OugisSxmfXcJDU=;
	h=To:Subject:From:Message-Id:Date; b=ngYw2cCcp7Oqg25iSNOG0Skt7UJtBCghvKO8Sq3+VEKe3W8p1+ahgv+Knvts+ae8fBBLknECTdmMxBy+HGJ4bCYjxagR2YduSMqUDhVowXBX5jdpugS52Df/vVFOBtl3U/iDhkmWpfOvP6gOG0EqDCm/DYLcxp8SySL88rsT/Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCfuiGbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCfuiGbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E3C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751133593;
	bh=ho0xQnuqytUtN44YC9D265r5y6Dh6OugisSxmfXcJDU=;
	h=To:Subject:From:Date:From;
	b=eCfuiGbS4dssAW1n+J4WdlNaHx6BiMkn4v6bcEz6aNNi33C0atqstuw+P0UCG7Vgd
	 jBsEoO9GxXk6WOWlshAQ0zpjdn6xtjXmZbi54FozEiAKpWfRWgI1ak1uKGEVIohm09
	 NJSp4PBL0PPGAN0EMraXt9WqfoS+ayMl5ydJp7+SZMcEI1ECx77Sz+uWkwyT4/Ya2r
	 ybeVF4owYqVmB1Ic+HNBQYaU8CKhmjK1bC5WR5jjw0xOIU8dfR2wBccLiSEg5yQHMU
	 EQizgixN435iAycejq+Q4TvZKDIFM0vXYbBEZnvszs4MWMf8keAxgQiamkG0/Va6ti
	 LjDrC1f0igx6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442DC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113359359.25720.1402786401245631422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6ad10c2abe67c78d61da26aa0acb1f6627a5a9ccb6a0f79bd6e615a815c3ab
Date: Sat, 28 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751133593
