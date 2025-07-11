Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B02D46AD
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752241794; cv=none; b=thawFhwmpEfjiXGKJ1EveO4oalb7/Fby19yXQe2MXTn0oACWmX0xx478FGUZemNYAhndpitCs3Qj/Jo5U4wXuiHepa69+tNrRq6dfhrSB3QIYwLVSXskmB31lmhZzue6BpaJyGdMEj6xDZfS14AsZTaGD7AfEwmDa3/eEGDtP1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752241794; c=relaxed/simple;
	bh=Gf7bhtzBdUcpGAofHozCHGTKfBww8U8WlANLQMPK3II=;
	h=To:Subject:From:Message-Id:Date; b=IHEdIsnraNjH5liXs9M1zM5ubWgyTksmxXRAJawOeZG7VlZmsJ5pScHf2g1THYts/PReO8hO/8sRv+b3Hp6LcIxwoSL6J5/75IgFjpI8VLD4EzXxXJoxu6N/8ciIN39sC2aN7hE15VKgmAG1TDOu0nmtUxE+xc9/e0Tr6fpg+WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4pF0Jvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4pF0Jvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E85EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752241793;
	bh=Gf7bhtzBdUcpGAofHozCHGTKfBww8U8WlANLQMPK3II=;
	h=To:Subject:From:Date:From;
	b=B4pF0JvmleM72BCbEnL6ARyeYehbVbsUvrrDv0BCTSRKZO8q2VKh7jsuqE2f0BeNr
	 dcq8Jknehs5vc11CxdIQCsm3aWLWowQVL5IX7pSFQID2ZThZEDXdgG/zvqT7VGtag3
	 dQsxi2A/pubQ3Wz4mQdizwQUfApXh96Cn9m0S72aSuU2D9D8ZQ0f7hWgjLld8cQ2p7
	 7g+Tf9RxlZyYCA6CIRPAwMxLS5lGsBzdTmKo2PI/YUOcc2XqLbJiHo8ZIyTxnRMu5Y
	 mDfbOPMZ9TiAU1YrBvwtlvHtPx0CRy+OWytMPpXu6sVTRns45LFw7GRvYjxkTa5jhN
	 0vpPf1ERszP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F804C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224179357.22853.3236640095933503819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb84b34d38a55bced3cc6c25af3ab5199d245b4546d195f6684e2b397223c58e
Date: Fri, 11 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752241793
