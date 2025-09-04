Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F2D260586
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756954794; cv=none; b=kkKBFguWKrVYx5mJUt8EAuliUQOVDiMSlrPpJZngq5hK8H0t8XurfTnzcDga3KTO8r/WhhhhjSq/F+u9VJ2TBeOQ6T9A1kxLh1WeZrW7CqgVYGLfNWn86r0Q/wsp6Q+mtUoO5W070czRX3rno5uVzLtfYY2M5dWp5SgIh7jhF8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756954794; c=relaxed/simple;
	bh=WpeRV/kEyTHYZRccD0qfkaU+fJ/Ol7Vj5IZFTUok+P4=;
	h=To:Subject:From:Message-Id:Date; b=KqItP3/jJfZn3qBG7AY8E8a0K6Q1yUIvXdA2Xtt8qShK0OzmM+MPS3ZZ+l9gUnS6Brd7y/iaXZVHuu7HgKFne+SMOgQM6QCgb3Y+60Moaq0OsYbVEs5qwquF7S5kd3IZdyKx79yc1hFf8toENIgR8A9WgQEzwzBxSeA4AWAlGBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZEI9jlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZEI9jlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5883C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756954793;
	bh=WpeRV/kEyTHYZRccD0qfkaU+fJ/Ol7Vj5IZFTUok+P4=;
	h=To:Subject:From:Date:From;
	b=PZEI9jlOI6wuaJFz1sBxbFAOdb86YN0/SzARKM0M0144wxZaIet2VONpVC/Cz/VpD
	 ic/cpxZX+PHB2qnIk+vU1cdsBytJLz4Vv3qfywQ5+JhQh2cgYJ+MO+6MmMP37RA1NC
	 i3UHVHK7ywN+WtM5VsOq4nfwKZa4wdqur+x+YVE3cxxxjmxBnA+EvKRdUQ1ked5j12
	 WWMRBqoBC8maJ7uNKru3+j/XT3TwdjXfLmwarW/Wp0mzFGfZtGW/SdM4+bimYNZdKl
	 JOivVzwEcmC8cToGFq4mmgP4Jr/thd3uDiHCmGW7y1dur8B652DUQPOJ36OzORrQNs
	 sIx9J7iPyxp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226ECA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695479358.30499.3674453173324613479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fb0bf3acb427d551d90c36acd08ff1d024fa97750c19fec2b0e61ca2a81e4b
Date: Thu, 04 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756954793
