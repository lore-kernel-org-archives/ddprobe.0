Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114B917ADE0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770996294; cv=none; b=UNROxSoKU6Tsj+nvOX/zWMqToR3ELbV8rd2VgTOYrfVG+holE4vyhOakJvahVILlU5NzYyQxCFLs6eohaZ3iKQ/0ikZDrSVYVYtdTGS3ojwVSgwDD+4+wYBpzFV+EXdUZ36tZZXJ6BEBPrVk2V+TpZ+E7aHeSDDh4haXLIq2IGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770996294; c=relaxed/simple;
	bh=5lq55ViQ97tgRtR2P1g9jEvOyVeTj/XOWfN84HJAMGE=;
	h=To:Subject:From:Message-Id:Date; b=mPLwZJtdunUgE5331eT8llP0JuRhIwNJJt4NPrD6KJ8xhN6HbhFyb5YnadKAJuVVo+OYAEzdaUcnDuNwjocUHV/BEzfLC+NkcLQWrNKH1zYWyVi1IzhoTGzwX38H05WXMQ/m64cN0TjpP4pNZZrm4+ikUjM9Il1c34MKiV5+oOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRQwBc7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRQwBc7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F98EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770996293;
	bh=5lq55ViQ97tgRtR2P1g9jEvOyVeTj/XOWfN84HJAMGE=;
	h=To:Subject:From:Date:From;
	b=WRQwBc7nVcl5jMCZS2njhX1M9meNNh258jmCTvcHCjgbtJVH2zppC4VOQydGnYsks
	 5txXBne8D8BerM46K0R0cbrUoQfxqIvclN6/bOjNR1t93iE13kC37Y9vpP1YZoShfH
	 lOwFjzf6gQTUSel9OMb3BzUFyKTqrnNMvgMP+nfvwKxiIw6kLfoed7sCXLUCq0pl1Q
	 yjkbdDl9viVpELVoY4ufpjhBkcdzuc5Z0A1dJoP+LmcxtnjEHVaM6AFhh3MxYy5zEC
	 MbLSVA2IaXuy7lCVzWPUPnFewhp2t+6duD4ATwgXRCcuyKXcFojr5nZOl8Y9Jo0sNe
	 Hsz/Z3rJsRBcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92878EDF170
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099629359.5853.13874930172966040395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4d76917c1b44018c47604c737dc6aed637db108bdb1b987da327cc51db7499
Date: Fri, 13 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770996293
