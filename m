Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F5E156227
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725704754; cv=none; b=Bi3/MU+J+SR2Gy6naAAr2o7c2ITc3UyiEacplXRfmpjNh8TnJtPLji+UxmYjqoFaLUI3NjIGX3D2qqqamLUVgYqq3FGbkqSr4rI47HRHyVt3x+WNMd5wR0zk3Y069DHpIhl5Shw9/zq5DzMwrmmgFqMWkhIjDLyWaxrYWZ4DLNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725704754; c=relaxed/simple;
	bh=vsuDVnufEVBvpXVlqnGZHCFBUMqytyU0Vv1WkP4Crts=;
	h=To:Subject:From:Message-Id:Date; b=U4x03FIfXF4EDBSDbg7cs9y7l4VoHqaTTGa7tN+mORFuKF7dTTKDxy1cM3kr5MGa9ALoOVakCgNYpYNa70ifUS6bU9DbwxLLe2cBdsubjH9uhoOYg7a1ym0FWNuwDhgltBvyMmcfB7aAV+APEKSDewu1sF9wPcIKarOZVCM3sD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I082oYUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I082oYUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B1BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725704753;
	bh=vsuDVnufEVBvpXVlqnGZHCFBUMqytyU0Vv1WkP4Crts=;
	h=To:Subject:From:Date:From;
	b=I082oYUcRtxS5/TvNFLt5Rfe5A1ElZFv7S3CF7aMk9mz8S7qdn6s6zdJRoC34NkA7
	 T56JdHzcW5lSBkxKBgyJHJr7xfGDGcZVl8Kl16sH0jmJ7u9Rm93xne1XASsZluDcBS
	 ZlZqGn5tACkEQIkl1ISzr991+crOtsC0Bx/z+wCTwFeI48zQJPvKCEO0VSAwQUgVG6
	 Dy2wc3B/6Pw+bjpgRvi82da148jV5Qw64gXXfC/543ZKv/V6p3IVoLUQcrTcaLzSML
	 AhSt/ouSJ5kdW8aVXllyLannxfKX0OB0ubxq/8B9XJtHH3LnanaO2jXI9HZfsEkP3X
	 +1gFmVkYxzhNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9932EE6FE55
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570475361.11763.1653607981677080898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc810a332df1d4f2256b1533a1f1fdce2e072e138c1f8ac6208fc30718f98c0
Date: Sat, 07 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725704753
