Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373721EB5FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752906594; cv=none; b=eve3fqvqCw8/6WhOeR64uE9aRsSnPlWXnNLwDURfAK7o6rk0Fmdzbp/ZPDHp9fnA3um4oynKlTko+xHg+4j+Bim0c+lwsIrGmzL0bXtGB8MUFV2FAZCK591w4rBnjn/UEQT9lxXnO0jWIHalKBrzsfsggBSE1kYMaoFDy43EDgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752906594; c=relaxed/simple;
	bh=67e3HWMYW0Hyg1FOuaqH4+Suzss0TLno9lQYjon9R4o=;
	h=To:Subject:From:Message-Id:Date; b=ouq5RyUM/LLaPFBWeQdtMlKSUm3lxR2TreuEh93FoX0mUD6IyS0KowdvrAos583FmRE77dk9zRp9sDX5tPvlZYSxEMrz+hBtVWd+10um/tZoA6dbXDSr5FoyxM2P6sO1T/HhZZv5P/2eyrC3g6dCxkNU8BxPNBWNdDyIrpFqWMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZbJeNPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZbJeNPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4346C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752906593;
	bh=67e3HWMYW0Hyg1FOuaqH4+Suzss0TLno9lQYjon9R4o=;
	h=To:Subject:From:Date:From;
	b=iZbJeNPBFxqxeV/PcZQF3oBdZDtHWA1pUibImWYvB/I9Dbi4Est27ardD8Ry/3awg
	 Gh8HStNs+Ns3gyhouLfswajLa6VHUFZX4hum0cBy7brK2yTYNZs+1CQkKkMsXNA+MY
	 tmW9m5eA9APPvm1WdtmyEyo+LUZ8QvHa+Oyimol/3kXk0b0g1EvVvc7CnKzxyXYQPg
	 jZAvj/S2cR50q9gXaOtwGUzTTcnvgnaO41umD+p9sWTTsUhySa/PpH9eckVeGI60hK
	 Leqzq+YaNQ0hXtItkRoRFnCXenG6wD19qbCAWPxxCaOGTNgm17C4yvTqz6+BKyFEr1
	 GG+YqkGa1X/oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92962C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290659357.16332.7264408332482861934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafce8935087fc8e80913bfcc92c7a45fec488214d04446faca673399b2e3218
Date: Sat, 19 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752906593
