Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29632C2E0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758671994; cv=none; b=V21a2u+u1Hs617iS5/z7vVhXpzTKtqurGDHucwW5WO5un43lFI93SLHfd2JkdHG6Bs+dP5MOV3P/CrWB9pBnoFMlahh7x2rYoM2gw90cnqgjAkTZxCDR0UWWm/tLpr6z43ozROnE3LITsAgKjtZI1uWw8eygFw8hZQeRJfA+ylg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758671994; c=relaxed/simple;
	bh=Nh+nAQTrvwhfLeAcp3k5YWLtwi5SEAEws9yFYQSqyEM=;
	h=To:Subject:From:Message-Id:Date; b=IGnizEevcgI75zRFlYpX73IyoGqSY/ToWavScs78Ti31e+Dbjilt4UyzxvyFqKG0zTbEFY0udz03xmm6T/DbN6WZj4wfQPLiUsab8RY1qzgJFd96b0ewwbw1gk1UvVrWE0S03ETVXA67Jdm83+moNy1g0ev+wb6wScCwV+IiFD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYiFIchA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYiFIchA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5704C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758671993;
	bh=Nh+nAQTrvwhfLeAcp3k5YWLtwi5SEAEws9yFYQSqyEM=;
	h=To:Subject:From:Date:From;
	b=PYiFIchACu4/MeOI76r1itYJ8vPNQ5b0dexqXGddi7+5cgKsRLbib9viZk+vKS4pP
	 gC/oJR3pdKN6Ppplr6P5bVGZavqWzvIOjag4LKfsvmnPJwQirRrVzcJ0OBfuHHbptM
	 lJ7QVi5lFE0wL3l1tjpW5I+SXvdwsX+Uzl0d9CxR9I3OcxO5z9GlsdJaNxlVGld8qo
	 W3VLqEAc9X/8m1QGvHsAwbz0RBDNKiXRnuQYiVW0uMcvAa/gudf5UloW7C+gjm4N65
	 gL3D+GfYA9PZvhsMGRqb+CWgjohf3xV50giROmRWFEP7j5uutQtbijI8Pz1f/Nknr9
	 bR85MYMreLyAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91730CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867199358.2541.5336812643187343764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728f67e7c86309d85d90334424f8ca7d99c87650ed8b0dce84e731d2dc162843
Date: Tue, 23 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758671993
