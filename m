Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19723A990
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741364334; cv=none; b=uEpV2aHpOfKNiiJTyv8G+RN1RevAEz5ZLyEazpLyI3ulp5eqyPhygW09VWdnC9zk4zhoDKEYdpiA9FG2JWD1NhBENUiM7wVrz0k+jdcvlFzl+ik031uULhRB6NgjNyMvJHNKf1N/At8TTsp6DoA/EESH5eKadwWLZH+UM8Z2KjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741364334; c=relaxed/simple;
	bh=+Qate/dyoyqp/L0uzgTpx+ClwWwhfs+LS89qojLO1mA=;
	h=To:Subject:From:Message-Id:Date; b=HtOQIAtDwN5S7ekRi2teE8IlJkWdGSuyZXDPrOIw0P+iyDLs7VlMpmRqRNkn6fyCO1Wgj3UGkfl/VAfjsqFvQUotp23tND3K1vdX0eXdtcZSGQ3aU4xm1w6QtfIKcQCohhvg5jONWWxhcL5DJ7UqZZknsugCV9vw9QQ3jcwHv0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh54zbvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh54zbvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F405C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741364333;
	bh=+Qate/dyoyqp/L0uzgTpx+ClwWwhfs+LS89qojLO1mA=;
	h=To:Subject:From:Date:From;
	b=Mh54zbvHW8EnlVifoBbuSF0ieiD/1EDI4vpr2CFEEMRI87ckkidHpFPf0Z+gFXwPt
	 xxXwCDEJnUVP6c8pGLBhRyYblf/dr+UNP961Zi7koGQ6G9Ax9DwVk2uKauJ4c+8V0r
	 rFATGefBnptITB6cUsB9K6bamqzaPbPQuJhV82eSmwha8B3hgiUq7kMGFSLqJ6ac2j
	 e+BBy1p+Ca2cR2gdeyXLFlG2bmQXiDa9tW6d84x6fDm5LOzZHOWzZmlkADOVu7sRsA
	 MtQAr95z0+9hh7Ecri7s7W1HNvjUAjB4wHdbC2K0/gRZrHOTZWYMvOCvPBqhBygDgO
	 u1pZ8TwV28JgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905AEC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136433357.32265.225871314738215680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7bc62c45f60813525d602a63c5d0e8caa64ceda45bb928c48f8d4432eb2d01
Date: Fri, 07 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741364333
