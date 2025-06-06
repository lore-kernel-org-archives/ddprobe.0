Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D34928467F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749224994; cv=none; b=FqNCTWLuu6kqHh9pMAY3sf0Km1+74xcmJJe9rg4FA9MqjVCG7PPc1tZd0xk5vzJxdsy+z9r7Mgw/n/3M/02Oj9XcckkqJBTkags/KgalxscFM4Lw8sWAuaQOdfLrrl2YMNdZ0u4kqMEC2aPNZMxEb0JPYLGE2re9gFgdtGO+np8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749224994; c=relaxed/simple;
	bh=IYOCIY4QKumvQq4ENCDFRjYbCNhmNjflOM1aHV4auMo=;
	h=To:Subject:From:Message-Id:Date; b=Tsd+oy/QZQDUBnwVVzL2nAjVWUuYB7h+1WwR1Pevuz7QPmFmYjG1KwgUDy1Wx2cBxO1rmlaU0wmdjul9CpDDLAMWoKzM+PSQ/Iou8r2O5Bmw1feFfK2h1kw7m/IhJZ/1h5KjF++02IUo4sk8BbBvNQi1K8pux70rPZFE8jAWxAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpfSh5KM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpfSh5KM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB15EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749224993;
	bh=IYOCIY4QKumvQq4ENCDFRjYbCNhmNjflOM1aHV4auMo=;
	h=To:Subject:From:Date:From;
	b=KpfSh5KMBdjhO5vSl5ssz4clhaST6SF3y/ZQauGHM+a1jSgXQaX7OS3D3QAB71QII
	 i0GmkKw5ZnG96Rr9UFT4AqYr3AJnamSwexbk/IYbFLkV72k8R5VcuMFuvHg88Xjd7p
	 XqHa3uAvB5BxQiDyT6r5hyBl4hOaLH8RMq1T+x5oRspun7GKxKEUG1sAThr5zCSci1
	 qKxFvc40ILwj6PqxwxNpl6czDsu9T1LYyuY3Ht1JkBTRoXuODWCLxXyk67i2QrNoD5
	 Ta9tMbQrqg6Wt5MqqUPcv5wqToMXvAN/4O2zzIaCIl4sCvtzO4sNo+lw+jHEZ+XHmV
	 kJwg1st3Lfp9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954CDC61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922499360.4970.18214383481582208620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4715325bd7a9d3b52288b5c799e181151efcbdd51d7f09788a3ccfa89b932056
Date: Fri, 06 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749224993
