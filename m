Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4578F3438A0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783874314; cv=none; b=k+QqH4wEbQn0ir6v5xRC//trryECTX8hJ0i8nMcv4ndqwKTz1QA51ZfGvlzdoMyLhnNUkLS20eUHPN1ViCxUgeMjwzhmkpNM8JOb11JEZtlQd/Uihqf8s7oe9Hm3gzonh9C7HtK32pxH1ZiIZbYREBSI5TaVGbfhSCtTmavdlFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783874314; c=relaxed/simple;
	bh=N0/UVv2M1jBAxGSGOKQUSj9co7FF2k4fh1zQlUmUFEI=;
	h=To:Subject:From:Message-Id:Date; b=XNNJEwBacCeT1iwBIHPwXOEu/l5xI4ngkmg4PcOLQEv1Bfg+c+kJlNfl1BO30JONY7Q1KPH0XYpXFbj8DJQ9cWFSVc6ukbgOzp6nnXheSswaEomk/oQZjgncJ0w1SEh9lbMIM2mRJ9dT2eCteOVNeYUO1c7i9U6lQkSrLUbkR2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTBjvZp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTBjvZp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3807C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783874313;
	bh=N0/UVv2M1jBAxGSGOKQUSj9co7FF2k4fh1zQlUmUFEI=;
	h=To:Subject:From:Date:From;
	b=BTBjvZp+s4Tb2GXuv6Rh+nA94gOjcBPBwzyK2bS9YKg+bJaGV0XddxntT/2SQTZQE
	 KDfQR6ywXJybJ23SD6EJl402mKcgNKDEgp2a10pHqw18Rekn5DFhlyZRh8UQuRdg0d
	 gMUsyWYePbf0NSWr3JfADmwLqmuAQPJ/C9ZLnmLz9UAJLKS2/0/7mmZpSV7jZo0Qa5
	 13VDAuY6j1ZjgxBImJzd2Wcmg7o9HndIYlkogrYNymsFMOj1o2kzCsRfJMEjrbPPuG
	 E0VvENq5GvkY8B/V0mRTWIfeB8cHpestJu7U9z/fBhxH6nxJJk7fs9vWgpUEBR8xdg
	 pkLnqU2yvGPvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3B0C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387431368.8225.14526449650138865132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec7ec122162d7eb1d889de319a6c08ff7d7ed3bf13f64e30b5bb62b45f69b86
Date: Sun, 12 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783874313
