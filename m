Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593633F39E4
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789705834; cv=none; b=k5Ra0Irf+lLEgwG8gVn9VMeW5MzfpDNTjmbFiQydGjOCGqqJbYQlVvgEHYJT1ifitFyR+QDBUgGlyOPlyvT0vZgZ+4D1K0tpNC+ZYjnNhnhJ6Mq9vbKIS+HwCDaMykH2O3DbEuHBfMuF5mCeVIx/bjinPDtm9accXifacTCXheU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789705834; c=relaxed/simple;
	bh=+bF5y0MLkzG3QvF5245oFma8CLddDQayYh1cdzEp1Jw=;
	h=To:Subject:From:Message-Id:Date; b=Jgl6+5CtMOqhWFkyQ3ePX3U1w+HpuECCIiMv0JXl/G1rS/5qUvopgkknqs7sZl7u07YrPvKpS4XPGiBYJDoa1Gli4MH5aIJddiKCQv/HZFtyK6Mlv4nDhK3tFAxnRqhCV2As5tcMhZSIJFHuFGQnnqfLzMT+3ZnkcBv4rcVJ2Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SchUy+CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SchUy+CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE77C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789705833;
	bh=+bF5y0MLkzG3QvF5245oFma8CLddDQayYh1cdzEp1Jw=;
	h=To:Subject:From:Date:From;
	b=SchUy+CBYeJYbi8T9oMo0Ed4uyCCW6fWyvHXjXNB3ZFNBxYsW6+lawS5CDL0OmeMb
	 xm3N66JgnrAQ2MO96xJRa5XZnTnrrG1Zek4qZ+o4Pm38XO1T75RRBDZdQAr9H9dVnc
	 aWIi6Eh385wOKwIhrWUleW/PTg6lN7348SwEomAifXoFchQ0GOcFhuZSPFIK3uP/Z1
	 AEqYNex+qMNYzV74oKFdwx61bo3aJMErfUVqhooyZLcdy+DNqlSSAmRv//aTecGMIB
	 d8tWDVS2nc1m7O9r22uEzMyhH/2yKRVANQKkMGWBT497EigTJsMM5UJA58RKDCl1bu
	 k86VTbxG/PDAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F44C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970583368.32207.17385475307783881442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7015bb1771d5a18b2323efa7ba1087f2772aeb6abfd1358b23b725043e362e61
Date: Fri, 18 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789705833
