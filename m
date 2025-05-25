Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252F93BB48
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748165995; cv=none; b=U+Xet/3BaHUaBG4lB5cJ7PT92+KNiO26X747T730heSoxXJXUa0X2923bi4h89fkju9iIFwFosAwDsPcvXry8TBGXKRMaN1TY2T2XfdB6xJ+qgJkg81sMBd3r5Uj0bLGhBVlN0Dx0VyYmUIs5a/6OByJ4aH0IyxBAO9Pxmbqwic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748165995; c=relaxed/simple;
	bh=iy83bYqeABICxtOEtb//95gbVs3ZjS2DeqMRl0zFxHQ=;
	h=To:Subject:From:Message-Id:Date; b=eypbl6Yp2MjQpC6ZNhzRcdkvqTMmPE9vCy6ytIg24dhq9WfDYY1F0maNW6ZM/YYQcqsvdb6bX2lIfZUi0falJelSwb2KG8KvJq6uKByxTruvYOZyCOZcn7+JEeXIsEvkEwxpVkiu5vJ58FqUkcnTOutQewRf0JRiIk3h/Jzlg1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvTFHpfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvTFHpfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D79C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748165993;
	bh=iy83bYqeABICxtOEtb//95gbVs3ZjS2DeqMRl0zFxHQ=;
	h=To:Subject:From:Date:From;
	b=MvTFHpfBu+x/jTvXGtKiwlCXJwImz0mDwfNX9epH8h3180pX+nxUuaLJKppL4ikfu
	 Ktwv/tn0xDBNf+CliXr7bzH0Dgq9Qpy4JdsiIlP6Xks/Lxnkayrb3TjFbFddFuT/da
	 kxUqTvCuEr0Z65rkSyceX5fwiSMiwEFKfZG69B49XKFFwqz3fG1onZD9Y5dUqqX+Tx
	 L5joksvZ5I9ib0bh+Z8ne82qs5PBQonDUZ66sn+Q8agmVcfa7swfZV0iXmOsDsPbUp
	 j07LsmvQOVeT97pB89Na+iVl/nQvGUdKZxSl9Fa9j/rRSRBOuFkLXDzHYfpp+2+Mms
	 uMQHptITvjL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91636C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816599357.17409.6199468316188457902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893b8e2e3f7b63e4b7dd59e433a1812c89aea38444bfd5d3ed40edf751f4179e
Date: Sun, 25 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748165993
