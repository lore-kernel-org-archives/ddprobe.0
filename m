Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E4A20DE8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720424183; cv=none; b=nnbKbqL4IMOOga0fJRJQvZLfuHddc8W7KBrqF6TPa8Gvp+rXB70GacUOkMhbuB2cLulyaYZlm0unn2djMrS2Uy0yZ03GcfSxM8mgehyU7XjPnUzGRg2WSL7ar8aO3rMJYvOdAmbrzz7hJ/YNRiBroGO/+fmZTRooGOi8CVJYWiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720424183; c=relaxed/simple;
	bh=mtXpeis5wt2pIGVDmY8mrCvpC1ePFEAcaO4YD8pcKWI=;
	h=To:Subject:From:Message-Id:Date; b=aR1IwVKVFLwMEmCIl0H9G/N1HIXDcbkD27Aero7Of7PSF9AGGL63MdXKHpnHUUF3biRYrim2dZRl3X32TqAYbHKBT1ZOEmyVWl+/jTBqQJakDmF09BgFjqvf44guOhTUl/eI6TI0J37kUH00RC0BbOW7UeGwUSUV3cMqb3Yw2Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvhmI0CO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvhmI0CO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D360EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720424182;
	bh=mtXpeis5wt2pIGVDmY8mrCvpC1ePFEAcaO4YD8pcKWI=;
	h=To:Subject:From:Date:From;
	b=DvhmI0COe89ElhiepqzTGsUOqgoqqIPHDXyZxQ921hg9rBaFPAe/M0gLGkUxB5F2K
	 OQ7qG7dmxJLDyvTvOgNzgwWKfcBfagm+PKoUKi2UXrCkn4NBBG5K1UqwKdas+GCdd/
	 01xIpFnzQ0BvTN4H3+CwS3qdR5Za+tIvgd1F0uuRmPVGQ69DPPOZmaEpZwbxqswfDo
	 D4e0XOSWpDMmR/4vRYBrpzMArO+Vxbo4biCeXoGtEUWe/WQ853StkoeYvGy0FI+uBA
	 SRdbthCB0cz3FPPLdnHNyr4zmpLg81qPxmo7zYeQazZrwe8DRAxec1zJqcbkGG86JV
	 yLvz1xbkYTycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FEFC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042418278.25767.14188370991261174637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc71cd9e8e881f63e48b565392c6d609b605a88a2dd32c0b36d661a3a58c87a
Date: Mon, 08 Jul 2024 07:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720424182
