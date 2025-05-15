Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41019801
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747271394; cv=none; b=aY1ymXlSExut8rIqzCDqEzVouXZGW+YuCgHtvTaSw2ZKGcC5CMm74g73XTuE77NWMtYrhiqRfsO9CB8m427yqT9MJtiCLpeUok9vbgTFASL0nxUYJVMrhJmi+hhm7atU47+kYzvSPDbUmQraZ1QW1SrwMJMYXYo2IcmQPn7MuIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747271394; c=relaxed/simple;
	bh=BzTqsbzimpCsJXwnjde8lbMZHJzwCJoojahOowucRgw=;
	h=To:Subject:From:Message-Id:Date; b=DwMOVG6DbeJLvymZFAMS4oFlzGvLV25wD8OZt3LefDTuYoHG9GfQAbpq7YHZnALGC9+GUsziqINaLO85lk+nJ58kwVruG+OBORyqWHlQTV5aha+jYT5GWaMxnWSmpuK4UuZhS7klX9C/wtVqgFYJaolD6gbFO9w1vzZjo9uo0Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoVzJ1oH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoVzJ1oH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDBDC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747271393;
	bh=BzTqsbzimpCsJXwnjde8lbMZHJzwCJoojahOowucRgw=;
	h=To:Subject:From:Date:From;
	b=FoVzJ1oHBYYjDMpwDKVnnJBDk/ZXA3RPgHtHwulmQ51k6HIb+0nEeYn3ks515kd22
	 kN4YOoYQuf8dch6sHErKmhDyn9lhIVBeJ8EH5rKf3X8hwZ3k2tyCDLsHp72o5SbGUg
	 GMfYmrv2Ns2N22lcsZ6Go7eBZQi78/CQRFnRc2HOwLpZXaJUA6UlslrUL5sCQ+9gwl
	 7NGSYFIQjcQErC6mo3xjNtNUt9C+LEBykOczyEPSlaBb9pcxGh3O1TzbmoZUGXfW7T
	 YO1zOL4U2jZQ7yaQbkC5umivV8+azLnBykXbv5joqSfHNjpmGXyYxr2gPSQk5ZNDpZ
	 gfs/qn14s8PNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F109C3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727139357.18869.233717904128841734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121f5204e4f3955808264cc875bf980e59ffd98a7ed849b1ac8cbe7f5615c2f4
Date: Thu, 15 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747271393
