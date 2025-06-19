Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FB21CBEB9
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750303194; cv=none; b=tR6PbJGWsrbnkXZPaMzABuPXceE8DMkoxBBTth1INVhpAC3qC8auum6BriP6jGratjApmvFnz0ruTlnjPM9s/pw7AO+UX47LJgd09nsLLZPWTbGXvFIBZx4zbRf7lqjlKY49eV8d5I/OrQnyLpvMA4M5bxsngKkWsnsR7XVdkwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750303194; c=relaxed/simple;
	bh=XO3d7jfOXGQFy0bGg7/7zNx7/PbVIo8rMDMGCYmpiB4=;
	h=To:Subject:From:Message-Id:Date; b=VZo55AvFmNcPcIKWXwqxNjGORQc2WJOrAZNAcQ6KBRt71C2PESBRYUC1iZO65+yFAgW4VHUfgBo2GD9vBCgH/Mky2u5NxVgBbXc+NN+4EfuHMGZpb4EBRmvXvXijOOv7C4Kvf3XkToWIfCSbl+wNemwUXKue8ysZlFy84uCTCok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKV5EsQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKV5EsQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A548FC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750303193;
	bh=XO3d7jfOXGQFy0bGg7/7zNx7/PbVIo8rMDMGCYmpiB4=;
	h=To:Subject:From:Date:From;
	b=DKV5EsQP9KI86oOIcbeZLn9yI0eSYDm+ZgQUAduuewbMmDwJbTslIFRBdxUOuIGOl
	 bIU+4x22h1XPjlKdWxAdbpLehNoQLnTafqzjwOXs11Uygp6CXEVQzPQ3/WZQZlXQsR
	 MjBFhSr5Z9hE5EKWahAMbNhcUxMrXqIYTLGB+7SuhBFL0PbIobSrI7QD+ofpkvJ22V
	 0ZNaXokuw5jTG70uyR2BVQUbJ+nNOX6bXiyAB9sq0ruQ+fqqM4qpIRXqQOanq9xmRb
	 XwsWr6z2+Rowtp+mD7LfKO0n/CEF2MqUNFXw4z8mpVzgy3E1o87pp/7jqsIz4r0cFP
	 vMan7SK9lS2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC39C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030319358.5566.17221816185256433422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08158e79c06bd76de1e49aa7ecc662d51befae5adb29f9f8a0f32d5ba087dd8
Date: Thu, 19 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750303193
