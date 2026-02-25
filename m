Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CE830E0E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772053494; cv=none; b=lIJiXaQptr8frbzSeZhL3ZCZo2oukIdh292ZxCcVu39DpQ8PhFJnInSIpTzYqThZYu6Zv60ty8RNyP04ZsQeL7NNrTlqKM1yhwb1uB+lMg19l/EXd33h54uZQrS+dyrXLOu2ZtPmH6lZd+OTJOUQ9P1Ra4M1PWKSK2qNzlb7Mc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772053494; c=relaxed/simple;
	bh=fhsOpdtkNWHYO0AKyPGtCFyfuo4Elo04EAkDbUbIhl0=;
	h=To:Subject:From:Message-Id:Date; b=Fbv4dRC+FuTuQoK82PFxj0S83mDkfB45t6FV4qMwLYMRIXtFpbxo4BJw4vJR8A9vUsH8AFUa51W+S1siqvAr0/39RQo2YifA5/z1er5zfGFaMk7QUU9gV6220Cknqk8jTV/TqjwMeQcrvVP0svsYos04K6hRsh6B2e6pjrRXBuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLd+HycY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLd+HycY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9779C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772053493;
	bh=fhsOpdtkNWHYO0AKyPGtCFyfuo4Elo04EAkDbUbIhl0=;
	h=To:Subject:From:Date:From;
	b=oLd+HycY1F2YAh1lLGtORUlUorGMWnKq4gI4laq6lD1BETntRFFlRm5SqwrmvQuKW
	 evTs+e3RhfVYfr0pCHtUMduU6AXdk5sasAmda5z8K9JWJL/WxI97065e4fE8LyPDVi
	 31NyzdZMQVX58ZayWuGxKjUB3D4c2BOanzhw+gE4uiE6SdqBGbyAtEV4vNEICLuQFl
	 mE2tnuM3rZsdDc2fwIwHiDvVzTT1jWJDD19ldjN8gZn+rocPHnIR3urBSk9hypm7Er
	 oD6nnSUFRueo/6xBLtrWQAQfFDLBynUA+3zG9u/+X4XPGgBEtdS1hOFoTb7s9MxMiq
	 jbYM53OAIEE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C63FD45F1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205349368.2727.16130612016468054080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb467a958d563ceab8553b5f228a1ea361865e918666195559605e5809cbebfc
Date: Wed, 25 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772053493
