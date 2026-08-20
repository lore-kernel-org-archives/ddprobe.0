Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385BB37F01D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787255434; cv=none; b=hcJ4kjpyJ8e7GsNRtYUChLHCo+cX/JJ9dTilkstlH6afjaKvoq108ybA136P1W74qblCitNqC022zFBEoRdd650HGC//PyQh7Bj9O0IkH/tBflDM8t7Isq4s0ZgPsovBEctoXuaDcFNOh/N11i9P2aWMCa9cjRO5k1yrhp4Ln7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787255434; c=relaxed/simple;
	bh=qDZIcATz71tgj7rhivlwgUCjqRoT8jyn2ocMJzO1KLE=;
	h=To:Subject:From:Message-Id:Date; b=UhZ+EPEeUxZq8uK2JgnGvexD2fuOA+BZyEn+4Zl+nZmHmzyYH6OreC2ACzbxFXvfqr6O7WW+TmLjZzSpk8aQzJdBYRY9YPxsadUdwu4l3VBueDS3j2TjgXL1mW/omazdFjeYUDUu2JpauCp4g1vgnlGV68Nd/me5CtnVHJs3oqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lopRJO+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lopRJO+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0145C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787255433;
	bh=qDZIcATz71tgj7rhivlwgUCjqRoT8jyn2ocMJzO1KLE=;
	h=To:Subject:From:Date:From;
	b=lopRJO+0YlR0PpP1FsI0mQhNKxHAWkrDujLONC2tvGhZ5P6lwItN/ptV5eLeH4pQo
	 aN6OI8M9B3qcy6PNTRQjr6D2m2LeGPF/7RMCLJaf434h1QHZGQ+DRBnKJXiYaiyNC0
	 1T/oIPms6WUIi9wlxKiD6U0EuulyaZtGGTGlFCmz5lM4rqQ+MK3xBXk6jVnCe2wUpy
	 gNWwGPArosLWYmyp0EGxT+IsEMu1kjEu9ZVMlALfnvuVWEEufl8Dz2GNFrvuXxmvWa
	 pS/qBBWaRjV50waI0IaIxkx4719jSegmVnc3C+Z3YhT5tNriSP2K1kOYxRqMXIYrbV
	 3Hxe5saWxbVFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEAC5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725543368.12762.3085333924183521602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94226f3947ff6895b66d6942f9f737e871d228b169953069234d96e9d14d52f1
Date: Thu, 20 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787255433
