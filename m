Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37D61A4F2B
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735565153; cv=none; b=YMzwSOltb3Dz+f9VR/VpgG5jCXDusSgAWuUj73QaqnN0ibGo3skcQyjick8MODzTzmYdlk3HJN9PX+sq+Qv53Id8hSRQYCb73exf9R5lfTGFubRZifyNu0/gs8wPMYl2doNlrOI7yZ0+QHb0nQfEo2KHS/PpVm0CHuVGaOrh3Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735565153; c=relaxed/simple;
	bh=NUJ5WKbgLU1eg3vOVyabbdpCR7cQsarhNEJLuaOICJc=;
	h=To:Subject:From:Message-Id:Date; b=Ld0rwI6EnMDpVRZsCwbJhSIyF0DqYUjAOpoteTOVgPl5hYiD14HOlDUqDHi9CYQiH/MeEulPsiD0iEbXdRRtITw016oq2j6TmcXuPozIIs7Om+m7johelzIXMnNHklbiVnxgKJXiChgo9jnjXpmPS8ChS47NeJPfudvyPFE4yLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoP0GRg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoP0GRg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CBBC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735565153;
	bh=NUJ5WKbgLU1eg3vOVyabbdpCR7cQsarhNEJLuaOICJc=;
	h=To:Subject:From:Date:From;
	b=CoP0GRg+bakfmd6tmG+wfHLEpwmhZv4MrZmoSyv3qOxxl+EvknwJCgCrHsotcbJKf
	 zMPFTmH+lQlu9/yqWE0LjK8LAPCZAroY4uIS8iHaoJIKrlDIURJt470v1HO4/qM6Yh
	 PTgpiKKCrU3k0NWm9rjHzAq/Cv15/n3GHPCnzYpEaQEsS9kGPXzs+4bYHCeKzHGxOU
	 ki8TZZz55OdU0MN+YCHhVIDBcdOsPViDLreiScm0QLvijoT6OhEHMGeyr6ZGMceS0p
	 ytJy8P4kC4VhzmwAYtdLjTr549rmUmgwfhBK4xrhx+a/3doDZA2FZxy4oFO2r97yN1
	 KvyJueVQmP/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ACFE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556515362.8336.5076223910305991332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4750c2317228baf2f0f6319589a865505f4123555176469882e03b437aec9e
Date: Mon, 30 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735565153
