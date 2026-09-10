Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993593C0A1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789021234; cv=none; b=HlBA4rRtZkfGWvTh+qQSfnLtZhhGFv9ZewQnnpBRxf2zP8XX7cDpil0KvubcrQF2GfLiAx9cgCHJUW2oRdOJYJyBvsw6lBmH3tqXJE0JPnFz6fcLyu0O3h6R+D6QVUvzD5BdTcSKfIrAeAEwC6opnHslKuaVCBYjSE3y3Xplvkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789021234; c=relaxed/simple;
	bh=+9km2VMLJghwZm0lcM3z14HSlP6ky1veK7qOZAqXeW8=;
	h=To:Subject:From:Message-Id:Date; b=rEOhfxyLUjE3r7afL3DunCpeDTrQdGO5DiLglr00axYK18Feay6rKKTgHjM8Db5VjH+3OnvmQbsPfxIRNy1lflbZDB9C7IDU8+OpYWFk9KPS2UPx6rQnRnjcXPuNXvu30d0fsySF5jH/YQ066NJW0zMSf0E3kx/SE2cN6FDVWp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTeXDyvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTeXDyvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE5BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789021233;
	bh=+9km2VMLJghwZm0lcM3z14HSlP6ky1veK7qOZAqXeW8=;
	h=To:Subject:From:Date:From;
	b=hTeXDyvf1TIjjzG/3hmip1/8HmbkOSE8HNaxwmzuuUacDYMRQQX6DEuLFDIfzDdUq
	 j1zwfafa0ez5Ltfm1Iu8U/fSLH695tvhBchEHShlfwUuJROP3cLFiEj8XDbXtIuNyG
	 OY4OOygrnBKXwQ0dhMRzEC4i7MoKQ+elWvtijUGZfsOZSlCa8U4hwFb3exwFieynkW
	 fZF5NZQQgwqrjIaWpF5l/QC+joORdB8Oh584OgGHIcm67LQTyRUN9tEkfMTCMnB5Sl
	 MInpGwGMQK7Lm4vAyfP9O+mBqpYSnXgCcd/lJnVOZ6VmBNL+jn7OuaPN/qhFsEO/jY
	 kb5tW8N2xgOGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7CC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902123369.22389.16944747082866030468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528ca7af2555d3c6c876c06b7ef7cede2dc1b579709ceb95d58c38efed719226
Date: Thu, 10 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789021233
