Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E5821C173
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752900594; cv=none; b=CKeJ1VKvEzAxbcYmL49vACj9wjbKMRRjbbbaGQNGH4zDTolyX/YLLp5GoqBM8wxsKBr53VnS9K/cKdcTL8V0XBqS9U0tnwQhI3NVr1yEr2AtpPQFGFl5ZyJ8Y5jz2Z317O5dNmj2gH+dvyJURHPRZCsq29Z7voBkfcAoDL6IU0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752900594; c=relaxed/simple;
	bh=nvZQ7PgKGDHnqqi1UmkmsQ6l/oR15fOkAWzrVegRFLA=;
	h=To:Subject:From:Message-Id:Date; b=CJMCPetB0Ti/HLCBzhQdZFfvhbFevoyhYbeCxl8iQZWrrexJMsQUOo9EeCGTOxkzz36ssXFIlxvCd07WmHIKNQnzq/h9SiRlhvBJmbPMndd2w+asixtqE+BxLl4BcEAc2pO7QwnWhv5EELVGLgIthwBLl4XMMhMnXh+QsN+UCl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/yud76C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/yud76C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752900593;
	bh=nvZQ7PgKGDHnqqi1UmkmsQ6l/oR15fOkAWzrVegRFLA=;
	h=To:Subject:From:Date:From;
	b=L/yud76CE1s1fCH8DoBsn8OHfUxJIW5FShszD1HGjuZbxb0V5tKv1BULyrdi4KOQy
	 1fcra+PHOYIIFzSqVUS/L8SkMUxSgCiIfLVR19VuAv7NkWPGw7cY1LLv70bozaoNZS
	 VJob4HpP2XvGoqZlWmR/Az0T0dz4Dhh/F4FuBxeJQH/8vRycYyg9VjmpGpWYLs9UaJ
	 ScWUfJoaVfJUQGdi8SfqhgsmZWSR5JPowU4rT/LZaFyyFGZi7Vm23Y7xbY9oHZSlya
	 SjaqYLQKoxUFV8dl0Gp3yem2Y58BRKttdyIyu8hvOBRrNIcK1S2Lw28/MBJD1oZkcD
	 mJvofSEh7LIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578DC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290059358.20029.6343709501201006182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28a1fb6522ce3f5475860f65c0be5c21f3d7a555e5b481e8372055425486690
Date: Sat, 19 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752900593
