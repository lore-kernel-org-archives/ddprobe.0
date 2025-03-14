Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0A733993
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741921134; cv=none; b=FtPLYNr8w/ROnePS93VrDcxalFKDDkgunxRtqZW7GMJat3cxlzvXSwIZ0zkZxuuhPEnFSGQ5/ePK76Y/jA7/TBrjz3jHncn5JoO5OEPS/xKGHOdyC44vyE4b20RFDlmLL1p66bOKK4Psd4O+Hj6hqml2OkndH/zQ+V9IPqkCpY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741921134; c=relaxed/simple;
	bh=4BOggGA8rJSdadG2f0m0Z18sgqQJCSCQymoRRrfSbxM=;
	h=To:Subject:From:Message-Id:Date; b=BDXYGmTbDw2g5hiYTNFRVNNtsgFC7giT/5E7sOJvnyexdPOgDcfNyMZcauYElYsSKcEQBhcP/SKQecxM6avICQy+JixWk2J3FrOzpg6CH/SIJ60dfTmAa/rrK0aL7/BvZ+KQFlpUT4b6OchKPBZRmH+O3dTetNDZpCFeO+TKKeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMn6DPeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMn6DPeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC80C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741921133;
	bh=4BOggGA8rJSdadG2f0m0Z18sgqQJCSCQymoRRrfSbxM=;
	h=To:Subject:From:Date:From;
	b=XMn6DPeL8iX6199n5Wo5TtowXvjX78qaiiZBhwUhp9i1Lg+mV1OqE89mibbWB8hiA
	 72h3bA+bDLgPy/yWfYKRKf8f/WYI0s24RvcyFc1JsE243UfKZJN45VJI3f9o60tAYq
	 YVLYBgxbXi37KmAGbKiCms1zT6WrVsQkiqyXljzIunDH5UZD17xZhXzd0iAL6i2imw
	 k5ze8ll3d10mD9celNHaFsSSnTUSVhRG2AFII7Z09HYg93Shnr8PKfHit8BhJbkq8i
	 bhO+r4OhKVr/aAYcrafRgSGcLBTUufN4kr86C6NMzqWgSV91cCleXtRbVZS0vmER0u
	 flGWqF0HU9ijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23EFC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192113362.2807.1009424676053258355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d8e68704a4e5b428bb67d52c73b55e0f786343ef50e780ed5ab52a12cb0783
Date: Fri, 14 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741921133
