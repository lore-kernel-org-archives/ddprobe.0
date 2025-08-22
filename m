Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADEA2FF161
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755868794; cv=none; b=ARpLOIoNSrYRKM9vwT4txz8gKoDzgl9rFZkDMloDELReaHIPpBQEK+lKDwYIJ8ecJeES/sSnk0c7Do+KdplF2u3U3C8vE3xjldreEBcdaGZVmQjhUx4W+Oh1NaZmqdFrFCn5IzaORr855aN2qigmzUtjfIaTVENUN589gu/TFHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755868794; c=relaxed/simple;
	bh=RXuaBJFSEArjSLJ12EPllwqJ903TVhx1DhaQ9NsSKvE=;
	h=To:Subject:From:Message-Id:Date; b=FIFg2HQh8wUEKkTnnI0XRhw7gI09jfeX/YmHt3KPTGvIIOQ48bfhojL5uv8j4jqim78vlv4riDMktPEa7y+DRiHbGC71/LQ9LEw95c+bg4mUa0599ijndfYvJ7APWn6yzceqhVZ7ymHrOls9CZsBNZhOVEnNMzY6EnLEdNkSF/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouLgBKa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouLgBKa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C6C113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755868793;
	bh=RXuaBJFSEArjSLJ12EPllwqJ903TVhx1DhaQ9NsSKvE=;
	h=To:Subject:From:Date:From;
	b=ouLgBKa2sWDkqdV6V8SddqXCnU59FA5dUj9A9uhGJD0Lkrhn78pcerQIBfDv3jgeC
	 TtNrHc/m25AtsEZp8rO0HbH6C//4DhpBtpEtmabLikpJdxS49DWwuAP0RSsTey2BGI
	 dsiMOdH8L0BLKZf7utuqE7zEIFNwZ6lfTXfr+5x3oEkDZ53Ta8B33GGGT+gCrjYGvU
	 /inXjeihLkGZ4UUE8XsS8g1Z3HQdR1GtqYlhb1/lF6itlrYqy4lF7XsfmOgI5d2Wew
	 B0xP/rGxlZgMQNwfygWgfYe5J25/AqhziHPCCN7fqOM30kwsYOVFVIredpR4RSSB+M
	 aI3BLCC2xJ2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992EECA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586879361.7778.10204145015497667429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8396d0f4f6f936a32542c7e2da570a55d587a37e436b9515c56df8e6ed0b6661
Date: Fri, 22 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755868793
