Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DFBEEAB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757987995; cv=none; b=Ff75oMoVvd8PqLgLQd2D6btpzXlz+gQBsCNsYLRQCzn295TsOxisrAdJCBWqLszlbdOg109CcczPY6ECCAf7zq5w7nokhQlMkifXPxq8FGNFl+kP0I3ce3PxRk+c8+CH9y/qCuTbMMn/JYgtBnimU228ZRjb++ptwu6qFKQztxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757987995; c=relaxed/simple;
	bh=YpdDbVX8H3d1bXZKend7VRlzSsqwwZWRG9U7cyfUqNM=;
	h=To:Subject:From:Message-Id:Date; b=cyIOvGfodfXezizv4dx26TRDieOIP5wmDuH4+5yVqhTsYz3QwCBzO3nCI1yeOTHjUdQ/yv5WwPx7P5Ye1Al4vyQNKYgkSx8XBH3nMtd3a+cQaJZFoCIfxzuNWuAPB0T3CYlxbh+9D2aQRKLmEp2uD3MG2eCGO6J1E+zG7vVBweY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkgjov4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkgjov4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757987993;
	bh=YpdDbVX8H3d1bXZKend7VRlzSsqwwZWRG9U7cyfUqNM=;
	h=To:Subject:From:Date:From;
	b=kkgjov4tvNhaL5jAYA2C9P+IsINe/BF8AymKAzEXA0+8oyjzFSfHDaBYXnLv2Nktk
	 ub5cIb0fvhFYfTDxEFxLUqiv59vpvhXP5VPvGXNY7Bbtxmfyxql8K2IP//7mDiU1tP
	 5DE7gkH/9X+lztLl7LvKkg0CqHYRelhnNO5QNXJdaxFVzvNud9Uk2TMi1740U8uTWH
	 xVioOkCyGutmbdcunGjdYix1TeGwW/PbQwDJIBoHGRk7ESVSL+W0ql+TlihcgFmNFO
	 vegWmB/2nFQlKMJm870IsVtUFVA6Zq3klKOJx+/fMok5Lqk/VZYywMiF5XEvaIvuOD
	 63v4JQdm47/VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A39CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798799359.29596.10966611315950750910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2efcf7eec0dfd1dafb41d2e291e4637de953260b80997cabe9b30e90cbf79c
Date: Tue, 16 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757987993
