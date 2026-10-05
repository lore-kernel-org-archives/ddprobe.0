Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633FC1C84AB
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791158434; cv=none; b=XYHODfAPw/2KbM6+I1veGkocids0uyNLAJkPh/gviY4raIuyLuPHRaEQUZM5IDvVJ3WhRHSW0TM0cndglvS1+fM5UzL86qpaRS9uA2io7/n5E5FqwmXLcJEhLLhtwfNJEitSBUo/cxzi5VDaCgKqa102LIxJGMJ2UMsoy7j7P3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791158434; c=relaxed/simple;
	bh=nmwrgn43ZKLFRatJl1Gzq6MZPS9NJ6X2A2yWeXR4C1Y=;
	h=To:Subject:From:Message-Id:Date; b=P5DP2SQr2s+LbSdofaAFP8gjHRsPJq46qL1iLCJa+FRvtGIzhjoQ9InCpXJ+NKj1fUmJx5bCkJeMzRKj/QSACfO9vldiEdJYmIdYX0sXC4Eaa969Bui2Q6Eaxt9Ea1b7VDffDbQkxvS8tZzm0vDw3kMI/lyidBHX4RZBVNqlzeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMg7+t7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMg7+t7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97A1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791158433;
	bh=nmwrgn43ZKLFRatJl1Gzq6MZPS9NJ6X2A2yWeXR4C1Y=;
	h=To:Subject:From:Date:From;
	b=qMg7+t7QIZS9AUeaVWLmfYb9burV4CS1yFdT7rMxueypGi0iNQ4R9JtiL2hD3mHle
	 QCG+IM8B+gLTNGcdpWQ9TcieUwpHHN/6bBqGiZwcQErHckHfvyLQQcI4bpynE5a5LW
	 VWNDbMhpp4IFd4L1fo+fPpBeysBBmOUSfDVYmIgAsUUjfwTT1mWxBvFJ367FDin0ui
	 emgmQX1jy+XfS2rFp8JO4BNv0t6ZPihkbiF3WmEOX1LNvQKp8mFsLvYgPMqNuzcXI8
	 EhWwjNrMBJIMIYFxrtRdrHoPUiOv8N+4T5vEZzxRKEas5hXz8OuB5wmlV5sWvMmYYr
	 lWfYMLppHsaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F7ECA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115843369.9086.15978670269490325086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076c8d4b80fe06d364e30b75efc6c19460ef1276675f81e642d00b65c49b642b
Date: Mon, 05 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791158433
