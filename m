Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D70246BC6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769252034; cv=none; b=RlTB3oVcfn6dliyhr8MEfrKr0WKTEMvmbEuHQLnPeHTuEJRuGL1OhO0h0q2gJTWX9nQ9SvWIBupf6LevauTsJPYxZyZPm8T8mTYdQz/YkT/Jq2H9/be8SIyAR5ZJKoeY4ZSK5VUK+hQgiayStX4qq34VifKSxpIAwABp5Fhy5eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769252034; c=relaxed/simple;
	bh=sUR2rxFiI3W81bNbxWU5+VMPqVTSj+vlxwuYuH70JjE=;
	h=To:Subject:From:Message-Id:Date; b=C6u+9Z73aYAS1PxB5cYjykKY6qU3P3zBIWB/FK7CSk/XJ+HIp4OMgkso87aND0QcnYf+WLGA8FHb4+wzE211nSQ212xjv1Pr0PQQ+pflyPbnr55/ttrleHtQrQBnuYWr5ZxMxlcc6A5udA/EFADcVht1CwTO2M8Mq21QvUto5Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idCZtRnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idCZtRnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D04C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769252033;
	bh=sUR2rxFiI3W81bNbxWU5+VMPqVTSj+vlxwuYuH70JjE=;
	h=To:Subject:From:Date:From;
	b=idCZtRnwlOXvnigE01qUiI0DnSvpJA2ZXrBUA9EiofZdbb+3ZJ6ctFRdiX+m4+FzW
	 28wmprAas/fOyIa7/OjgfrtHRJXKWOBBuUmM8DAXBnfv2ba2zjPon6aiOF0k4a+663
	 O07Vp44JJ+XVnkx1bMf/TrqMwVqhbpf98kHQ9SfchEOwnMUpJ9eI5U33NPeHzk6CWJ
	 bMWKsthZjF393eXZsrjRt/OjpqHGFOMb643EHtUCd3yFNJ+TW3NKjVr79zXEShalEx
	 m8R93DzoyoWxHoEM901Ft/HQJ53r55S5nMy0v6FxJ/WlOlDFm7+BQWiNrZAIE1PS1y
	 nYdMtrr9ASG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D6D715DB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925203357.17294.2024863462697684800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba5a072e6a38cba41854f24fef64338cd60993c356abd1cfa28f4a621c23917
Date: Sat, 24 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769252033
