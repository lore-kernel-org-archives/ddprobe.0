Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C1C239072
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762147794; cv=none; b=ityMgkWkIzRXktaRIJnpowhXDC9PGqgRjr78xoEWa0fnv3apf5pAgYGSpUHcRs8aVv1FAOR/czHn6B5ErbjvWnps38vBpDIFp5e3BYlx9kvKpfULqhOChteXBcYLYsbnskfdi40xzwRuWecPpeg5sxis3kiTVuDsmamtRBK4OPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762147794; c=relaxed/simple;
	bh=qLvSVtl1jDRCD2PEylNbPBijQtZNYu9Qdx8ezi85sNM=;
	h=To:Subject:From:Message-Id:Date; b=uf0ysPWzIjZCr2/1sHmGdCl9nLBm96xsjw4YSrvf3HqhtWiP0ZTq1BqnA37VK800VOxTGpTo3FsX6Tyv9wseEbo1Y4aP6CnQYA3BLua9M0sWLP9Dojyv3ErEC5KmD5b0zAlCK7cT5D8D5R+IIK0moRGORmnYaZcZMSZDCZ1f/Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg0GqXoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg0GqXoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1F2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762147793;
	bh=qLvSVtl1jDRCD2PEylNbPBijQtZNYu9Qdx8ezi85sNM=;
	h=To:Subject:From:Date:From;
	b=Dg0GqXoJ32hy6HY9ujD5azUvBhyK7spuOvO4+flhcG2uJ+vCpQDg1M4fjN0FtII+o
	 oHbLxcVc+qKiL17CDkmxRNPvci0VfodlbFQSWDNoyB89iKQfBQKIJR7ebN78bvYSqF
	 PmR5MP4h9R1i9JJ7W0eZjwq3lAYk4j+b48vbJ4EUGt3dfOkPEbwW+AbUQBgdIIkAJ+
	 6i8ntCkNcuqRFCwUvsFo8TiRkBBq/qRwRVlzJHWWymxpDJfSn44aimhduw5fDH8lp0
	 qP2skjtpaj/WWEsMfUwsEktZHkjPGzyjC3Tmbvk2eJw1B9X+/ex6qY9MkMzMyPTiC3
	 biqaQ4wqUUo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8B6CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214779360.12942.14776244437566740563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a5fd108b1cd75f2b568edcc0d8658c880f8bc5431db6245535e152fefab9b5
Date: Mon, 03 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762147793
