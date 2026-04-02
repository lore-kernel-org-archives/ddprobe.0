Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9BF35F8C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775108734; cv=none; b=RnKAFaEUAyNDFkDufoHGUD3QU/RZbQiOTvdxiOLwaQ+eH7z3wnbuf0fx1fZz7svrXcL3t/IXq0adr7g1thIx5PnmVz7c2nSulu/oxE1dyMKjra8NcL4A4Cq4NwrH4zpaf7YTS4cIKG6kf12fzoEZuy60oWdp2UYmGyIfns9/XGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775108734; c=relaxed/simple;
	bh=AY/6dD4nN53DVHn1XqcmkhgFp0zEVZf8k6LtKz7Pkt0=;
	h=To:Subject:From:Message-Id:Date; b=L6oH2gJUOiLSnVptBlCuJo+WGNaL+UuyDW71nL/CUGIiiY3GiJeBKtB3oZjG+f+42P2o162RiZ+Iw6Sf7jj3slKZDkHHOZawH/i4M59gaD7PD3fe5R96NbbC5MrsAMZfSHu0wiNrAfA+IkWzc/NgJtqeKLOqXNlUmTX/5EOLG/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMwT+4f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMwT+4f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A65C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775108733;
	bh=AY/6dD4nN53DVHn1XqcmkhgFp0zEVZf8k6LtKz7Pkt0=;
	h=To:Subject:From:Date:From;
	b=bMwT+4f7RiIh9icX5Jyvqrc/ogr/+jTG4tBAnAlXZ6C87gmk+X7yTyKUp91ZU7VWz
	 leVgCfbFbvcRhxVGCtZWYuF9O17bxfN/zLc3ZKennbTharlXpGiNYFwz1r8v8SBu2F
	 dcO0UvPJ+xLAa5N+D/reNP3RgLmZKTwZmRy4hmz+XGDuEgBAYI5od/QE/NpGVsD8Kn
	 gzbEekhUtxP0uzM9f3Als7OijFR5LAwbboSuVSIBZ7ThCF/XfP13eFYEWf2NEFa0gf
	 YeLBo/XCPdgUbmqhcfqpxBOfo+aENLkFlVfvSqdWaCrZQju4UpawEQILPCwIjoXh9z
	 6eISxyywqC5OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D76CC6B03
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510873369.21025.1587977211234214486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8b8799d05422d2c4b5817b17eeb4be8a03c34d64a4b6243277042f3eab73df
Date: Thu, 02 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775108733
