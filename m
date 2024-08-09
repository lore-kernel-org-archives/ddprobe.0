Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BBE34CC4
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723191354; cv=none; b=cY2Mk1q7YdhHypQzqg4zjr1WdwPoDOwdz+VC7LZKnNfSsgeFdmm5yIy1fJ4nnnpLi6OKbkawQictrCgjxtH4lk6e7kR5bvwRvuC8vc44FdNB6bf5yNpj93Upxrju8bXST0tijPL5wbREkyl63KS74qH9LGoDsfCgbOsfZpuvRg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723191354; c=relaxed/simple;
	bh=UU1syrgIMQlf5XT+hh6xU626jGYfFuYnYz707/RIADM=;
	h=To:Subject:From:Message-Id:Date; b=ISn8Jma5b5iEwOkQHAfhzFOGwOT57GVeDcRTDJN5nigBaVr/2NXq9sdvufWPvJpOhuRQF6JleLAVPmdt2dO/+0vJihUu4/5I3+P+sqc55CHR2vtdQdHL79olCZHFLtHNZI4OG7tCoHQRo1r4+lA6PvBWDw/e+pSnWHALigYJYfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvBP4euk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvBP4euk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E49C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723191353;
	bh=UU1syrgIMQlf5XT+hh6xU626jGYfFuYnYz707/RIADM=;
	h=To:Subject:From:Date:From;
	b=RvBP4eukGPTudueTJqRSOnmNs61glwQx14ZSA5OeWPafAQkB2ei1N0cpPyWEe9CsI
	 2rgpxIvRbrEYM9gPsbo/Uhq+LJaK/ErwAPPoQGH+N4BGCPntjZH4AkTcg5Zsvw6PYQ
	 DBlOvegYRcMWakGCF3iQm7c8juAPpWkjuu1H4JU66G734gwEHLLXU5ph8z403jSTL9
	 kl/pgC0zZO6qkqkpJahetngS7UsnuxeuCGEaNuV5rzAZYsYjfnxnfrqz5zSyHaf1CW
	 iZdZiRHfUkEYJTWlY20a61uPPA5fm55iZwAwvGsEeQjJbXPwF//zJsTzlOXLF+/taM
	 NlfA7s4kDWJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94204C52D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319135359.16269.12259509099045333359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899434fbf3e6411f3ac675e5572e8d81d6f0b3b947fa81a21419dec441b6345a
Date: Fri, 09 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723191353
