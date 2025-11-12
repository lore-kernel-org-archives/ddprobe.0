Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF61C28E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762913994; cv=none; b=D4U5oC8/SFCXePe5ApcEKa1vwjKwy6+wAH73DTow34AkWWCFn2LbeDjj+B/p99GKXbygUlMNoG5NMPemJ8M7OWOjxgQl4/zU704/CiZedMch5kuPNKfoHyDxKgxA1HaqFeNXFjK+BNCEJFW41TgOo3LdPhYJ9b86JDx2+vL3ltA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762913994; c=relaxed/simple;
	bh=tl5iKG3LeIfsCx3gezQJMydpqsRNte4ZhqHZiBrTIvc=;
	h=To:Subject:From:Message-Id:Date; b=mSkmo10pbdnluR47XU76ay0HtxnqweWpL8rXEBaA5A2WE1E9Yms35xV2LILh/eRT4ruteOXzsZ00ZmToWaHubqPnbFj5crO7U1PCk0UKR0Kcd5Mrlsrt+laPHw6ED16bAx0z2B2dNs25VCAY5T4saZljMo9+ORYSIFuRqCJmD2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f530LW9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f530LW9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762913993;
	bh=tl5iKG3LeIfsCx3gezQJMydpqsRNte4ZhqHZiBrTIvc=;
	h=To:Subject:From:Date:From;
	b=f530LW9V4ItTSF5zaHgd0drb9rWbQR/xKpXnxGZZh17Syllm3mKWBppe+QhMKvFXG
	 9oSbM9y3xsD10yHNHt2k5cyDVhcFgC1XFawmMrLtkoIIxQPi4maUiBLk3Wlxx1hXD3
	 9hCDFJe9DZJiSWybqGfbASwXc+NBJaoJvSbEMWWzccAX1suwny91GShCuMWHsqU6jO
	 xchjZRx+uPxifbROOv66ocyih5rw5sihA6YlstfOjFC/HqCmiAgIkW4pYyf1Imd9aK
	 vEM3Rz8gwNwu8A+OwBqhrfcKQ1YvVkRJw5uvEJvhB22OilfNAqULDkLm3QxTBIQcLv
	 VskymYqP5AuYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FFCCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291399358.17501.4945654858959015875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3e4c531e70868517426ddad9a8692a2e2c8cdcd6f1926779c6d9e542ba9016
Date: Wed, 12 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762913993
