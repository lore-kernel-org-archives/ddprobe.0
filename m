Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC619D074
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766523234; cv=none; b=oBomkK1BhYVh1U4MDvwEQGcmSqpvHmCcwcZE/b5vTb4tS3WM+Xg9nCwyf1NbbVH5buEGn3XctbzVrIORbRxKHo/PlRAah/O3aBbHU0ULeDFTqrdD3/Ia7/FuUXnCVPuI+diLRkEd9gtHfe4IAyeaHK/OiSNZnSwuwfzjx5mEj9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766523234; c=relaxed/simple;
	bh=v+HQUvb9F/E5EgnCAj46318PdywPLu06ScBw+MkBDbs=;
	h=To:Subject:From:Message-Id:Date; b=t4lx7UJ7rgLeInrx7o0ozmCZ3+/AQcvPtOCK6251oPsSxkLX6HKFxcCVSnOp/ABkvkhVec3h0c0XpcnVI91R+UOCuTZH4mR8VT94LlpEd3irYseThmdo7sddCtHiILGhKwdiWD7TvvDXDQ0cR3nufLQC45kTNNi3NQqMvKHmJoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td8fu/j9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td8fu/j9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A5DC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766523233;
	bh=v+HQUvb9F/E5EgnCAj46318PdywPLu06ScBw+MkBDbs=;
	h=To:Subject:From:Date:From;
	b=Td8fu/j9TaSfAiwi+vyChbqiHFnz+QYZGbRQ+N4ORCrg2W1BPGv5r70vqe9mOhnzj
	 gIT6qjGw5t14pnh//CNTB8AoJeQdqHnWFqLFTCyBdXYRL5THBeV7IVH2VF6YE+I5FQ
	 RxqiKXsvrzVOOBKIBx2KpAzuTtO/TZAMApxgrgVT4FvHcrnqC3MzymlyfanBavJUZp
	 az0RHMxDiLHUU+lkM6v53znv0ViV9T0Mzwt3dfof3WzLfZhpjK6qPkBGdRw2k9Gk9c
	 V7VkIjr2Ug2HB2OP4hCJHR/96c7BvPFwKm5an4UyMbCQh/b4X7HwOfr4QyJ1T17jkV
	 AHDM0KaNAl+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEDE6F086
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652323358.15555.650017382750224702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d2341fba522326a218e4f8b3f8a9d14f1fc65424bfa07e9723eaaead9197e8
Date: Tue, 23 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766523233
