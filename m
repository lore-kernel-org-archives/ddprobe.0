Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DA1E529
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720378583; cv=none; b=C60Iw41jZ2mQm85EBp+AakVDrDGjdcTYFlEDGw8d/7weaD4wZvGKGmkomQZ4ZcNFWjxbGq0WkG9+Pp2Ir3bgbI3Iesw9C9ywNYGtL9srosoYgpS6lz12I07Omh8lrzCUkF9tlPQMVVMuy5/2rV64l9B1vwXN03SS7j0gc/KgbtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720378583; c=relaxed/simple;
	bh=BYXjtxvREBk7AXJqQLSldjahgjTqPg2jmFouYhwi58c=;
	h=To:Subject:From:Message-Id:Date; b=WngoHmV20lb8AAM+0FUV0oSMRxFbDpSCfzrX5PicxnISKrDKQjTxyLCafwxTliiHI9eEDIPuYXf8uLX8EJ7ToLeX67p9eODw2WF0PxgSAQ5ZpiTCutyNuhXT6gqUoLyHzQkMnE0nvJcyqeJ2ylL9y09psStSsT9Tpmdgi/kPWUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB64hs3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WB64hs3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F4AC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720378582;
	bh=BYXjtxvREBk7AXJqQLSldjahgjTqPg2jmFouYhwi58c=;
	h=To:Subject:From:Date:From;
	b=WB64hs3bCd4zDE2DdJ06Bg3Z+08tP31zvBB4duUn//wret0geboH43KPEHqkHPh7Y
	 qVWpo/+FeQd65D9mrBfaH0ovaVfZnmBMlV7R83+foFH0jbexWjUX5LRmRF0Br1xmu+
	 X7/Zg/gQ9jAF4W/PTEjvRaRq/7Al3E5XV9MTdOCxXt5T999U1xRNbQofHyY7QhnuKe
	 LsmpRbKEwGS4+R5X9iAJQ7St/DpfhMmt1X1A/X27mRW+5mEymscRmByfOBhPvUodxS
	 JlC5VorE06y5xE7zHAs+lzbYS2Qowijck4fieFAts+D73ztZqDAtHTXmBv7rCNC2BI
	 HuNc7vdnGIsLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E1EC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 18:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037858278.4391.16850264891256092300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7ad1be2727d94b7cdc55971ce9cb05ed607f12a7863854ad8f7ee28c5e671a
Date: Sun, 07 Jul 2024 18:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720378582
