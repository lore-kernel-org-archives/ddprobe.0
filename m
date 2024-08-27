Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002E8289C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724763954; cv=none; b=mjYJXH404R7ylg31XihmogL8r3ljXftTnu8R+9BTwdCkM5RzOfLZD8pg3r3Myo2OvOMoSGhYF2aCMrgePwUsxOMSU47QsAfetmobOxv2NHFA7DThBzbHGYm2+y5lqGVGnR9XrUJRptpcA4+6UXkm6u5t/F+gdE0Dmvow7JkJaQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724763954; c=relaxed/simple;
	bh=TfzInEMoP05vzFJPUx9CK8Xru4rXl7IBp+58O5zBLAI=;
	h=To:Subject:From:Message-Id:Date; b=BVRJk3DRhEe2xYkpDdx8JY1Jswv6QA/Fb/S+7ku2MrvbYak0AUrZjsD5g7kk8tBAtBgQWlpKmHONTbHH41E5te/514X3i0CiALTvUmHw/ORYTRu19zUQ9FmtozNvJSPsufL3oDrh2Py7TrAsVbC2bYzQnvcKhqw4Jr/Tpy70EgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8rhO9RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8rhO9RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD15C4FE0D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724763953;
	bh=TfzInEMoP05vzFJPUx9CK8Xru4rXl7IBp+58O5zBLAI=;
	h=To:Subject:From:Date:From;
	b=C8rhO9RSGRiZMAH8ffTv+JINIpwSFxUapdWueNzbqWce8nWipz2bVpmY6YvimX+GT
	 ce68eLIGrr4ah8pDy8G/CSXultn8T1F9Tzm7sBSoVjYK4C7+XLiYAkzIdLnZTyJeme
	 lHzY1iBymmO7dknSs5c4hMF6NQ3Cw4HN9roCUCvqbVEoB6/TmUvJvHJE/jrFuHdSWO
	 5P1Eh5+COqiGeV8YhwuCie39ixNrFIFatIUI+HL+sjgFyxaNpWLelhOdbxUh7acrxS
	 JLwV3+N05c6SK1oSXxNcbPBHBs5CcVC9vpYjWRDtfonyTgXr6MA/jZzfxQEvdjbV6c
	 knq6oX7EylbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F1C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476395361.20439.8888270123294431656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfce998b2583f596e8231e959ad8c50ee8bd9726d6047eee3f67a9913403f96
Date: Tue, 27 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724763953
