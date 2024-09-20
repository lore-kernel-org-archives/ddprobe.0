Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307988BE7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726793154; cv=none; b=p0TNNMq17NQeqn4/1WjI1SZia1EVJ7kqlP8siEHCCn00kRpx/dAZk1sxk7mUdDMZk0nQ7h8dWSnERGm0zw4X+zoesJNrzENZPYn29uMjlDOz1ND7pid/8dkcBItkNA2mbb3wQpNWOMKED8086PcuHqCTmy7vp1t3flhjMaYq8vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726793154; c=relaxed/simple;
	bh=ovCXFfKw4n6qa3np4H3gqtOzdWyhLElSduo98EZz5nw=;
	h=To:Subject:From:Message-Id:Date; b=qRvEUYwg51sLT9il+5QTzq+63xnOJjvFvZzQgWvANFnrO0kxqTqOU6AM6CtHZHfEwjsM2pJaorJAvnaigeKxaJGlsc757wrPBs1g4va3Rxx2UtltsW8tL6z4tdPi9EJla27+SBdkMEAewTAm1KJH5n34ElYk4LDMknX09PNJiVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RysoPgNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RysoPgNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD61C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726793153;
	bh=ovCXFfKw4n6qa3np4H3gqtOzdWyhLElSduo98EZz5nw=;
	h=To:Subject:From:Date:From;
	b=RysoPgNONuPScEv3bNX/tsk3WAj721vtScdjbvFW5d/Qsnp3oJ2zootPaenINSCL+
	 tdGoGy7MVIAocMHNmRcOa3Qw39yDa1Tr99enNGYs3elV+6gYHVeYKmd0BvX8ELOsjh
	 6qKoSTZWUP/eQ4ULZaXDpfwZKrcmpjHlksperFmmEb2DHXcGJVNSv6e+/Sh59EAf+p
	 aH4A8U+7p2wV2t/EJoIrdPQCl6ojq9/TIOty2cCuKf8oATEBppTrc+5lrRBli2HHLp
	 G27g5R22pXJPGCospAw1Q62OizZ66A6Qe/LyDj42bSlZLXotL+3nboBdIXsz1iPzXg
	 oBnJ9RKtlSqWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A67ACF397D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679315359.9049.15622860620773411538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055922fe4f03240bc083ec4aab964f2cad0f2855eb1e4450b299763a884e5c74
Date: Fri, 20 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726793153
