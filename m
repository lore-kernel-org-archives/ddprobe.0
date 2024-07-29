Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2274D1E519
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722222954; cv=none; b=FbW+o9aLF7oqXNHLNC3Vxop6duob1RtLJmCqJYagvthz7uHgH4b9WRzNXFWcgE9p6RiL8FiRTnsEpkV/aXDtkblZuOt0nArlnq+8+u1dk5x1SOwkbYJ6086ePssb9hbEAXHDqHPAQQbR3pIY8iMgygb4cE+GJfh4RZITbyUUf9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722222954; c=relaxed/simple;
	bh=HhOS6q1nqMtrzQvnoinXyPPNomcuHNPRLQ2NFqdnOo0=;
	h=To:Subject:From:Message-Id:Date; b=t43h1DsVRPpUIYzAlOmKDFuFV1Sidv6TZ4DOegZVjH8yTid/Z8K0eYPScjVBCDL/TSYgRKy8d4R52CzaU1ljS4njIkGmdLSxjL7COoAmXZk8YgJzPW8Kz7l1z8D/o6EbYn6+QX6l+DIV1FyhPSlhUOS4xz6swuweWxMHcUC/sKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0V7ZARx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0V7ZARx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA559C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722222953;
	bh=HhOS6q1nqMtrzQvnoinXyPPNomcuHNPRLQ2NFqdnOo0=;
	h=To:Subject:From:Date:From;
	b=o0V7ZARxGYNWzCziceMXAgG9oipBvhSPoo4pjYwxJEDEONOnfre+AsUjkQ8u5VRUL
	 sdafj2KbGoT++/nCSxmCSVgD8INzaK0tV91LnbsIiGAqN2806j3vjbanzg/6FnCK+/
	 h3KEXk5FrVcRmASmPbD887YSe9nrXF+VuYlYttxKF55gqaafP64UO79xpacYZgVFQp
	 b9YwAARdc29Q0ve2tZ/zoEqjXF4cDD1th9FEGrk/dr0H4jiNtKDHZrYlK1J2Xd3FaC
	 GrvG7ns0+ILKHn6y3QHccz56Kh0LtlhW7UkPaItW9dpzcIareSp0dJ343vlywXXZvZ
	 nvk/33qVIuQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1DC3DA49
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222295360.29813.13394691390995644067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb74759f0b9d959f1aad37ebd1edcdefd993314e5a87902f761503e7ae313174
Date: Mon, 29 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722222953
