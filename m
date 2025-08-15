Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D029202987
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755295195; cv=none; b=JD1dr4rrPGgr/ay1/V6R3t4hVZQLlhlomKdKIBIiiFLvZAuwFVWSNHyRjDXaw0xtTJY5hzdwlv5GW1LZKuGRcn5RHNMG8b4qumnZUOnjTn3k2uC5+6Kiyp+AtGAeUIPxVEhsOrpuuHHrR4vc4/Nj8zSoQNQA3M7eBIaOFF0nUaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755295195; c=relaxed/simple;
	bh=cXi9vfjZJ1b9hThiFTJpi6zUdYc7lK/+fYYOp/dXFBY=;
	h=To:Subject:From:Message-Id:Date; b=T1hb6kmPPrItfasAm746uJKjnQZotgzFrAoOxo7p6zirVbuzdngrA1EYvINWKX9rwO1hNIRChjLgsIraL8xGdEWQlXf4CucXuP56nE21F9LBhUjZ6swqrpXJwbqCvNXmD09IbLY9d/y0TzG7QNLHh3fmEBEDudrWyIUqty3EJN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGQ+3Izn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGQ+3Izn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755295193;
	bh=cXi9vfjZJ1b9hThiFTJpi6zUdYc7lK/+fYYOp/dXFBY=;
	h=To:Subject:From:Date:From;
	b=IGQ+3IznfDuNd3DPsjwVCr3T4Xe95VemE3wdFMcuLPziT4GaLmhX/G3SersmgK61s
	 3lfalGt1wq65bCTDVYCIlll6dW7RtJE4l9yELVn2J2+xuW1qADSORUP6fsV1N8WvZW
	 V4SaWTuo0I/fxMj9o6hQkJQejOJ3b7G43P3aBN1eyP65lM5smtfEe30L28V8zGE+um
	 S7vacMRAC4cDb6jeQhMZIfrI8W+kKfB1k1ik4WeeNqY0lVYlN4xVXycVgxd15r9npB
	 Iy3L8ua47GYAvuOXiHLihQ+wXO9qP6Q+FS14w2g3chO+Yu+nQlGXostoA7nUnLb0M/
	 XEkuM9suMayWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF47CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529519357.32489.11558754302802917410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f966a80a8924c711afaea0a5c439a2851435ccbd896e1db17b6c1337878ec994
Date: Fri, 15 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755295193
