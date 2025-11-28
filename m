Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1551F262D0B
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764366174; cv=none; b=NG5V9/yE9835SIjoR89Nhah3DcYB7rkvfLAHSkKDTUHR3WzWVXph8qmY49aFvnhDVCzqI+C1QhBGjc1+Unn+2kzqBXNAeltF39pZGrq943EzFkFAvatd5nfC3EpKkiWmCTRR+CCZhom0KtiP73ooMOYPUIjDgsGmopuC/rMCVmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764366174; c=relaxed/simple;
	bh=7FRK1g2jsYNas8hbZTc+wAFlxHSGZXvxOKzS5pyLp7w=;
	h=To:Subject:From:Message-Id:Date; b=RdS8wa7KR/9uMQ3BaniCcXoHncMVCHOTy1ttNjKTPzcFnuOPIYAuf1TvMl1S4PzTqByuMbjQ5gSJP2pTFBz2IB9wsVu90dmRxvCvWtyEJOzHVXaKkIo5nH5opkWnrx4zqkYD4hSx/0z/xbYaWchNzjkQuzdR+QMpcEAgxL8URmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgwJU9FU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgwJU9FU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B06C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764366173;
	bh=7FRK1g2jsYNas8hbZTc+wAFlxHSGZXvxOKzS5pyLp7w=;
	h=To:Subject:From:Date:From;
	b=OgwJU9FUNZLrzgJMyxE6QzrOf5lsnZexedbCnu2J+9sSOhIrBC0555Xzk1C7Oxa/8
	 /Ae+HpSgeNmivwvH5hWbqBXeT1N/vxI83WnS8ZpbLxgBmQzvHieCkHXgM5g0LiWXI4
	 s/Wa1fTiW5gOfj7WaTPFTpqoKv8RQutHs+1ZHkzkK6RlUsfx88sJ4JGy6BbsFQUOSu
	 n0yCrJc2bLgr8zjHapnE0guhfTec+Hg6AKBzuzjhLQnQqsFMMb+Zytoi5TtO8vPHdF
	 DJu+4izS59gIofDQENSZcYAX/p0Mk+hBhkR3L9C4lapb1T7f3aLHL02MWykPLyBbsk
	 TRRIP89OfbCEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E80D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436617358.23365.12581715911330257018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fbf937166de653ad9667c60d1fd2fc21b3a78b5946b5acaddb1b3b9eaf5bae
Date: Fri, 28 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764366173
