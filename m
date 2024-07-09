Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DBE1DFCF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720539983; cv=none; b=SuLaVcVyRFVM4bCBhiFQJzTeMFr4ICYk7E2Kd9wsCnltdJdNdYxVxbJU6bwJ2EchsBJfHkBBw1JEeB0TJCjFEMID2E0Xqp3i79yK6c++E+RHdvSLm5iLMkSb78jRj0ZQ86pdqTirPqB4cp19RtKhUlCkDTUJUD3YXaLRcOOQVtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720539983; c=relaxed/simple;
	bh=3YHrJAVMVWwcydsomm0vhOqvY44ixkWaV0OvkkrAKrQ=;
	h=To:Subject:From:Message-Id:Date; b=luN/75FYIKTxLKTORSQAvf8ofrZedLCOPMsuzoVZeOztA/MPyUHe8Y37Lk2Uw9Jl1kZ709M8wur5roGDE7Wfxl1yT44/H/Gvnp4SN4IgmF8U7VUD5xmlVwqdm92AdrzRuEnAcbuYP/U1Jgv8/PS89DeTc7griznJrouAYEsezck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoaR4PHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoaR4PHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FB5C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720539982;
	bh=3YHrJAVMVWwcydsomm0vhOqvY44ixkWaV0OvkkrAKrQ=;
	h=To:Subject:From:Date:From;
	b=DoaR4PHPxulzm8FqTHG9XpvCtJWcA+QobHGrRtFXGwVf6h9LXdl/yq9MhrtoFEVv8
	 S+wBTkdJfH7R9B0RHgD//2T+QGmEX6kW2343wVoBuhZSjreB40rtvKFl6qLtTnllg/
	 fhSfJiUlGdnH3aFEroUI6rx2oO49AWOu/rs3gkWhynCShh+5NzpAuR6pc4HJTY+bux
	 hcqr6AUKKIsEBa+ongfLzUEohlMffPaa7Po6/A2UgD1mudW52yREBNHzm9CwGVOBZ4
	 IkukLqI0ofdUKFS7xYdCCD6bU7RKWCKmj8xq49zbEkNMFiByWRJTzWYcsicUGcYP/o
	 NJaZbfbAGFV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC00C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053998277.11164.5154856220038769385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3df8d0bc14391caf36b7168c7ce003228555a1a06e9cba9d3377585415f971
Date: Tue, 09 Jul 2024 15:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720539982
