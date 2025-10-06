Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F67218AB4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759725594; cv=none; b=T9YEPCYISox8HGeEK5LdMisiR8M82tmNetVM8REDJg4SDZASXHDbwd31Iw+DMyB9hDi6WSpY33HEGPCK8KnPfFdT0RSqu2YgWJLf8jTolhACUueQ7+IKEAopBwnysy5toDZaPw6HgtgyIwoIOP4xseLaOFnru/QcUVzplZnGB2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759725594; c=relaxed/simple;
	bh=u0xYFW0wV5nyBNWXftoqjmWk8VotiF1DCza+Y/RoqgY=;
	h=To:Subject:From:Message-Id:Date; b=Ce6s2PcHHZ2a9EmbEvGxG9vNXxLvJsZY3Ywq8b/rU2tWVSxPIRybY9FoqGgjct7HJfXf77vuKvnybSnwyMGQMy5+1mSxMR7Ucmbuh+tSUJZo1PVFie+IurtRxvhx1K0qrkqU2AJCoF560hGRbyr/DiP7V4Dq1RgEu2q/XQzVj4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awYQmTOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awYQmTOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759725593;
	bh=u0xYFW0wV5nyBNWXftoqjmWk8VotiF1DCza+Y/RoqgY=;
	h=To:Subject:From:Date:From;
	b=awYQmTOdHUTjg+Tr3t2mXZzMZuwsENfaJ52ay2Smy5GgSKDb43PvBErSNFAVtOFQh
	 ZmJ2eeCJisL1lBr6cDeO2TQAoA0B7J6Ow4ngF7vfOF9WKSzs6GAPOpECn+0+czRruD
	 PKg0ok/L+QeP2zBXF3YOATdE4nvfxSIDz15hfgLwX+zQ5XdVc8gnXSkf/zscJz5aac
	 U4At/oQO7Q1GoHQijPQ184YdVzjNrQTLolBdoK4/NumLF8is6SMvqs8qWhMe6WhsEN
	 QSM+i2soSleTNJgKfAa514pATgjtKl8HvEkautsl5OM3eTBggGn3XNoO/hn3hM5lJ4
	 /yto0ZpDnp14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E92CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972559357.22748.4125777391077969616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f1ae1e5037099e9ad4e6629f2e6331990c6ca4eebce5dbf077b54053cfd762
Date: Mon, 06 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759725593
