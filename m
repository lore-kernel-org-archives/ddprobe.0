Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228DB37FF4C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778881834; cv=none; b=I2d8n9dRQbf0dti33JIuMRH5tkMUdnr8A9Kv2WkAEEuZkttIzZyQnZCJFa6Sb6FcLtZz09a3YtltB7wrT/XdBQjrkVzvdW4CC+m0nYQ72zjJVOJbjbf/TSB8Z1FzQ8xPkZxPsE16fx+VEqcxttRnSi0W7DrjBmt1nLkzWT66djo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778881834; c=relaxed/simple;
	bh=sPLXpAEc2rTc6yFh0f9J+V4kFz3ISgt/RVjveg7x574=;
	h=To:Subject:From:Message-Id:Date; b=QEjkDQxay3J80/y5yg7deXQOlrD9Sig6Y3024P3UOWnWsXgSmlCE/JsVjj+SmBUElkyG8ObswdD3jnKUOdR+OeSEjDBTP7g2UFkbwA8w4j2teCwvRUz3d7Z2XEIPhVXoxgQ9veWJlZKUnwnSdTt+6qnIAyJsRHgMH08NYdupM5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPIogZCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPIogZCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0200C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778881833;
	bh=sPLXpAEc2rTc6yFh0f9J+V4kFz3ISgt/RVjveg7x574=;
	h=To:Subject:From:Date:From;
	b=hPIogZCxn+JOcwX06ptlaag3i4jlETyHzZgEDUcaOKC3/M3DH5pwwqxVOD9EJzy2D
	 JVVvmOL28vcF7SKJ8GwuCce4YpOD2L8DlzDAy7/+rnKeu57kr8RgTXj9c7X2Y1RUU5
	 B77b2OfH+NbgPGMwmJUzT6AZmU6SvAdYugd9XT54qr0gBELQlNsML4Jt1jlhkhPGKj
	 +jeQtkErsd4metLDNHtrRAddZkzGCpz09432tgjiGal1f/CGb9pdt7ddlz7p40aRm1
	 IBLGlWbDSgFyuN7RDPMXrIGiysQoaDjHESBJ6tsymoxUsKABafns8A3+BdbjCVqbK9
	 fUqBIkv0HRjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B026BCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888183368.24046.7395375536829321873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af703aec12d4dfcba9f3b5c0631229ba644a5381af216f8d4f1918eb1e1d6e6
Date: Fri, 15 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778881833
