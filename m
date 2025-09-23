Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A879327A23
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758637794; cv=none; b=GVqT/Wz43GaxCZDkaMcZcuGIqjXqT1OrHUTJmRjdiuk51+gQgr1UvE2uaHwO/BVjY+poyL6I47ToeQbfQ1G97dwRYAKeP0fDy6tYElVqTl6TvubAb2iFFkvcDsxpK6Dz81IOGbJ2ITSd3vXsxgsV6zXhwyoFDG/uSd80DHTqcwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758637794; c=relaxed/simple;
	bh=n1ZQcx24h02sPx/1ZsTaKQT/zEyKcDBaFdV2QTHv3lE=;
	h=To:Subject:From:Message-Id:Date; b=uE91wjk768s5MYirjTWXeS7iyYPeC6HjL6Ewt23hzX2q8RBLgA6Jcj6Or0aTzpsYHzwVpX3MCyQnYkkLodM4eLYoLFDHGNs/2IHPVtM7KCwDcW5GwnRn+AduRxrRho7lalWNRYy9SXUEdvfyd6zxpAEXzZ84kWyx5S/Rqa7ER0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9zLeLo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9zLeLo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758637793;
	bh=n1ZQcx24h02sPx/1ZsTaKQT/zEyKcDBaFdV2QTHv3lE=;
	h=To:Subject:From:Date:From;
	b=G9zLeLo95u7tzeeZkm7rkXbtQR9PD6kxhnDbfZ9GfrYolWg0Yr4u5l5rad0NSNp0h
	 CmczlEUDJwlfEvqzRtYbiXN/gmPZ1GNZkJfUFD+X/BW0tD430NNfqbv/VTG8jzCL5B
	 tobrPKR81T3XvtdkjlyB0QX/zPsGG5bgX+wxc4zASVpXgay/bKy6HGLOm0j6Lbc5Gn
	 vSCtTcdXkm0PkQ5fKdTw0R0BcEQXT0QqxGyDLCE1XNeId1a8Ggnkx03MMIWpVTSzTD
	 fnqDQXECLEr9JLvFegMToCPxKNbi0CrKzpDhveqPvjHNtiESpZRXo6LRowGB/u41JS
	 lZck0k8obT+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91668CAC5AE
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863779358.15882.13485621440313194768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5ef73a9e3b2c33b320c8d170d98a148f35e31a064c281ca57e1a7d7b4c7901
Date: Tue, 23 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758637793
