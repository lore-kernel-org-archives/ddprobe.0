Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC65254B03
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765230174; cv=none; b=KW/IKt9Oqa+KIRN4xA2Rp5R86JO0wPeQC8jf2e1f4OEvyrnnkgeZcsJqTrC01IuITXm/BfbGoZDH0b/R1klLKXJD6SjQzr0zDkjjYjP0obpMMMS+q5zg5BmCYSpztr/aD6s/ztdNliaR5EcES8qVA5suhvWKEl0Kt3ArR92LwtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765230174; c=relaxed/simple;
	bh=Z+MAv7x7r2ckctqBonsORaASbLkON/joYzhO1ZDdBIw=;
	h=To:Subject:From:Message-Id:Date; b=dewox/esNVS3EvVSjbrFe6qGmyczlHyk8OCnttButOOsYhIitnmxl3ucTLtQTVTSUjZg3fa7OLT+c2/AG8ZjMNUlVyejFXuTG7mqcVxv0wWH2w6gH/vyK+MgXMyBfLdVsIsqtqozHfHXj8JRQPABBYcosK7SV5FnOtGQTf4TQMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4LCOu9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4LCOu9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0969C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765230173;
	bh=Z+MAv7x7r2ckctqBonsORaASbLkON/joYzhO1ZDdBIw=;
	h=To:Subject:From:Date:From;
	b=W4LCOu9ztxa657JyDcOTBUj8B2AYipY/RuSWVU10Eo2TjPgALMM1wWwCTtPGDGelG
	 ZSOKBC2rWlSAVzhPyEl2UA3qf1P+BiMTuoUkru+x0h6pvAaH22Y1Oa+y4XoEx9wG0g
	 IfEz5p2HvE3GLqJH0mX4oeV5aVkwwZVFHRS9xnlbdxs4nZQVDCGDIhN2HXQ+bjGSch
	 hCcjLh+IQ7rLzw8fhBzqO97mfycMeh1f7v78XdZS4eS++GC+EefXHUxtrVJkCWohS1
	 OwMaV8G2ItuiMve/4/rOpU9TCW7+2OOvOO2Q8kIYZN9vxuzuj569m2fKy8uEP3Rdcv
	 Mv8cA8r4KrpAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E9D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523017359.19703.15565189062010905722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aeb59efd76001b59ea3aef307c95eda98cd016981e04775bcc958f53420d620
Date: Mon, 08 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765230173
