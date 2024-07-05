Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5460717995
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720148723; cv=none; b=VbMH7u/YQK69fm8jF6lHw32q1Ac3VMxW5vLYkMlOeoEXd916hAyDn0jYs1J8HkyaGxdhbZKrB7Vphdw0hpOAGTeucuju13UqyQYCbhUoFt4jeD5C7BEN8yXxzxKILQJzGEgZTxrbBkjPPURjRUpCT82Z0OG+jkZRqtDaytxdNxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720148723; c=relaxed/simple;
	bh=qbosjj542h8tiqO1ZtSjZlxUVfA4NYjjtbtKScjVl9M=;
	h=To:Subject:From:Message-Id:Date; b=OqaA4IG0+rzo807lgFfpwBo2j183fADJkON++macLhbXzsylBYo06Nqn13q2zJP7tY9okS5VYoCiDuE5M9c6eoZnVjpeeNR03ReGfuy35wSDxcGbQmp3YhT2hgx2hCiKP4Ff1Th5hIJpJCHBZiE6CH4mse59Ks1Had7nuVE7lLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCPONYnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCPONYnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFC8C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720148722;
	bh=qbosjj542h8tiqO1ZtSjZlxUVfA4NYjjtbtKScjVl9M=;
	h=To:Subject:From:Date:From;
	b=iCPONYnSvQULvL1n+/r3TiOfnr/m9h2ktz0CgCbdzKZHY4wdvpai638WjPDwh7SDP
	 lOF1hoEomJk/vNzffH+azRMmby3Cxg5S8jKepEtM0/CqAZVobmo6tggB9rGY6hUQn3
	 npBT4oboi97SLsJcD3SSMtzcS7tOJDl4v69g/iSlAj1Xe6ifCijW4qKWTJ62xITHAr
	 hBsdbPGLdZE9ttfthSlFHAQL8rcEyPOfKbCEvL9ypvgTCrUD5QTSbcOlnaO4vP2XsP
	 H51krTQAXGsvsgMyldHhJdT4k5CrfXiK7xt/H7+weSXSUl6wn5hbmpUtMflwCUMc7Q
	 H21BoLjFO/aOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02E5C30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 03:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014872277.11863.10992434291183619487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6ed868635cf9d2c0a1b92de62ac2c2a25becf56a3370eb500d5b6c0b80004b
Date: Fri, 05 Jul 2024 03:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720148722
