Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B22161321
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738764354; cv=none; b=T1hQgsGcnF3FmAw31D6eJ0Bxf2kdjBFL93ZnRMjOATvq78KpNHxInS2/nQ2E3A/3h2yaMiUQ8DZcm2ks9mqswpMYdtEcOCobd/dEHtgS6WEp2VLq4nbAFSuczmqQkcggtHeHPTJzAIIc8TWthJLU4C8KoE73BrSRUMufF9/EMVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738764354; c=relaxed/simple;
	bh=y3dg/J6z+UAqhszLO/xbAtZYEriZBDgEOG+fXiMhVyc=;
	h=To:Subject:From:Message-Id:Date; b=f9Ev61yl1RMHomo3zuO6qE2lUmhrcS7T89TvAOO9H0iJFn6rj5Z9DdrTaNWENX1dZG5XL/k8Bp5F5YDg3+fNvYII5LFqTFI9EGMsMOX1ZGudU+2eU4EqSssTG9usLClLeiBTB10xLps9tgOTM6tBOd3MsivH4KkoOAhxdiXg80I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Agmy47zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Agmy47zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E4EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738764353;
	bh=y3dg/J6z+UAqhszLO/xbAtZYEriZBDgEOG+fXiMhVyc=;
	h=To:Subject:From:Date:From;
	b=Agmy47zilBwRAPVwVB4hSKumdeCb7vgHXCaZg/nwGppzuDGihQ5jL2xJvv1rT8CTt
	 YMvVSihCdpqhLZNu0A2qjIUSB2Bw5CIY2N+Kw8ioDC4RONhjkpfXhBlvWqRuH3W5gB
	 Gh/wydx2BJb/sCv11uEtiEjMR9pl4IENcMc6tSIXZDPEgyXr2XQt3joiscKJLKCi0S
	 ApT6iDdvYbLedGWRMC8xPrqKAQLr9kfaVMhFXi+slRAXI7Ifbza084OEdiNXvY7KlU
	 xFYQ/3NZZsk8yP4ZQ08rXvwjHjkwT3Bj4oGfORs59LUR78gzC4rdoc3U+8zsKTXes+
	 ceIlACAEwN8pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D3BC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876435360.3059.8962674030254438221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a847f6d3fdf6a252dac1967d5de04efea340deaa3df5508ab2feb2e807347b
Date: Wed, 05 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738764353
