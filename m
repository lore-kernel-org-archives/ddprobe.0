Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5377548643F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789162834; cv=none; b=oKDeORfH9Ib7Zr9SCeKb+aCkffEQNDcQJBtmb9rRcIlSF5Ov6QShn7r7/p98Ak7MGc1uiyuO29y0qtX9qWRw8Jc8bLG8G6hjZetUhXO/n+hnIZ2QQm4sOL2flj+kzI04lzAvcN/5SUdifSRKbJBV+ENHKJsnve/Z7xNZJy0eg2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789162834; c=relaxed/simple;
	bh=UcH99RduVsJ2Ie5eKY43kf/e5qbqgxI/gRa9FsBl+mI=;
	h=To:Subject:From:Message-Id:Date; b=VbnlqpKV1cnzGzTfk3FOxiTnTZ4ZjaPUXCubcxH6luSuCoSV0y6VMk/M6me6Ed4hgg9V2RA34ZdjlBH7QH6T2P0ax/fXKM1hxOCkjXC8BksdiQOpYkcTgFXE5YU+HoN8Xf5Kzj5IBZkPyAvbEWlZv4XijoLZ5FjyOwVcOo/tVmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhvdKtcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhvdKtcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB894C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789162833;
	bh=UcH99RduVsJ2Ie5eKY43kf/e5qbqgxI/gRa9FsBl+mI=;
	h=To:Subject:From:Date:From;
	b=jhvdKtcdKTrhIYU9Zh9J8ratH72NEnLKIiFC1CSQwMs4wYFUOtNzwD4G9fNH4n19x
	 0+bgl9AfY3kvZ5ZpKSH7bj7Nm8sH5AwHWtkQAto5MEWyOKyB9p79vhU+u+5lv+alQD
	 MqirZgu+eCnjGovhG65lW9cP/7npz3ZCt2cBEy0Y3JXtFaIB+pGdTTDmqb/ruUcm1F
	 eB9BYU3T/cBN4z5qSsA59lFJc7nEz1BVseT2bYdHsmA7Gr1enTo7ulVvZR+MAZQ5RS
	 Pb2MZxH2cYMlWLOjpD/Fjqo1RJYJVVkjpLOr7lxJQ9F9SLImb3QbhoJrkS0HW/MZfe
	 vs7zcBBPqXKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C04C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916283368.6691.16643362291825522906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a59a8edf4958ad1dada210b0a9eeeaf6bd3639dc39da2ad72c81d11e1b0c06a
Date: Fri, 11 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789162833
