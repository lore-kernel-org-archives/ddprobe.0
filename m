Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365A6D2FF
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742775594; cv=none; b=hi+NUZOfMxCBtl3s4lEe/vdRnywChqUThYGgXB6m8MqQ4sOHQBIDzSmt5VZTp7TCx/SyUAxrDQKfv/uapH+iE87CJT30VoZjcLrdPkbg/X5yEEJLWCYnkNkkENFrO70gmpHBN+AFELxHdaLh+lHO5nn3m+bIMlyeCiwR3j1AbkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742775594; c=relaxed/simple;
	bh=vtPqP8jbCgvt+RClQKHmGYXyMAsvqmWvwdF6LGDq8DQ=;
	h=To:Subject:From:Message-Id:Date; b=iYUQOyrRafB9OM+3w4QnnTMqSxZg4HOlLfeQifda3uGhA/cB3taFD25RjtCbraGDPijGuuQAORZxhi64w0W6ZChBJR2rup7XFSmrgeET1hnylrdP4lX9wxh7NIpBjdUZatuaniXuSPXUITnjaryw9ttpNr30YGm13Feh/IST4sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSxcEoDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSxcEoDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF45C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742775593;
	bh=vtPqP8jbCgvt+RClQKHmGYXyMAsvqmWvwdF6LGDq8DQ=;
	h=To:Subject:From:Date:From;
	b=FSxcEoDtYGAb5Dnr5tFbA8lLkwJqyEBvOTiWMZBdxW/gvQ+lozRLWz2no5TKQK3se
	 CwsWh2wEuKjFaY12PPO0NjnOlwTPSKtTAHeL9l1EJxUhIdyLTuDD5hh0furFW4gPo8
	 KxSelG4RFwrHma2liOhbIzmM+BJZcds8730YoKi3pL1GWPHPZ4k8tDVhGAV54nZmXk
	 1ZT4cRM+/lL+jeVil6DDLOPVy8eHgAQp0SxhtNydzrxxPeRWjqdHwlt5y41En/FmiP
	 8TJoG/uFeD8gcmGv5DJ2G5o9sqiVb2o2yvty6hGYC9oSp/WDdzVNJ23xx/YWdotYEq
	 oDYicQHRsihZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A33BC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277559359.8773.17103375767889275998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459a6e8cc1d3f2f6f494004bac12aa6197e4e235a7b70c8b4f9d9daa17666b66
Date: Mon, 24 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742775593
