Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BE9259498
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759955394; cv=none; b=ppbNaBBp9YQo6ZTFS3nFEcbMQ0hhyk1l2FTnWLcR63kh5lFX4lTXvi91xPzg4WouWOMNYHL8Y2COezSBhE8aii7eK8GQES+mlqzSpZSa0CpAJzX2wlW8LZqWn5Xq2Ik3gny/XWqGozDym9ZVER9uHeJjd1RzMfhCll3fSvmjqZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759955394; c=relaxed/simple;
	bh=yiONzePwg4c8PZTD2+osuX380Jzpa2X/JhHfYRt9JXc=;
	h=To:Subject:From:Message-Id:Date; b=AUbsEN7Ex6on1qsSuMMacWp8+vTwqldG9o8pmViHorGH96O2HvfQCFoQrj7b2TXEPYKkznL/GZFjzFfwKrgAMMUnm8NYP8yM/HW2w2ccYGOARi5WphO0KJ+dr7O9ggb8a7GFaHy6UIO9MpbRRJUmmKeyZKvkOAaOVNTJWEKR9Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDBeTw3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDBeTw3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A9C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759955393;
	bh=yiONzePwg4c8PZTD2+osuX380Jzpa2X/JhHfYRt9JXc=;
	h=To:Subject:From:Date:From;
	b=PDBeTw3GrWCEaNK954NgNl91np+zsWlWrQU84Tb7qvH0KWmcgn4ViVuVaHbNYcFzN
	 UZW/xUA0dswqFqQx7z3htjY9etKGbZXeJe2jADu2LUz50OcR2NAkUueq3qawOflL/w
	 WDCSBKPBz1dZICrEgCudGU3McoTFcjpCK65xaUzC6y81O7aybzd1yWsGqLYvztlpWI
	 278Cyww8IvpXLbgRv27xsluLobrwBKoMYAsqaRgVj7HuVJUfDs+K/8UuT1zaQX5aT1
	 pCwEfgtnK5AzkH+kXuOzR2jHmGlbbjkEY5uZtjz969skAgDPlKLrUX/ML6Wj1Lr3ff
	 A/7pDpaTFxp4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E74CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995539357.27455.7586338697744278815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47437e430b7dd1a145d8bf464587542c3c032a0f21b3459d284f7656e4556d4
Date: Wed, 08 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759955393
