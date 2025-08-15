Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09A01F869E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755238794; cv=none; b=MS+uwYTAOReD7jlq4mIVlP3vYCfZ99L5399cO2TiXFQQtvHObHZOCChCPKy+IZworZH07JTi5QCVRqYI7IDwCoLiZQbo+LjUS1nOhefL3oHnzVOIZ9EZD75vQI437SI1bmSlZ4SgvfIXX/NHK0Rxov/xZQeYmbCjYGVZ18Id6hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755238794; c=relaxed/simple;
	bh=4kCj8j6dWGnxUrlefLazpNfmgh094MLFVBD7av1wDkM=;
	h=To:Subject:From:Message-Id:Date; b=G6DOnmNPkLNSB5158oh4mbbxYSYrECDn5vPcbW18otawNiH6/TLDXaT0W1iyoPfl3D8MMBJUgEEPH1ckBKAMtG2jalqBCtbA1xI0HZVbb6TrvLOh6cpxvE1LywEXJUlZr8Yznq9QHAElx5LwYt2VaULhZbmyK7vlCs6e2/YsRDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6g4tb66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6g4tb66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8CEC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755238793;
	bh=4kCj8j6dWGnxUrlefLazpNfmgh094MLFVBD7av1wDkM=;
	h=To:Subject:From:Date:From;
	b=i6g4tb66+xZHu8cURpn3h9X6s3FPllSqwofWnRURClOciR0xTd8ITeaHiWRvh1JiW
	 xd36dA3CM94/XOGV3lKRvYfBxwlOn2NbQEibKVBG6v2s27sg2HKFuGKbXB0SM0VM7V
	 7kka+FKGMAJ8rzhjh1GLss+sNJcYa3dGqgNqKPI9VNyIy6lfUJEMt5+HdIyqzvffiE
	 994tNseIjH/hmJiaUze8BhParuyVDX5dNCwzKaAGn8vG2Iu2l38tb/T0qldtrfeCao
	 E7aGCSNY0HclnFAVpgc/SAuLuAxwgrs6Cq3emYtrUF5olePxFqwl3TtHjP8h8fwrEw
	 hTvrlH+m52VWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E843CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523879357.5560.3956437927739196275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6682e97c151af1137c1f9cbaec2cf532021098761bb06837bd3904926b8603
Date: Fri, 15 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755238793
