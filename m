Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113B734FF7E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749394; cv=none; b=Y/7RobxB7giMotysAiffvQKmY07SjBSFD44zC4n6MvAX8fUgRC5Unz01FJp3JKOS6GMDRjT3BYuRC+Cx6ifRRZV7s46Q0ZiHrrHNQKbba9KrbGbqD/KZYyPdIVwX0CP/JpFOzstiyq/JGIOOz52G6K5ciEm+0xYzKhu2BRlD6DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749394; c=relaxed/simple;
	bh=o06DBDwUEXgkLlKcMLAkGeJaa2IDokS1ZeVKwfbY/eA=;
	h=To:Subject:From:Message-Id:Date; b=F0iuXuQX4QD++aq6zF62v3SabNz3pdk4P1Rkngmqc++opUB74Jxls9VACqjViyETXrFxFj+9bkkwYyE3WLOEIMnasQ3gtFzUPBSmAFdwKP+TJnG7GRRLbPuev915J5a3E0fjChtKdtypjrgK0FYaBgo7ChUWdkvdZvXSW35BFAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOHI1Lc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOHI1Lc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD4C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761749393;
	bh=o06DBDwUEXgkLlKcMLAkGeJaa2IDokS1ZeVKwfbY/eA=;
	h=To:Subject:From:Date:From;
	b=qOHI1Lc3M1FSElT7Sn1uzAp+O0PUkFOPZvD0RmnrzaBUOJEaMaKcERvabnLss1x7K
	 lVWSw8DwEB+5i6+wDGfY2niIZFEFPC/A98bJ9tgV8TfFDYmb5wGFkiSlarq30Fbn56
	 jz71nKDI4vi9s67ZQxKHtdZbtVBaq3G0Ib1KiqQc5lFqLyiKX4j3e1t4kIxMUm56oE
	 2z7SWFGXiwcE8fsAqOWeM3anOQMZM8Z1L9FTEzYlixG+Fav42vUgvUZ+8187tkHP36
	 BvbbIRSJxPXCbc3+LUvspXsuoNq7MeVCrGWWooiWWFxAXM4Rz508hJUQv2Vdg9+tz5
	 +N3e2g78XO4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91288CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174939358.23204.12736636988312929129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee75f171df36f145af3612bcc0435f4ca616425cb047eb99f2b738a5fe85e833
Date: Wed, 29 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761749393
