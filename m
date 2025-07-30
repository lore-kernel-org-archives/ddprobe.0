Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23384249F9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753855194; cv=none; b=tDM/gsrlpiA+FkEFaDAviv+dSYMOTQLu/jBliH63HQMYgKNVeb0roLzoed2MD/3Cg+blSiGTcpfwJD1GEeAdH2SiaQz4jF1nDFIBOs6lDOjV9ZRF0FQMwL1e3urePYAP3WfOKTGQtKZ07QO4E6YjY6vaD0uz9KhOTVWVNkEXewA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753855194; c=relaxed/simple;
	bh=14E+yb5DvqfYt5T8cRPA+EFj9dm4iX2OmNWpFjwkqKs=;
	h=To:Subject:From:Message-Id:Date; b=CbxjLvGUxqzzGTCpVNXBCaTJQR266MEYUpMEkus9//ecZD5nulgdaZQmCuBjtlcXgazA5EgN1HaMUFfuYH5SAdl8N5TLRecLubpwb8hYN4NKIoYF0Vl0sTTQgZifHTyWZwpXGGjG8TLkPXHycDCpGQwwdk8KM/2/cr2CIkGQKA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO1Tqu7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO1Tqu7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A617FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753855193;
	bh=14E+yb5DvqfYt5T8cRPA+EFj9dm4iX2OmNWpFjwkqKs=;
	h=To:Subject:From:Date:From;
	b=mO1Tqu7U/x1fovQZjNlDgX0HQd6D35K5o7xVtVV6hTuhif/rxcu5jtdj+pfmR4lgd
	 uyvcD8K5L1HFLkVt9T47E3/MvBt7Qq8X/3YHccwTpsHUCeeK3z3+ewHSUU3C7Sm9mW
	 PKn7PDifX8Q0GZm+dDnzoZiUNO20lxwphSf4ilZGifYej5F6/BqWL5Ts0gJYrGOln8
	 IH06WlPhxLIz0zU0Jeseag3xDGFlE59pHQlzrBj+/NzD4OMGo9nT2UHl+mv1ghxmTh
	 im723YynEsxllZLIE2ASZoh/cMLnlPceqOrHkXlbSlD9V7N1uE9w8ZVtUhDtujQYGm
	 jo8/xOiHdzrog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F99C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385519359.15745.8231196589182114411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e86157f53feb5c3c4b3379a1e085d234a6a4bb565211bd3f025ec968419b07a
Date: Wed, 30 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753855193
