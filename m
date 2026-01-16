Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC22520C00C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768536833; cv=none; b=tVEOwVn2deUK8e2nLuE9h6d3H7Xbw/SjecAHhHQReCEnDI7CUNplw/fKX2MUQ3h1xriCeCcdOpFCZjBqkSJYvT7Dbvf/FC08O9jtEnMPM8ygoIsSA2gaJ1SoZfYjUSWp+aj41xM+A6NXuT2J3GxA3F7Ov0/sg1RN3reSdCeanG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768536833; c=relaxed/simple;
	bh=C2JlZ/EJyu78KbHUj/9cNiwSSEpdVjNqSENOBNnOqc8=;
	h=To:Subject:From:Message-Id:Date; b=mnt9bka6TZGIlszdfLqWdfvrZ/HkWDcYY3dzYx6hgCPkd66u5Fgo2ArqNS/pUljjPQSJydJ5yUjfOiUtufyyC3/ifEWmE5jSkzUvKIcbquWOnQGRoMqyX0LBWR7QNiLp94l1I2t9sU9ULr1V+zL7xsGDKFV0lf9oyN9oK6g4vjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuIqm9mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuIqm9mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C14C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768536833;
	bh=C2JlZ/EJyu78KbHUj/9cNiwSSEpdVjNqSENOBNnOqc8=;
	h=To:Subject:From:Date:From;
	b=HuIqm9mj0Fp7rU85SS6xvRYd7wcRQwSBi2BVT9yhUi+VRm88nD/eh9ll+ylQhQcAt
	 fam71DepHmLbGpL2oQ4K9Ch9ta932bGCzYyiaNpjd8YrC5292kItW9Yrsaz1GgxyMq
	 ZvDde4QhZTWnldTBr+cO4OX89AP3s6k40I2Im4ZqZ1rAM2nQI+JLwgzw21PMFggrKB
	 4fz26WONtsMay5KkMfTYLa4wspyKnKVn6PGEtjecClOkbBLRDLegPIWITM9ClL73Pr
	 M63KZ6lmgvbUTRZu1ajSESkK8Ta8vbebt2HEWYKjtMWLWpB0CHpidg0aEVPTKabV43
	 puLXQYQ2NWEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9307DD4A5F9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853683358.21536.5318062894430788217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922b5393d07963ac24b22c7a344a9104c1d66ac31308955615388b11bb3cc8da
Date: Fri, 16 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768536833
