Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCA53EB7F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792140034; cv=none; b=NGtWvUPcR7le/R8MGcjInrCrCXQ8/A2v1omopVqicAqZY2ZDKV9bzMBsXjnviP2Yg/TYzfHJWDJsePs5Ww9oFeDRAajaa/C7FiMh3lgCXfzJvu7G5yZpSZ6Hm0eahvTx/cHXWL8rOm3OA7lvB+4DKHdt6G2ET89zUwzNJ4hyv7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792140034; c=relaxed/simple;
	bh=4HPGqBR7X3xqXu0MBhSq0Tj8bL1lbATs9kaW3uOZ79I=;
	h=To:Subject:From:Message-Id:Date; b=WJWaIhZZojZnPi6KKDw/DJ011NelUcZV2fH96jKBLkqM5kT3XmBCahcAkhcC3/Ir5ArIEmKWpdmBldBS7nk4JJNameGG0kGu2jWkM68GAhGQswD9GVAvCJbCQZef5xbj5tQJ2zV3c4e6b56jGRPNGhGZO4BXaRhpOHbb0/6+uQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ1NQyTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ1NQyTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6656C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792140033;
	bh=4HPGqBR7X3xqXu0MBhSq0Tj8bL1lbATs9kaW3uOZ79I=;
	h=To:Subject:From:Date:From;
	b=GJ1NQyTFYi+wGi9AM1rSJRXXpIAuzDSAN4TMI7/3ycrtLuvGDMXJrKaXZIfujWCnr
	 fy4iZisrsk9qflxiadfMa8io9/Rs/9GceeMz8vBdnjPSTnK6Ayws28S7BeEnDBdNCZ
	 ckAxb60qmLHiWy2Es/BoxoHjH1sto0iSz/CSanyJ/OLd3om3Wm84hV7tR67bhVEU45
	 GuvHckliUoT/yM4FPTA16Fwfjbi0jcxLqts2NWVWR7J7xJQ69zk4dtTTDO3osiFW05
	 ocZnKvjwsdTOex1ICWpQqlUY3HlUOouafek60zr5D5NeG+E4gKUH0ZDGl5HDI15f6L
	 T1unhSBlZ/MNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31FBCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214003372.21090.9313578146848781431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72d017850a9d5c72615eedcaa0a3cde4527992aae1e804aa00fd45a4a6ee1e5
Date: Fri, 16 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792140033
