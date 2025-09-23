Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1447521C9F4
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758656995; cv=none; b=lBqD/q4K7+jCMn0ivO7DwGxlc3U8uPzmPd3CYltGwx8aq0buDrdcT0OuNeFZbBIqLIzoDILkc0uuS4YnSPZWp1XZcWnFMnjL1tF3dc48XFATqoAqu57AC/6SwJkAXkwyiZEcL3XPKXnx7yz5XsHjnxUN1lhBUMYxha1NAoQjvfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758656995; c=relaxed/simple;
	bh=0Z6u9SXZUA21HYgSSgjVOD+jUhmBoJDVrt1e3nVyao4=;
	h=To:Subject:From:Message-Id:Date; b=MnxRApSpnooe11PVlqlS5ikp23O3zDEnBEZG8G23vJVME8DR6rEVsxmGe3rzJHjzsfxFSKyxWivuSci+anh/9c+xsNXIhoR+3HMnFmIsfA6tatV+gI/eDze3oSyJ9wryw80lVcBfBqMhbz2Gw3E+uCZiSxmdHT5dSb77LVwE9Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ics6TGZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ics6TGZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A656AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758656993;
	bh=0Z6u9SXZUA21HYgSSgjVOD+jUhmBoJDVrt1e3nVyao4=;
	h=To:Subject:From:Date:From;
	b=ics6TGZCnzCx6rPYR9+v7C4MFbWuRS4ypPztac/kCEZo4/KwoBo62xRsTmnwTLQ3K
	 AtwfVmr0WUgDQJ7QBDr7zjg8NJWjzPG6jHtmmShT/fq53btpaQSW8oTACZb7K1RDcg
	 FAUJmYYaTEqK5Fo4rBhInsizNEJnoKWRPYhG4yUolGbGLHbmika747Bv/WUHJ+d+v3
	 bGt5s9nkn9T38ZaQOUZ0uiIE+fne/0vEAvhJEcvhT5SpBe1XryqRwUHllrS2G7JSnH
	 tdPeepSJcMeVdSZsldGPpkHuNQt1N0h0ax6inXmXI5073MPiuPRZYuSYvY1mRJ9Dlc
	 Z6BYv1uyVI74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E9CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865699358.27097.8079519148630040874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a224fc7201b5febda08a6d3a244ce176b300a9c45280364fd6ad26be269b07
Date: Tue, 23 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758656993
