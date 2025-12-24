Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436B286D73
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766559234; cv=none; b=TO6Gm1YPFdrPZohn5R+Ez17S1/R9vg7tInpWjMu8ExaSQ4nTU9Lm+S4cV/lVo78QaOuEIKtMbMZ9yN/i+dmTRF1ER7EopkofvDTQE13Sz5uZQlaLQsT0Rm9UMLWjMGGTNpPFSfrn2oA1s42USj9yITT0vQrP41DEHCsY3cbQ3+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766559234; c=relaxed/simple;
	bh=lI/PFvTvu4C+6RcUlH0h1k3tMU+xtu0cEmqN7Gl2Kbk=;
	h=To:Subject:From:Message-Id:Date; b=qfHYTdr0EWYg6ac0rD8AOnzWNp7RwjYNZ/Eqs0T+9D4POBcN9qjIGVK0S5AGx0eZZ/OsF0vqZkMzzJEVp3ojc600spMMUCQUMM2nijd4ryYGg/9LhaSQXX5WSAWd624/4ljtcR1hV9cLi2OknEuhS+syaeiXK3gMP/uHBheAatA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBVoyN8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBVoyN8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A98C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766559233;
	bh=lI/PFvTvu4C+6RcUlH0h1k3tMU+xtu0cEmqN7Gl2Kbk=;
	h=To:Subject:From:Date:From;
	b=fBVoyN8QOZHQYwMCANr1z3OgvGtFRGJcYKGAp/0DGQBL987/FTAs/8kzlV9lKQ+9t
	 5qnM5Xeb54rviysA2hbCs3Mkx0paqi23O57LitYPE4lRV/x1oc3LNedcIec1wscMSL
	 zBkOgoArl3i2YE1ELSt7jRoruKYlgE5UaL7vv8y2vxHjJ3uusgZx4lPig4LqZbXBmO
	 KF/mebbB1WCLvAEgs/V6Np8HZDNJTHvgL+1ouVmSHmTc+WbwvQGwNFIcQ8lgwaxMik
	 ut3HOifyyXPpq0mwfWCVVtxKZDthWzYXicJCtLjF5x0U/q+A83aS9GONwB/k6bdy6x
	 Myo+9tW8C1J9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AAFE74ADE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655923357.14220.4888313429958151705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f1be0564091cf0dc605e234f0896d8e351e08abe880b0c10e4c0b0ace64cb7
Date: Wed, 24 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766559233
