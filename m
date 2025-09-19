Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AE2261B6D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758295194; cv=none; b=PJsMzcG7Op3yimPTOqjLRPPR2u+JnQE3XNvLZaPLWzI2wKIcPXJkDxQyoyP2UObZ0+d9p0WpL7hnoWGJklsXFZUc02w6d3SrANyI7m2YqMd6a9u31xEJpNbWT0DJNVQfqwbRccSs5h4UlRsCB8s7LqLIGy/N1UN/xB8coNreDgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758295194; c=relaxed/simple;
	bh=DcyKpBPgMjkDu7ccHa5IhjHR2Wy3rKbtFfB9pLq5rIc=;
	h=To:Subject:From:Message-Id:Date; b=kXc+mKuHqFK/N+WNT3WewExZAh8yErk6iD0cBsm8NmBnWBWoh6KsfELAr+8zZpXQoMyfJoOtn92GsF1HyEXZfvZKKn17eRkSEzgxMi1IoPm/vJVyPErwdypjRFb1nrnSXyBZfjqpIIltgPetB03+1KMLRpncQ7/xOzXjAKNwxQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/CmpubU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/CmpubU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4080C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758295193;
	bh=DcyKpBPgMjkDu7ccHa5IhjHR2Wy3rKbtFfB9pLq5rIc=;
	h=To:Subject:From:Date:From;
	b=C/CmpubU2PFY2pLn7LNDYLSs9sVKf/jBnsgNM3laGEAbLuR7zORadjPIjTyhALngj
	 K3zdDrTQLbNXoOHmIoYNzcaNBNIqRhc5kmkF0wsNNlBLXpWkwc9Qpg4jJrJglUPDJT
	 K8CqaoPTARkHQYcbtEjr0DbjOgvZMBrCJskFahX4+SExIBAg/9NtEXR9yFWanddwyr
	 mCCnIg/jWDx+VZTywGaHT007pdgHRCevfSlap+SiMZdURPPPcgYLRuFL9K+5VfYPBt
	 Hwij82l+WM6lhtKpzB7k7KCHvoxUGQhL7yij4kU5l7WvfjQPRllgpH7YiDoc5QrhRd
	 /CWkeA6fs6LvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74DCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829519357.24162.13033735075011606845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab69bb017c5429bb0dea348d4e26fcc5cdea11812c940baf81c8d0b1535d55d
Date: Fri, 19 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758295193
