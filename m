Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1281482E3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736028354; cv=none; b=otnu9Et6+HXbAiNMt9VqRFIYSzy+9EvMt+xEHXLOS8ix2RUo52W+BnswKZwBP1Xa/5T5syXiD+GNSxR5GpcTZYtbkFBKRPXST88EIvQ743cKAUWkABMf/ZbSxZy4kPFiZKRT0rC4LwjvMLWrafaoYSlJMGBzwo11j+2n05kPBb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736028354; c=relaxed/simple;
	bh=TMpjwI9GE2MXa5+okmXqrzPGE3E4AoOuyXf9zdeYZFE=;
	h=To:Subject:From:Message-Id:Date; b=CGUnMUZFCcsg/iQI7TgRoZvHPFoCd+a/D/ywtX66VJ81T3bGlXFBBlqVzyF3TDs1vUB7kYTqCOsfVTxbO21WDCkeLJzxIYm+vHYnQPX5iXhFK9SN77c64Z/s8gg86Z8+qvT3AHfYkg2VPjpEO+MWCF9kveZeQ/RGFqBdIlLYMSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzRnrslU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzRnrslU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4076C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736028353;
	bh=TMpjwI9GE2MXa5+okmXqrzPGE3E4AoOuyXf9zdeYZFE=;
	h=To:Subject:From:Date:From;
	b=XzRnrslUa8PgTx3TQjRj1WMWf0tx0XjD/J2zfjv7/zalPzAyuSYMJJH6yrkNCghZp
	 nyozoVy3kAktoQ7EkVYggouS1dg9Gc20Bgz0i0O1HpMJmuEXCohFxHxR2YETN0ZiFT
	 Ii115tAJ0HJQ4sYPt4UMB37w5XY9eYQKXdSFy5RomYLnc1lF84tlNFTvR6cxKf/fNL
	 CqOueD0PFzn5gMxGaWc8Fw6UCC52tpCjbkK8Qn5dOJgRyNTEoyXQ5bG+XgjjDFW8tA
	 FYXWAvN171mCx7eCxIEuqvcCt8AFP2uxfVpWQbAlECRH5OsunmAY0nk2MSYzMm3e0F
	 wN6P8YyJOLPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B80E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602835359.29712.4194696142110366935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606d5ff8169d1f72d223705c2f2ef1eba44ac0fe0aa10e4101999805432384ca
Date: Sat, 04 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736028353
