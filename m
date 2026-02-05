Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A0F30DD3C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770318234; cv=none; b=I1bwKsjECmYbJRy0J8niZoyryiXGD5iP42HlHm7fgtPvOmx8dfXfeT3XsbUXLRtLpYa0+sZwFEHK95+ROFlg8jddqCPkqMNjUHPuD40Rkv4ldfJ4GAT3re65rSqANhCy3Ti3l9kKwoYbZgiZ4r1UCi2rTMYhjIqlwwx/tsQPUJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770318234; c=relaxed/simple;
	bh=Kr0PK8UrCDjjXlGCxNfkM0lrskaXxGRwJElrSPmYH0A=;
	h=To:Subject:From:Message-Id:Date; b=CUquy3rDygjyDf2QvGRBdVJIeHGaT6CuEBj9u7f1ajQv0zsMfLBUkHH7aFdegB37d2pZ9LCMghS0W/75qfkCx8jOgzrx895qC44LNi4SyZmPh8UpLpB85TX5NKoNKhZ27HO40jWi19sgSwQB1jE+2xHOaOSi+BSO/YejFfUs7R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpC2rARX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpC2rARX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB09C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770318233;
	bh=Kr0PK8UrCDjjXlGCxNfkM0lrskaXxGRwJElrSPmYH0A=;
	h=To:Subject:From:Date:From;
	b=JpC2rARXAWS3GJBsEsMxbZyZpbYJ8qZllgAZPvpwLQVWvaPUHD7iCAQk2q3AXe8HT
	 1Zwe9LGw9qTZjcbn+9pswM/Wd0hQLp+OA3M8yeOj5UPDh5fqOvWSLV39UCzhd+Pg2B
	 ng98AbgyPO7aPFY6sew2Kp6w/LXGcVEA0VQ7X8idSuMSbO9F1qajqMPdzdybvXoA8l
	 nazOepHZYGVxo34vf1Hu7MxNhrj3ayFOo7tEegwB0+Hsp9xWrpM+1YTO0kLGWI/m8B
	 4nX2vll5oaXfbZA1nokhIs8XklxQmCKtYQL07s9t4QqgbXqgoM5VjSM6B/0r5pgWCp
	 /Xb37Lo+Io5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D24ECD995
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031823361.29943.10625095501348273036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a905156fb0fe4501f41afb2b44ba7191d098d43695c1d58965b670fe957cd1d
Date: Thu, 05 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770318233
