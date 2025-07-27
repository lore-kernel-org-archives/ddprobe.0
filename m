Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C1D217648
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753635594; cv=none; b=MmoeJnjIvH9dMMTo2f68SDf+IpAksCQ88hKZfc1TBTiKTRvsaf8geE2Zv9zewPmqzTDGe2qKRQJM9GW5a7hXQRyq7baKkfIoABbMT2vXx4n05waga2RlwIQ4UOlP6VjgvFU+foglw1t3OuGcHqiubTZv5qjAULWfqLp/NSAqU10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753635594; c=relaxed/simple;
	bh=n8bhtH+Ha15CpQKI5BJIZoAp40WKtv3z8VPMnnYJaPM=;
	h=To:Subject:From:Message-Id:Date; b=dV5B3zeoy+hgN+h1w6QA89kE6yw73BxnVRLAP37ZyoD2356UPco9xJB/4eXqeS1IsjXDvPjDrCIT8STn2/b8p8oRr83cRzrvO7bh96zAjOcdLt1tVu/kMdDZRJZyhO4eMVbX8Bf3olKV4/CMCiSJAi/SeTWUP0xTFrBFsx+/I1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuqGp/vT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuqGp/vT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00FBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753635593;
	bh=n8bhtH+Ha15CpQKI5BJIZoAp40WKtv3z8VPMnnYJaPM=;
	h=To:Subject:From:Date:From;
	b=AuqGp/vTOS2hUFsFB8e+HiseNOmnbScfQ/rJbs3fSkBsEqPjEDWPHMsZME/p6RYxR
	 Yzm9Cn9HcdoHxnWihZmO7ApwJpr68a+t1JNkJZrMbEPfA3W2JyauvZCc/WflRA0/Fd
	 x1N06MeuhPmaKXOOLUDG4bHiafGqUHndDzBce4yInt8bdYqF/2lnQK+R5KTQJDF0f3
	 OTjU6I/80R3OtjA3qLDmVUdTWm7GsVsI6bL51AfCUYU1R6BRTCt+bbTNKSPdeF+Oy9
	 La+Fjvbu5uGPuXEaVDtorv5T+Lo6xScRrdDBepzDkgaoISymWfwv7DFhRK91h6JeUp
	 616qZQc+RR3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE01C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363559357.23618.14640100912313667367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b1dfb366ac20a619db7df3171654d47f03419c79441470d2f95682b3a06490
Date: Sun, 27 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753635593
