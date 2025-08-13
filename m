Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019511A9F9E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755084594; cv=none; b=TlDJZYDhw0iD//3T56k5AwMKKcZOq40bwgTZz3W9a2oosSgCf5XsRs9ShoZHFOuS+rdd9tf6s+BOyAw5aUEsgRkJBtVXZdr2r56U6ghmDvDe0twEMVoki4q04w1W8d8hdDyC1yKDOY949XqzAF49zuBGNGs2+p56vvSKf6lvNGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755084594; c=relaxed/simple;
	bh=i0ml02h1ATh1JIaVhlmmdcaEG0mEvxuXovbNJ2qE/gY=;
	h=To:Subject:From:Message-Id:Date; b=sMFQmPYbuoe0sbbxmn7zNJHJwONgvOh6CR0E5gvrMjYHftFTrFsuplXSaGmso4S3ZJYzD5DV9rGkol9GxNYuWFysgIHPL7qvg5f6XzR0mn4cxD/T7yI8MBjXg/EU0QrRIwhEqtVsU5kXU2jZhux7E0QWs9BDsI7T1ONC6bAF9/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXP9SuRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXP9SuRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B971C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755084593;
	bh=i0ml02h1ATh1JIaVhlmmdcaEG0mEvxuXovbNJ2qE/gY=;
	h=To:Subject:From:Date:From;
	b=mXP9SuRYEQqtEm4el7Gwf/Bhx2gkr6OIFbOn3ItEAH4E9F9KCla5RvdOFdGWegE4V
	 OydLDYdeCwn/jlhHAD48xiBiYiEO91EOzKXgiUHuWFBi1iipCbNmNx8WYawaKD9huy
	 aYP2/4EstgTXViDUBStaavv1uzpMwI8Gl7OX5NcoqsMGcizpvr8M0mImn+YiP3NovH
	 s1ZJTtHdBLvdBmgMdReB50CeOOzgpupR+Bh0XnOBvwN653cnWig2EFkw7yctPkKZx2
	 j5VFBjeqNECndfJT4xhOMYHmC75esRE0CDtQNWAZ5Jr27TDiUkAByOd4MFFLUsCbSu
	 dkSexb8LhsW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E66FCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508459357.14158.15869951046165816964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712c8be611525783e15da1069cf0941ae5cf3b27d09240b95300917fb500159d
Date: Wed, 13 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755084593
