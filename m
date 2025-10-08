Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317491A2545
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759947594; cv=none; b=KsLD3x1Hps2BYZLFhzIzV9w2JFQvKT6yJ2MvqoTmsDcO8kzDyC4YXKDrYvcJmMZ5sUTqWgRLEEvWIb3J1J1oVLRGu/CZoh7NZsdHGqikITFsWEFswO9s31YB6BvyEz2YKzkmTj07fN84VhQb6lSdeLXqUC8SdgRhNV2VZHFHC1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759947594; c=relaxed/simple;
	bh=rDr2iem+gTruYfgT5Wsdbf/TqGy6ezPpv3CEaA+LymU=;
	h=To:Subject:From:Message-Id:Date; b=qlnpGipGBIe7nwp8YUyb0YuofvVDSCsghw8TrGtN9/Sp0MqEs9UY/jtasZyBwUHNOZ4bSlqIJotBXxzp5xIHV/wQkgu3Ptg/EuOoPy9vc3bfYSRCyMM4RQtEP4wI4bDU69wQ6lb/y0WQSBtdl+V/j0jZ3vIaRjPPxxI390NXyWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkQ05z27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkQ05z27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AAFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759947593;
	bh=rDr2iem+gTruYfgT5Wsdbf/TqGy6ezPpv3CEaA+LymU=;
	h=To:Subject:From:Date:From;
	b=MkQ05z27iJnevhrKuPb3OqEcSVqVpwcM68Tlf8urgxcj86yFGUlEqSsdG6Rr6k10n
	 uSOO9lq6xPoh0r6vPNCIkAJIWTYcOxJtiEJ/qawUbxdn9RujiQlalUg0X9B/V6bjio
	 lCfeIMnVTHGv8wGckSPpcFuu0A8BuGkfvCkN7nhISq+hKpqOq+0X06xPmo14HBAGnO
	 o4w1Rbl+RWFNFax08Md0UuuOoPZyXmEYjJ75VJhztf+VOw1vXhkhBCfRX+Tur8WOp0
	 TLIm5addKCn+oqe0Gp4aJW0I/13sKX1q5nEPE1690seyQLCOBT6589RSq3dRZF4zIq
	 UTtfXG8Q4nGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914DDCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994759358.26771.16251621517236419398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd3ae2e12d8d3e1b1589d18f8a1fda9e065881b3516685672c0ac6b5235f136
Date: Wed, 08 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759947593
