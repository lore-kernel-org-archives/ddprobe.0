Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136AA153BED
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762250994; cv=none; b=W56B6J9IYSodtRIb+NOe4K5p5w+egEkaZmjZ1vjgUhAsLl5cA3DXrjH6Ck7JvKvUMwHB8j3Xi0LQaY8mEIvZojhJzUd6nptJFuAhrT0+uw/rYOWZYDgpbg6qVQWdd1OnANni/XnEGF5XqU5aRQpJ20vemmeKAfJGoQqSBRRFRx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762250994; c=relaxed/simple;
	bh=0y/wvyrU8tzIE37OIcmJoPQb8/DdKbda8JDpBAdQwkI=;
	h=To:Subject:From:Message-Id:Date; b=mrjf/pU3D5wAqkLDm/yIF5LRDB++4BZgmKPIsDavzuQ7iuelyBq52xTWS+4mnMP7q+cTA5JjQIPRLHHhDWLq2v07scdOIS73eyL0In6J1fypZs8CD+KeOwBJs0T7jkCvoSKqBvX/G9TKVj1uNH2SFY1YQefa3AmLixwdD7Gw2y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWKu4VLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWKu4VLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A016CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762250993;
	bh=0y/wvyrU8tzIE37OIcmJoPQb8/DdKbda8JDpBAdQwkI=;
	h=To:Subject:From:Date:From;
	b=AWKu4VLRka5KM3RwaIYYIFtJKVbaZIQIm6/3h6J8PBw5G21he+L/ZbKcSiC8Y30bD
	 MJWiJMgA7uas4Lqxgyg3koX7Ehx/pfqR0Gzv5exjTKtiuc21jFL44khD5zP84pAwrS
	 4gF+GNfW0pKeDmzcY+7OgXBEAB3OL6VIPlE1E8ledSzbiAuY3Nkms/wSHHJM65R6A4
	 r8CpnNC0zAnE60bApLL87Vvy8+956Dra5h2dsrMmtzd9Famv9KMiNACLyTSPPfH4nM
	 Qd3TBM6yIDQ9ggzluC0CNxKp0KerjhXZ1p1frFaxtT+WxI30iYkKk1kFzqozw5N7m2
	 Hq1ZP8wMLeGaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91149CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225099358.5216.17566008989681382265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25197c209499dd3a71d3f7b7bd4a292c1ed2191ddfd0663db064688ac82ed54
Date: Tue, 04 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762250993
