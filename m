Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3E935946
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747523395; cv=none; b=jPazCVUANTIx8Ere2QFLkv09uMIzUTwQrvZDxRjdwCbr3vwAK1/+XJS/fCVGqZxQGcFckaV+PxwZfPkVFnlkPWBdMfw5LyWstE56qhTTd1kf32byqGW70/qKZBP3fvdyoszGsIFRC+HrDwZtdqVc7NXmX4P0stRHeMtYs4iTtBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747523395; c=relaxed/simple;
	bh=khlQ1AciWWqeWY9cbIAflwyvMjtRoLW2797i/wgrhcw=;
	h=To:Subject:From:Message-Id:Date; b=XhLHgVxyXXCoxY9YUEPu16NARxrqAK3GVD3uCBeh5NQ0UaKz6bbNWfxkrTCUROokwtMK6DP0iR0LHm0/MW27uOmbPKYW6JR07F/b3zhFqwzsraeuREhZL9qZw+RP8ZGVHAts/1NENbyLQ97CByMfEs+y1Bk8neM5I36NdI3UWwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1khjI+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1khjI+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C61C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747523393;
	bh=khlQ1AciWWqeWY9cbIAflwyvMjtRoLW2797i/wgrhcw=;
	h=To:Subject:From:Date:From;
	b=B1khjI+qB1Jm1YRvC7XVDIdPjDKWzEbhRqF7dA7TXD/EB0OM9MaWGQuEKvR0jP2Mg
	 ox/t9V5Qv90a/ZKbBhOp7TsbfNaf2AvV/5ctTRr9MrNcPEi3IcXJ8ByOv8DFUhEAnm
	 9Xjj+y8J0YgW+N+HWpJLX8/adEhojhK4Egj/QT+q2jfv16GkzomesdcJYHJBhkqSD2
	 N9v/6wTTaK+rfZoiBVqP8XgjSJAhS+8++0IuNQ3RE5kE7Bvibx7hxaOjFuZ90w4RBw
	 CTqhzvNTO0/vpQdqNkqiWX2Hv/FM2dmfn0Qh0ugvnoTdlX37m3J2iITAzgl+YG/vFm
	 bXDjntnuquwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9214CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752339357.16468.10132794647212970337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26fec7f446bf7d5426b20d355914c5cb1fb9d9951bed27362da69c3f3388f86
Date: Sat, 17 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747523393
