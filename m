Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D8825742F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763617914; cv=none; b=j6l0idA1vXFuzkfvLnrxO3WJ25bdb1mAx+MX2YjWHj/QmEmRILbM7VAtH89tJD0/X4RdB/Hc8H0/4s7Z/z1ByhO4+RVFfeUihkELQU/+cZrPLIOFGfXtH0NYJ0BJos7uwgHpwMylrlWbVnwedFuKY118C1uKUUTjIEqc62keFY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763617914; c=relaxed/simple;
	bh=UnT+cySDmg0vSxzzV/i12VFtj29Yrb8Irz8ZtqMmR8o=;
	h=To:Subject:From:Message-Id:Date; b=ZbT7Lf2M4WnhiT3oVMT+c10UPRIsvS2vTaghnE8GAQkddbPgW019EjeQEwSC6GUN0ZT0M9BdkQsSfjj4FR3FpfQXy4EETPDNHrMO4oMksjJ6IXei6Rrd0hrrvHHmLFaMDjDLGF/m4pYXRImrVq8KBSG1MCcI75AGVwEe7pdqYLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ+6omhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ+6omhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0652C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763617913;
	bh=UnT+cySDmg0vSxzzV/i12VFtj29Yrb8Irz8ZtqMmR8o=;
	h=To:Subject:From:Date:From;
	b=mJ+6omhSue7v5XRQM+qK+7JFaERd8OKPFgAQkQgzDy2Cc5G5IuSNwNAwPPwEFsq1N
	 3mMw41qjZefSv7mmWfAqRCNTVx+qljgzzUt2MaZhHpiLYAkapC3YH1uIhqGsJ4ET55
	 C0UCX1Dm5JQvVy/NxB1DehJlbKNiCI0MW2TMvJwF8mKuQ0/0djbDpzSwxjmCqtKkqi
	 8785G6fWbZMknWjQukeIRaua0vYmeOvCkKSPEVGie05baPk6sS+voTylIuaKm6Y4VC
	 tDq1zywms3yuIRGNjSKvyLlOAxivzYdczChJrOfz6pkZz2cqVJAVyFvHaPgCJ1HiLM
	 Y8n0dzdeTYytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F2CF64BF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361791358.18223.3218852272633733895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2506187bc8c1a738cfb453e9a460434e657d244b54b32bfdc2c01ae7c5116879
Date: Thu, 20 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763617913
