Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9402F7462
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761163194; cv=none; b=mX5s/8xcUB7Ouqx+JML8wtLat9G6K7qUMUae7EgAnoLHk/mw+XAsIPA0Arsdb0M7A1k2Hm9KegDboO3nBtOxn1PxqNAupDgpDNeU2YXfducLeEu1C+z5YAVSkjoKjvUoNi8duuO+Kgr6+LreD4XaO7DeU1y3aN2azskuygauhZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761163194; c=relaxed/simple;
	bh=uggEswmYj5rW0jgF2TGUO+On1jHLz9YoRJlPiQjVPcw=;
	h=To:Subject:From:Message-Id:Date; b=S8KK6ETXv6UJorFRFy2ex7RCqMcNfHB6ea3N9QTYHvGvf0C3o66ZGU+nvcREcTsjiD2tsc3d79juw/Y39LoFGccdh+CvmmYk1aMGx+uA+/sm3vCj5FqvSADIzrngRV0TOBvn/Xj8nBDgwcq85veGGTdbcwtVHo3I33wDug9FCQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FufW7Fak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FufW7Fak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A097BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761163193;
	bh=uggEswmYj5rW0jgF2TGUO+On1jHLz9YoRJlPiQjVPcw=;
	h=To:Subject:From:Date:From;
	b=FufW7Fak0nNxw1uVzOq3yGXyQOvXMPKlrMDxxCBgHH8FNC3lPsGHzgaIRYPbdyNqx
	 oyaSR476modAAcj6PEPkO47q/fgWljCt0XGuGQpOpSX2XtnmYS7PpArOreqcuRB3bF
	 58eQUC0SZDTFbbKDAC8HCc6cv2hYiZEUY1hJL2LVYCLvSBAIyZ2H0/VfrXiAXDtqhw
	 puGN3tSRoUjIIQq4mWOPlCkEE0RiBaHo67kuLvxA9aQWThiue2O3/ZHLSMtD/QQXvQ
	 i1VDX5UqAHzLo9RqGZbhWudWVe65rcN/5OoKUIkhoQq9PKRB57XUhgIKR61Ef/mv+5
	 cSHnYC2EqfHFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F746CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116319357.10112.611925536126169378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe91e4013e3f4555c47fe0db5f2d33d555681e53416dd3bb85c861031788d6d
Date: Wed, 22 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761163193
