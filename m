Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D88C3C1F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778269654; cv=none; b=L91aeuIlMKSGhHtVgJVZ0R9k2hW55l+rn+BrvezfIIX4gJ8wKJSSmgBDYbUx6VW2JGfNgsrISLZO4AKmAZETc/ELS8ZDqu3U2N/X4PD7my+Du9URbfcMu9UlP118zDjqElnx+E0BqswFs5vp7G1n7W5AmqZC05nNiOEVmNZ5yhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778269654; c=relaxed/simple;
	bh=2Og+hGrqVPcdKKdWLGxRiCLWuxhc1NvVkJLh0VJMx1s=;
	h=To:Subject:From:Message-Id:Date; b=rAE7bablUjWASovpHRTPNm0H5m+YHmsF9J09Ow75dV3HPDu99CkPoLKFRhZlTLAK62nTgGJnvxDFm1SGUz/vO/PfkYkU7xUXV0v+9WpcEqEmDv/OVbU/ugHndRC166nb1vy6Vx6AVZOMugkCRO0YCups0sm1BBfUJX8CarH4xZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/FwkH4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/FwkH4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB941C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778269653;
	bh=2Og+hGrqVPcdKKdWLGxRiCLWuxhc1NvVkJLh0VJMx1s=;
	h=To:Subject:From:Date:From;
	b=O/FwkH4vhFMDCIjVldwUfz/gYcyrTG+dKa7cSLFh8kGcrpolEp38VflMWlZOrchxS
	 mF+AlA8J4pR2mC7dItdtGGV9iVKqnkQeJqu7IE/eI10C1j0a5NYGXuqK2UaKP3jMIv
	 C1xnDiVmQctRLQh1yiTam0feQzILJBddpqSvoY9ljyzbRvbtJwTeKh3oN8j0c7T8sa
	 r2ARg5L4eB17DPdT+cHUN5F759GlcfV4SahgASBn0m/7QlO1/CL6azyW/oulnNQfWS
	 WvCwrlpCIYNqzyLn/AQtZOXpsLmGohKizQ5/CZ+d47A0Xb/9KIagtWGhCliVGc4DhR
	 Mm9YHQNGtTy5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA1BCD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826965369.24578.3041320855957482712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99981cfadb7830b8ec57c4b28ed23f00e325df0a896460f91f3761d7c9c3a6b3
Date: Fri, 08 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778269653
