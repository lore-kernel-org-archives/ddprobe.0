Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262872417E0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759281594; cv=none; b=Su0AvPJZod4NGO+SegfFf28O+1eDXDqWH+3uDSZMX+dui0HqqPtRIpFtE+59JsPuficY9/tWePUyPMqGH/BqQYRFXY9EW1KV0asaPH7vvmbJN7qlLUsLZcQw0OiC0PQZmctstDikJtsRZYboOi4H2ni5FU0Bbo2iWaDLxAkocSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759281594; c=relaxed/simple;
	bh=4Or1ElHQeHdhmV+4CKUyklL8UMOFXAdZtsPzz5ydYT0=;
	h=To:Subject:From:Message-Id:Date; b=tzRzkZoqp39/I/p+cQqlD7Y2Yx7pPek7KPGqNjKFr9CtmwqIgfevhTwSE+N2hfvvdEFHz4JV8KsTL0G4Gh0LULUF8dDjfzl074oV6SePg29QOF0s4okRYSuxLHzYe7yWzvgUXN2He6iHVD0XvYUErYtTXV99b+koSWWjjZqII94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJCLcMU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJCLcMU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0666C19422
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759281593;
	bh=4Or1ElHQeHdhmV+4CKUyklL8UMOFXAdZtsPzz5ydYT0=;
	h=To:Subject:From:Date:From;
	b=tJCLcMU+jLwxjQUwwjgCT3trl8s4tB4f23H5fkw2StuzaUkDy575gYqk/niYkCnGr
	 1AYnkCJX0UgiVdoYGy8CBi7dN0+57SAL9ft2OBCA2//SYj+4q7KnpV7clGx+Apdp71
	 +vJ3pPn6bUOy5J+eMAqMYNUUmLWIBVJT/sdQ4klk4RfekMHw3/oFD2w1IOnyN0ebRx
	 9HxW/xHiufDRTyqzarN7Kqb+9CLz/Mb8Ho/8n19co6eDdKHatMHabAOb2yGN84zPB9
	 7pyzZZxYlrx7CWc8ggBgTxEMeAmcKjpQJOjBPq1qZCpAS0FY3cbRQ82GVWgALPnAhb
	 yqe0oGfei9k8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A22CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928159361.21983.12527880509428064438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c687492979c7de10c87feeed8e60fd6a3c815150493f8ffddb9505cdefdd0f16
Date: Wed, 01 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759281593
