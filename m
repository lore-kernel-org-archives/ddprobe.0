Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8B625F973
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755613796; cv=none; b=KTCHn5vpYj+N4oGwBs7bdLPqh18x2VMFbyXcJwc1LHeQ2Pup33NHX6eaXjAW1kQ9EFXM1P7QHq34olHsuZjZld1YuJOfnFvzS/azIHqpvxpNOC0x5C36c94s0Ip7pYVn1HWFQ98wOFVRPHwhfm3tG3PHe96QYwwMMsLrwqOGW5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755613796; c=relaxed/simple;
	bh=k6O+UApAkLoTon3VG609VjCotEs6S9K/ulobwXTHa7U=;
	h=To:Subject:From:Message-Id:Date; b=pPjn2BTgzy2p650VjfxlnKxBKyQLjvbmPtAltOdTQM8S167Prsmqi8uInemGJso+6oLBBw/5kw7TcTRNbtXBPA7AO6ZbDh/Fl68IJGB1445mOP5yUYRNjyE72avVu4zU0hvkr/EdWr2XoNRWDB5V8W1z1HVhoR/HXt6DWg13TEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCZtL+FU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCZtL+FU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D889C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755613793;
	bh=k6O+UApAkLoTon3VG609VjCotEs6S9K/ulobwXTHa7U=;
	h=To:Subject:From:Date:From;
	b=gCZtL+FUMKa9Czquy/aV/ESTshd8Sd41z6a499zVC0A9SG4QjhhJAlmrD3AjQ+Lb9
	 noNWUrHJwxBCuiwp1pQBN1qEF/Vd3lh0tHYjTfbOqApJjh0ER1H+JkewPWdwL2eKfb
	 Tu/U7BwiuhrbV+Q2Nte/SX6YE2KWcbbTLkIFz5DU7qGEsFn6Cs1PR9s8iKc5rGHcnz
	 WzFAuQoGALBGNEhJHJK5Yx9mdYJp+wZFPbsJXZejfnbndOpl6+odd+V4c435NVCpqo
	 FfZOybiKqk6zZvLzrWpaElqXD/Kt0BYWM/y/sRj73shZyOemEuhqAixVpx6oKoghvr
	 yRqftiP38mHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF4CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561379357.2698.13524646020889755215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe0907fa4881077cc8140e8e8df071cb94ee6cab5a7bb81056b97e5dce844a4
Date: Tue, 19 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755613793
