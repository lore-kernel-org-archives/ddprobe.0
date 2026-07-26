Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42108175A60
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785082234; cv=none; b=qaYjYCT/b62EPLy056Q2UJ6bHmdsSip93U6QGtpFaCR6EtpFgUcw0FCgPtoLQNfB8uDqJDFoTmzgWa5Fmd+ZZAnx/xl48Lf8yVLqg4a+GZSnBBbdYIIluLYC5foN3ViPshkuTjvYeI5GDk25Z4kUYeGn8Tt1orRLFCdlnlf5Uyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785082234; c=relaxed/simple;
	bh=Vc8kNnYQ7gpP2basUfMdpkyUJQZbY1ISEUYpeoDk1rU=;
	h=To:Subject:From:Message-Id:Date; b=H7YC6vtnHRUOKnoIsYkf3U3wlRIKLjv3FBYwG4HjcDvxW3KYmkiuNrhx2usB205eyhdx8XVddSXsa/ZGkzrMOBXgP/WHsT5K3a2/gzuzWL5pSnKceTKpvWBeGB0q+xBn1cQgfbhbq/bzT85LHIKDFqo7wP2lpVrnJSYnOm77Yc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBppIXNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBppIXNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0F0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785082233;
	bh=Vc8kNnYQ7gpP2basUfMdpkyUJQZbY1ISEUYpeoDk1rU=;
	h=To:Subject:From:Date:From;
	b=pBppIXNA9ZP6ZJ3Tsw649eD/CFcIi8mvw0gt7nERz27TWjscGdfEfGSAr/7nJx181
	 tWQxmIKT4+wS98oQHm86w6c5KmXuxrosb9RpjkDHhSAYYBJ7587/quHlw17suTFRER
	 un9X2vw5nI0uy+RfRN4OSVBDuM/Np7o3ACpiJZNzWSRPE/rxYCJM/hzUw1Sq+2bypO
	 N3ObBJerPFnMnNu1Jj0RG9b31GMlHs2/ClxetqEzbNWUgm0oaMojGwRrXppHM/1/Rw
	 qTptl7RankVOWhD4qIuPeH93zRSH4QNvm+vzwa1XzWNVcedTmGDIdo873N7PaDMF8A
	 cG2qlQeYZlNeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A80C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508223368.29220.6530175393358679690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006372dd3d2762d08934f6c881f03f0e8557c5b6d60b8f01241c61db35a3ae75
Date: Sun, 26 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785082233
