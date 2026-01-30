Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB7530C36D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780634; cv=none; b=Ncc6gFsACKnEIzfXZ33Oj2d3p9h5uaFZ3xPtD7W2huR07YNx2xNtIWARfhnKgN5i/nrmL0x3gb9eLW15y7xxHglVXYUQ9bnwel0F3qTYfgkP/1ScN/LPsE6Egyzz2GBDtU3F0lXUq2OPZdyIPWJ1o1mBzE3nhUDuy1f/Va48T+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780634; c=relaxed/simple;
	bh=qW26R58HitWKI7umKmatd1vHINqpqVPUQZym66UfRIw=;
	h=To:Subject:From:Message-Id:Date; b=nwFEltlr2Jcnu2u2vTgcQV9oYtDvG7Tsfwh3d51gfeWGfY99Y613rQzAi6t100tidj7g4LUr3kEhmiuLPqdQJaAF7IuWEDs2GjYfQ4h7aPKTTtxvWUU04C4DhHH7RecsclKofhc5kTms3gH90v95PWsAmx/2WkvTVFfFEpV2QnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGzHmoWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGzHmoWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D60C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769780633;
	bh=qW26R58HitWKI7umKmatd1vHINqpqVPUQZym66UfRIw=;
	h=To:Subject:From:Date:From;
	b=AGzHmoWZ3Yki0dwXNSkj/Ns59lIscao8DPhLvID2bl1IS37vrixGv9FCOxS/4dCZM
	 eRGDgxokA5pWemqMTbG240rX/v5NnasFJwTc4wqRHjk061SXp9jlLJ/pYuTKh7+gXC
	 DeNqMLxQqCeWr6Hv5vMT5UVj3+vWQhA0i0wApJq3PJTcujWfGBKhdD/T1EzY+50LAo
	 gWa/2zD2kDxRJSKNqFHjxe+2V+o+C5R+KxEsMsvLSJIgwGrbWSreAGt9bcXiElDVJ2
	 HPDvw96CjNE2pV8mW5hWedT0WXFnNFat2TxZi5kFgqQeyylmzEM4Ui1wNf0nDqZWqU
	 11FLImWvpW/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AC1E6BF0E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978063358.17462.6122744071921155426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffda357b11bb19a4dadcb93d48853c2d8c22fd0a7f5f48fc487efe8cf0930922
Date: Fri, 30 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769780633
