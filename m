Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF827B4E8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766248434; cv=none; b=GDeFc9u4jhCNGtvkVoebqYoG9BlhknnNzbI5zPc4ovxMuaw7x2KOc+H0FqSSArC/L6KOlQYWDqKtZQhybihF8+hgHxU43wnLC7kTEWhx6mJUZU0vL+VThw03/EYtfmRpCXGWhI4aWLK1/y1GnhoER3+ngJ0Osu3X3Y1f/07i/pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766248434; c=relaxed/simple;
	bh=vSr0K4bkCEAaukBkKVcCicgLAu2e5QmVb7s9wycLmAs=;
	h=To:Subject:From:Message-Id:Date; b=BYlPvV3F7uZXTjkAiPsA9O3Wn/G4vpCn+U/RF5JT+jZ5di3QA4LOfKnDNF37EztCHdq/37OT82eUYslVpbpXOYrw2GBRoYDpKbdp4KPEmplvLIygnF/XNBHK9e3KPC+RjwT5sjA5nURVajs2azoklZtvrUdp0ygh+81gxB0S0yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kj+L0PCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kj+L0PCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766248433;
	bh=vSr0K4bkCEAaukBkKVcCicgLAu2e5QmVb7s9wycLmAs=;
	h=To:Subject:From:Date:From;
	b=kj+L0PCKaalDLQ0oH0dIW5xIAEcHyFZZC2KVjY3hMnRy81gDSBO4YpMsVfzEmePNT
	 iWcHY01xKS5/PPKOtxx7CxApld0a+RrKSwBQABzdcCSvHxXqH9dHtZJixr5TGKxSGo
	 DRr5cC0da9T1dPaQAx988elUY8hgWVwRbYBA8IY3nF29XSDgFZyIscDUTTT+7p+R0S
	 Seamis/GjnECp4L3O3Z9sV82S4N0MvKUalSr6IASQI4whM70UtSJ2i38iKBJzpFp9r
	 IArllTEp4jU/KqYEsO1YCfDdfS/bnjr0921CnP1r7RQdlYbjUWgUMZPgDhTYCF88sQ
	 HGW/LXXaHbPqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ED2E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624843358.2907.6087281478638066702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c413dd3f01a6fb16042c74a7a9795b9a59b8ed24ab3dc75531bb1b9776487d4
Date: Sat, 20 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766248433
