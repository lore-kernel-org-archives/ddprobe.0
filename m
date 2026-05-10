Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78002F8E8E
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778399434; cv=none; b=VrsOj4Mxg1oxSe0LeWtG+zhUg6c8VOWwxt9yt6JmDoAGc43vnhxzkpWENsBYKtaAEzwfh253VIu3dGPJv1J0GNvXvrunLf3anEAhjjEeZNDf7V8b21Ed6bBOJFfap3wQGIrKpxBoQLhuWHv+XBevW5gp52gB4SwBOswgX14zOmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778399434; c=relaxed/simple;
	bh=rVWY4jDsfx8oC8Sdus30VQJ0STpLvC97FjvAc7DSYgg=;
	h=To:Subject:From:Message-Id:Date; b=ZFjH3Ft3RHmx5oc+O+PezgS+ZYAbAi09I7E1z3hOG39Cz6uGBzrYxsErDvoComkYwPu2PuPqUGI4CWymKPTtxXDVha3bXCcTdujuShaFnFlhbOq+QqJN2/Q4Lnf9Onp5/y75VWAG8H/TB5tswuq3rs1ILzFHKo2stAsLqOg7EaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfNcz8Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfNcz8Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6D6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778399433;
	bh=rVWY4jDsfx8oC8Sdus30VQJ0STpLvC97FjvAc7DSYgg=;
	h=To:Subject:From:Date:From;
	b=GfNcz8SbcXe8ee89K1ua3WtfoJax6iwiWpKp1rGoNQXvMM6SrTj6r1xKszJdM8P7D
	 NFkxVHi0ZGBPJaehcb9pYUuDxBkwiMlLi5ku6T85AxHYxo2gcGTgwMdSikm13XlNFX
	 h/tgtC8J+kOu3XjK80kBLsU8dZz/dqH8in2oNlgzClCCISRDIdj44TknQLDVDl0+bp
	 /ug/OzuLoFQqXGhCuMM9002ukHjvZh48JFoMOVPk30B3ncyDfO0TJlIJgt5p2geX8G
	 JyrkmXC2FHY7xUVBvkRnszGiSeVwJBWvTaMeeqprLvSO6GI2/agQ1B7HTU+zlUSk34
	 cmJHCaYl9jEdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF6FCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839943368.15722.2897555611974185227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef49ae5c40b3f487b913ef2b5c3c094289fe3deb504a280535027370911301d0
Date: Sun, 10 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778399433
