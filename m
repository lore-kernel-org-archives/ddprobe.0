Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446F8266565
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775072134; cv=none; b=VMzp4kKq3yJh6z+oZ6BW+ydjgXduGvcFxe2yk83nW/k8wFkjrwQjwCn2Ovj9o5GzYZwF4x0zk9JLpWLstQA47iybLzFypSDdMIj6yHj910pz/0ieErEyfXMmrP6O2VCrquY+GKnzaBfRg6ZKd02isHCFCYsrBSxRaY9/l3hXeFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775072134; c=relaxed/simple;
	bh=bYkkgUiBWlrC9FUPAS2PupLHpC15wi9RgloQqkls4qU=;
	h=To:Subject:From:Message-Id:Date; b=JMOENdmCTJoFJigFjtVSo+PLWgl7wN+XWZuo3eo6LrNb7Hsmg97E/lhYXcJrdBEitQyEY49RyzUZR90WzsXsHotE8aJrFq7vQukLaR7aQafOTgqVq2HPOSvmcVTowS8kvZgsRnBJnZKt9EzQ4RWV8uy0tFKu+IYCDno4iSZQPI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuAoq63B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuAoq63B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5179C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775072133;
	bh=bYkkgUiBWlrC9FUPAS2PupLHpC15wi9RgloQqkls4qU=;
	h=To:Subject:From:Date:From;
	b=kuAoq63BChdKLUy5lkWTHlB4EcyrF1VThHWX6OChGiqhAvfcA2JbTzRHVINN/lZgT
	 KpkXBUy3KCdyNyAwgSDS+DHo6M6CeQDsWTVP8jNqQ24BXuuP/pYZd9bK61AcJbdXon
	 vaHTthGiY//A3f+pa1KnusBdyanlqLblK/QAF+m0FmJeYpA0nAfMKIEFlx3fbRCFuv
	 2FELOZJjbIW9iF4wsqX1xbN//sVHjsbkZ2iLaHca+uv0BEBRNBt1/kf/P3p77ddmV7
	 AxenoYvmaqc8lMyR4gRVyG6Ia5ZVIQ0EDiHsDhkxB2bOvt9syhcYfduoA3ZQKBQR1r
	 cz9A93Acczq6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B190ED3517F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507213369.31062.154417767405931914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf1d83bcde6491d3839e4e42596603a7623c25d7e1b144c403c3e5a4905bb73
Date: Wed, 01 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775072133
