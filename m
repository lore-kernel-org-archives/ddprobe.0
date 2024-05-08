Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B53133423
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715208143; cv=none; b=pQd2V2fLQoZ8yfLLS+3raIBy5hnIB1MVbcxxYKE4GOIj5etPEi8E6wBD65vVI0iHgAO9JtJZ0Q40nzJ3q21Gtci0T6PuTjvZmpkK6vDHKboHI3UOJl1wdFchMeaRskK7xANzxq+iofWlvMxihraF4eDZivy7N9+gKXBUhS/L+XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715208143; c=relaxed/simple;
	bh=oJd+O16VNCRYZJ6oi/CsHBZJ2eFcK/5DVGpwyBUv08g=;
	h=To:Subject:From:Message-Id:Date; b=F2SCmpVJ8p1M3fhtCx9PEbyzSspmgCZURgbGaarTl5eSoFn6D9rPcxgy8iZKQL0yCHw7touzquJ1Nt1+t9OD26lKxyWlVbdMfW8bVtxyyZQby2CdcPS1jm8cRjtWIUk7E+4wejCe4+f+2kdeld/ykezhrWLjZCH7DFt5RcykVCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHxN5+V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHxN5+V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61BAC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715208142;
	bh=oJd+O16VNCRYZJ6oi/CsHBZJ2eFcK/5DVGpwyBUv08g=;
	h=To:Subject:From:Date:From;
	b=MHxN5+V/51k1QfkWBnESba0S/2ZQPg5hjpfEe0utFlkgBKEURxco70NYqSKSp2PfZ
	 MfWyY2AKguhTKWJ3IBt8AzgpXHCV8tu9gt9Li54rEYNCRjBBl7zM5evvZAFdSxOKUe
	 TMGiOOGB4JuGkMyOpdmNmalHbtsd7IB6Vx+UlNfe+r+oyRg3NWuaUnXSZoeZbSLKAV
	 JhM8XSkDDu1IyCssi0eg7sPXhz5RHqynIN2ioXkf+G2vMCmYyCUOKLfj/OzHL44od9
	 14zv3TAux3cY8cZzWW8p/xA8N1CrosGVUgzD/75l1dYnBklJzyzGGHNWq8mGp653zh
	 7lwJ2RO+46iNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B35C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520814278.7014.14776236136131943669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78d084934321e1f5aed0b88a002c7682b14e31d846b883d3c783b7d44698566
Date: Wed, 08 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715208142
