Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBCE629
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737592554; cv=none; b=lwwBHmlWn8P0+PtREEFnPqYWHM9g3PplmGLV29b4AAaab/OYPoQh9jUadCy5KrT5h61QX+fjgvpd+OZoK2x8eLYwJPkgxVXshUzN7oc6EJGFMDdPRvL1rDFAYurwzU1Rgm5DHKAMCxH5noiwKEv4FDx5sf70W84ikfXvySaP1OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737592554; c=relaxed/simple;
	bh=cs3IfbbLsROKPOjuUq/n8r/LrLTGUxqkPq1gfe7CYZ8=;
	h=To:Subject:From:Message-Id:Date; b=g7HLlx93qlhsPpNxbpHmVh3VVXU3AqXLKp/sXDoS4PZMpIvdjhizxVA7kZElxzJlJF1ypyfU2WG+iQ5sAYBsg+Pcpi8D9esVOsdli1FEvn5PLRGUds0T5+FDBUkahbV7sX0z1IoK20w6z6HNffsF6yv9Lr84oNLOBZi4q+PBxug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7/Nnj8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7/Nnj8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBBC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737592553;
	bh=cs3IfbbLsROKPOjuUq/n8r/LrLTGUxqkPq1gfe7CYZ8=;
	h=To:Subject:From:Date:From;
	b=I7/Nnj8BqZuogYY1dXKPmVF9rPlycpcbTeR1oRrRw1a7qXb8AnPFe4dE/rD7BvT1I
	 a0Zn8ZTWXazjbVdLAZR9Qr6Vm46IM9qbjreLo0U3G52i1Kr0qCMuHSvN8lRSBvS0t7
	 SgMPV/z31OIry9wNLGG8nBRijAC1Cmp/dzvmlYDDsZHiioB5W1qXxkLOCzVqJ3L7US
	 ErXA9ZXXfksWLDqUizaocD4fHoAMdlqDoNSqdLDmL0h5erlkk1poZ77N6Bj4fAE0Qg
	 r2wDfj8GZZ1TabO89KyrN0xOCSSPMJonwyR9h6eEv8Eic/Ate3r3qEog8/2eYGNxIr
	 KnDU52qwIML3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93986C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759255359.24239.7960196527125416223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d815a9094ed0132507f1addff6fc9ef116e69d7a5e5262d88d8e06a0700410
Date: Thu, 23 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737592553
