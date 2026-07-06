Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4237BE7D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783303714; cv=none; b=sldGy7gu2tQkOXO9I6cIbfwihB8lOOn+XSC96azoAULLgTVtd4XDP0Xy3yZbl7uUzwHihFhPD75EHKV1EcoYSeI42ffu/I1c/72eSWhmZupjN8/tsiFA5usuFFt7Sm8egS4xCjhPkMOCde7cnaexNcTEoAlcBvcgb293wDMKtVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783303714; c=relaxed/simple;
	bh=wI1Nwq3GxIfCBZcoVjR0ju1LraaNeL74v268sUoWfkc=;
	h=To:Subject:From:Message-Id:Date; b=fRcFXKTy6vPVQKT8kVs2+AVxLkwRj/DEm+9UEDhgqSJp1HzVLOVWISgsipsPvnYMY0EbtpNN1UmV0JvM7wZARdW4sN8xLt6eQQ38ZQNWMbIzRe7nEr2M5pfy505UwBIYCwwauVoIX1MIPTdyhA5GPx7UutCx2bR7cBuC4Ry7jbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m29chMoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m29chMoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50BFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783303713;
	bh=wI1Nwq3GxIfCBZcoVjR0ju1LraaNeL74v268sUoWfkc=;
	h=To:Subject:From:Date:From;
	b=m29chMoei3q7x2VqPp6sTecN/KCG4MwjSkGJq+gmtdTmsw1Ny8qBXtvsAJpP9NzM+
	 Gmqu+2GzZo76dVMSSPrxqlj73w2pBA2YUWwOrtyMMK6CydIWL+h4hRd7LBfIeoH6f5
	 IEi98uGebhTuQqq4XEynxNyZddT1k8ma0wRvdGNtLJfd1L64e+AX5lGDpxT6mxFwdk
	 dsGCTlkpnK/tAPYcI9nMuFw2wOEOKLjBrGkW3fzKcw4SZOYSAIZh30L0jw/BRNg+An
	 OnLFP9/zkmYogApZnNW8ungq5NIrP1jXvm/j4RVYZHjdf0Ea1HDkdUy3dWf3oNjZqU
	 4+B44PX7/v8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE12C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330371368.30735.9059944944938443719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad87d9601f47bd3c917b7d0e498d42fef71d5a33dbc7999dec06acb42d14005
Date: Mon, 06 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783303713
