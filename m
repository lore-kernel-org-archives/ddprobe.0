Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A97153BE8
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717146263; cv=none; b=qmbzfO4DB+NSd/xhCPmMHC4dyS5+6nLKZ4Aoa9jmYxvwIQfPHExm0I7EuwJpxV5s4pdvLmy06J6Nwu6/6v2yvO+TZo/VnzQ/6t393GizCGznks4ypvXfD04c1kAnuUBIpMcsqERhP3JDr9o7LdTqAtqPy9y4PMZDhYgT8XAFhQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717146263; c=relaxed/simple;
	bh=9GZVnvFzBQlhpyBcFhKSQ7wtQag60OBtMJGPUM5lDZQ=;
	h=To:Subject:From:Message-Id:Date; b=mO+cP6jh4pYsHrrXK112bHGPCO+N7zj6t3Tjnc9qlCZu9TdU1vvJW3F5pFmK6AXKb2gA/WjAxElKB/9Ojkbeh9VY3YJ08gt+MH6lJgaXvaAvG+XdxlM0IWniUbI/XfojEaWV2wWWI4RAeTuy5HOXzSDAT8htvbkKoVaz9Y/84Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5giBLSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5giBLSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5226C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717146262;
	bh=9GZVnvFzBQlhpyBcFhKSQ7wtQag60OBtMJGPUM5lDZQ=;
	h=To:Subject:From:Date:From;
	b=e5giBLSGhXPuFVCEoEu1lTuedt3SeRqeBDsoz4mRjW71b3RwNhX4SpIP+dRQd0x6b
	 /CGJuiaHQcuE1vZm003uM6Tkpdo9Vc20SM0SDYMK5YEA9HsF203Li5cYsd1C1cICo1
	 pCA7nV7kGF27I071WzVPec1NHPnH4KFn/3D9SWf+z+aOgH4wPc9wzeDQ9i+XhDC4+d
	 5CLgKe/kqtfO2erP0ZKIHALNJ/VK+7RuSi9vjGWGbFSKEj1ntHQLQUhgP4lSF0e5WG
	 I+xi6uBE+yJMlHIkeKkj4/6xitjpzu297xjmYfRhLiZL6lTj3BSLLW+mtJPnTIdAX/
	 v9qN+tJHPDWZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48ECC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714626279.12486.3176842831102459634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a23c1ed741bfa3fb198680c8d8b621e161292592167f962f269c65b270bf83
Date: Fri, 31 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717146262
