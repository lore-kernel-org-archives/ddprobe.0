Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEEE32B9A2
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761590994; cv=none; b=fkEtA6mCXL2vEa+aGod6MT2HAkSEgZMewfA3TuZ4U2q+D/7QMg2ABEzZB7WM9XQst3GySvI+1zpcBVxBTq0uoCNrSg79bTRUZKS+kwiXf9AqHsM1q+RUMyU2JFkV14J15wsZH6LJeZsYcjvOxEg2uVN3AA39eZJmqN4F9sxY+Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761590994; c=relaxed/simple;
	bh=J2vS6ezcNjlPzkVGJmhx0cD68HF+DXSLwCko/Tl9/DY=;
	h=To:Subject:From:Message-Id:Date; b=LSBBMPQWps83L+JuN+M5KFRa5CFQ8VBf7lCEAeawr5dwqFtLM5pdDj2OaW1Nvu89bU0YiwPnxnLrUkOmSbrkFMW7C98FW4zdpN6OmY+QfutrQ5hIMu/4pUJ2NZX01okBwWRkTMU/ftbQJXnSI5wb79hGG9k5OFGWXZqNpee/m6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFs80xmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFs80xmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE3FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761590993;
	bh=J2vS6ezcNjlPzkVGJmhx0cD68HF+DXSLwCko/Tl9/DY=;
	h=To:Subject:From:Date:From;
	b=XFs80xmcIO7XQxiRtTWj6xNYd1C/p1mXrgEau9VV/nak23IJSKP1wboNqsZi+g5xf
	 4X55S5SFD+vGcxy7FlJlBnjX3AJ2UMOTGgvtYl07FCAjidYzyfN+Gv7nCJO09ZL5+g
	 AoOSOeVTioQ8K3m57k1BdfVdYmDDBySyTCh9qLqBW6/7oB/ddBHMN32cD7ht4TLVl6
	 DhT+z3a2FjD94l9uCO7B8dvnEBPDTd6SSK8dFh1fZx/heksVRj7tA8lSO7Hb54NJW3
	 EoFBNP0vQOrai5szeHMvEGaT2CiWBxZeO9ppbP6PgU/DE73d4lWRtxYISSWndpZW4N
	 eL23sEfakaPmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012FCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159099358.13341.9076551312454390209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0205d28f940d0427687553a4c4621f699492404f9ba9e84e90fe0570c3fecb01
Date: Mon, 27 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761590993
