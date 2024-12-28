Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E940AD24
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735349154; cv=none; b=V5F8s8LUUwhgp1Or5EC3hHCaEBgz3wwKZcC3Uf0x858woyl+pjj9ZT/dHxB5ec40Sjpo1F1h7u/vzyn8R3vPmc7fPechTmdRP+Vx7JFDQeKK6IkO6H8q/zfIg4OlupNw4qSobZ/PvbgIC/n1OGBcFYkspCaNHk8yH62/JsdTLXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735349154; c=relaxed/simple;
	bh=+/dEvBP0AWpsr/Kb+J2AjzseoNQD3VUJl/ronzCK1+Q=;
	h=To:Subject:From:Message-Id:Date; b=uPWOehDer+6E3NE3oWdQy/gj6fPnGvNIh1SXVktqj/0JynAEuAmECaP81rbCD/lGSdrzFWp05/V5UEPUr9Jzqqt0EdCcMotQAY1mUAVmfIB1NnZAh5lhn0xWlUvSeGXp404+ZiF3vgyxTkLmInsn7K09vqNEnCpxp98ygGbD2vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msBbV224; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msBbV224"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4FAC4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735349153;
	bh=+/dEvBP0AWpsr/Kb+J2AjzseoNQD3VUJl/ronzCK1+Q=;
	h=To:Subject:From:Date:From;
	b=msBbV224Il78ZkryA+0w6cn0QjGXYQtVpG9Ov/orrqK/RMq/y5vWcU1jLWta5tEAu
	 MlzhppG3MLpnkaciXqR6SPI32G9htbdJCBlbdwcEihFSnU0C3oKnfqhj4xjqzOouzi
	 nbRQ+lBuSyNUdjzllqQDKoughyGuysLvJQMF1jacNB2pSvyJ7U6TfSGB+F7BqCBSjF
	 j/SOgzesTJ+3/I38GkP9cmYsP0FeU5WGp2/EwfAhCdsiY/J7/h/gPXFKE6hprLnLox
	 kxjMWtj6x3XBgR/hWqMc8bT9P0TAkQ9z+sLJBDjcpt9+UPkvK3SiH0zXX5uaxHBTCQ
	 6H8wDX2R7S1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8DE7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534915359.22490.5738978108411702340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba2e1238e4944ba059628685d7e5837b8a5fa073e44d4d772fd935015555d79
Date: Sat, 28 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735349153
