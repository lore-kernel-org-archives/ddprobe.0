Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2929D78F3E
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761364194; cv=none; b=YHYplREd9vpSwNQ3Amjy/BRV9db/NlC/eGCiAtjr5cWdLSzvMA79V3urSF7NfY2aYVHT4KH6Lh6MQ/bWE9+HxcV2ur3vnRhtQbsni1ThgEWNBtYYp5frWpoNedepX8R7PJEVycP0Kbin4/m2jjC618Q4OIJMrHqgnte0itdwOzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761364194; c=relaxed/simple;
	bh=/CXaZz8M//14Y0NGBhjp44IwsxF21JntATrlKEp8G2o=;
	h=To:Subject:From:Message-Id:Date; b=e5mbHr2h5CumZnXUVGpJaTeG4CtyFIrKmSPtESAqnJm/bZmyPxmj1gQM+NIXxn9vzjHVb050vvwugTIB8sCqKtEdhO+rtEtsnUf8o0SnRUPsWGEkjqQ1Qb0vWRp4uT2Ogf6k/hmH+Z6p7Wj3f5AgX5jT0zcqGVupQ6XB7ufcn1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef5b05Kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef5b05Kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA50C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761364193;
	bh=/CXaZz8M//14Y0NGBhjp44IwsxF21JntATrlKEp8G2o=;
	h=To:Subject:From:Date:From;
	b=ef5b05Kna+ZlL9MwTVRLz1d97dRigX6JTgKgs5MY3Y0Kvw9pTIQCGzzEm3y+RyGAW
	 si0vHpkm6ETwiW7zfwLy2zqBaydX+0Isin8RngFsA7I8caR5kyQlT9rWcXQrJmm3pn
	 wUKHkbsC0hBYllbAsaLHpnVKV8CyGGlsnwIIaAZlhbJjBtIHC/SJ54y0n3Tixq136J
	 VAUsdsXwOaSNO/rkMOl3cLcLosrcOznNV6bxXjtRtjwTkA5OyYlNFczHwacHW4VA4d
	 EiZLAEUnAFjzbVqATgOEIj77KlS4TuAqagdZRVfZGmx8miG1xbc6758n+IZw2PAZdo
	 1usqhPWDTqmqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95215CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136419357.26737.2721862001945629893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16765ec57fa484717e0193ffb2d83a1cd5acfd340873e18c8c1efb04d559e161
Date: Sat, 25 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761364193
