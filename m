Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A59397343
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790574035; cv=none; b=ge06rOW4WHuuukKE06BqUis/lVX+L3fDc5QvVxWhpYTo3Q2W3P2VIMgKednKIxxE8bbrrg+45M0Is2uLAWJGdYWwzZZspSlUluID44Eq9a9U4NEx8Z0GLBPh/wmPQm/EE3seclqaHl5/RYnlcwQmcIiCAYftG+xrXj6Hx0u3M9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790574035; c=relaxed/simple;
	bh=Q+bElTiiOYp3wSff1nTUtMRpnhZxZIv3meOVlbJDXMQ=;
	h=To:Subject:From:Message-Id:Date; b=AaYvCucfOWCe6JNd2GqlAh3QtnntZo5JzvKdVbDaUKHFPFOE13EgmITzt5bXuYuud3C83/94AELFFi5/15MdxVvjsYPHrEmP2ocJsFu6s8jabXPWoIZC4Zpu7My/vrV9nR0cJrOOkgPhzFb/BzPmDoQQ8AvILuxYy7HKbjpftoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn/sxl7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn/sxl7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BDDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790574033;
	bh=Q+bElTiiOYp3wSff1nTUtMRpnhZxZIv3meOVlbJDXMQ=;
	h=To:Subject:From:Date:From;
	b=jn/sxl7zHSpqNc2Qv4kP53z2GRF2oia2nKRL/k2NC2yM+SrEMB4u4/++/gx/TYpi+
	 QE4r5dU3UjmanCrAHYYqIj0EAAWhRcYUT66zIwpJbD4WlkKmv2wMpt6bC5AKQX2C+Q
	 CIATjZMZQV8qmhoaFeJrHaSneuylX6HwKk4F9LljEB5phyFJo7I3XMhTXvHVrwgkuT
	 HSEburjdDjeMHY745w3LKL1Lh41hKKhEt1IzGcxDCb2beVlQ3WiZplYYuBEtWNxuGc
	 8RSAIxpDtJ7Bm4k64i4c0cwauqZLuP3m0OfQrv0K4hnQ+iSYiMCSgK/yBlXkInORNi
	 H4yTICJGfRFIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF6C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057403370.14111.7960855255934459488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd0cca81788f091c13f8f74ae0ff8e9ed9d9d7d76e9870b7ae4822787a81c68
Date: Mon, 28 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790574033
