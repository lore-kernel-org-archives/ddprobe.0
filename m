Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D49B676
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714342343; cv=none; b=sK8MTQPscXFAA+wf429UFXdAL++NCaFlYbhgKHfwKBWDu5GKMt4zvuqRUZ/4oRy/MHceoJiBCbIhuxzQ7PZVDnrVpuu5Bq0txBedyIBhdCWWW8x8ECMBJvLohC2jHOmYVmhQ2pVywy3H0UvDT0RbovZICpbIbDJNkIDtlORv/20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714342343; c=relaxed/simple;
	bh=nJx4SbrL6lb8w82p3/fuWxHA76hZ+zE18GmeTg9DkdU=;
	h=To:Subject:From:Message-Id:Date; b=nsTzA667Dlf1BVug/Pg5lH37qvab/gHKo82qMgJ5Ae/JSkZO72Xg2h+ecFzngRT/FfZB/emkBFK7G9EOLnswvMVjP/3u3ePwZ4DhUkWIKXcnoQv/GCItSYBwWN9R5xkNNc125vJG6ysbC+bG9PeYT2nMpL//updlBU7TaSKE7ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6EyNyK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6EyNyK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2194C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714342342;
	bh=nJx4SbrL6lb8w82p3/fuWxHA76hZ+zE18GmeTg9DkdU=;
	h=To:Subject:From:Date:From;
	b=p6EyNyK35hmGnbrrOAR7mOBABxhY2wON0rqfH74ncXxVXLVuuHZzUtcJUpu+AJt3j
	 asBuLUfIjs2fX1eQcLGKFP7kvI2WffluFjcvsFQmQ6CYslYj3NYuJ2VCEh8sWAjXGx
	 Yl2uS6gwRZ5fLn5/8XOhtpIPNd+dBNZLISEYHPD/iNAkUsYTJ2V2UZ2lliVLcCxX7U
	 c58y+oN+bt09DdN5xIAsIbi9PcoxGS6RSohsn8OfGQ0boaXLOpr9Vsdznc5PuULCUQ
	 L+kLsOjQNqxGelR4Duz523dnLxHx8ww81WuKox42hXlw4TcngcUkqV9Lu6ICP7qhXC
	 QlRglAq8H+nFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF43CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434234275.7127.17453576734614589586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86dab3689ada038728a749490c7056e82c5b689ed044d4e9580f5b5ef443305
Date: Sun, 28 Apr 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714342342
