Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C80A1A2630
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750226994; cv=none; b=dXq9nhWkcpa/uvjJQ1VDbwNTXchpl1teOM+XJ4hkaO8DwvVPVWgHcUnCcSHIp1DruAwzc7yqEAY2rTt+8rI/N8OPdMepr4qY9FCcB5JGW2k27LM1GAqsn5iOfBLXJhXLIFxGhrboTtjXyytCHFdEfLINIr2S3w/M+y3org56WNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750226994; c=relaxed/simple;
	bh=HxmquvoNbUS0bhH86bfNa24Lhd/bc0E92ecnvneEKHY=;
	h=To:Subject:From:Message-Id:Date; b=P2x3r3n/1Xxb7BS/EaT9N04ydpcpPJC6H9vHHq8uvLDZyH0bXozoh0nvgHhuHju3hwRYBBFmXKdUs/mmHrsYKPKgPFF6iDVF4+SpCTLZUaiUTBeDHFMIrxmiNbr0gXKE00NYZhPIfTfc+QDPHFRBzvk317WC/lsbsty6yMoArZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cggsm7Ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cggsm7Ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD2C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750226993;
	bh=HxmquvoNbUS0bhH86bfNa24Lhd/bc0E92ecnvneEKHY=;
	h=To:Subject:From:Date:From;
	b=Cggsm7LlLEZyVPxThzQ0Uvo3BT5Ra8RO1sLe8SFfat4C7j45LXX7mTpUbH2InVo9P
	 72JXR3G2yCsZTjICUWgsed1gqu8f1o0ZtBgu/wD1BEAkWqOPVycB0zBmKSOpC3Pcmp
	 bQWJVqyi3T6yZhmUpiW+JXFai63oUAhpmZ8KgdQTA+SKonkuRUFRnZyT9CyYuY37bR
	 FK+tt77vOOyHqjJgz7Q+7Ufwj3NsYV7Y6uHx3jI2ChtglN6uE9uQMtIA+soJGyceuU
	 1cUzlffgxV6smvmrxXi44i7nh2ziHHWtxn0xopoe/Wo8hAge7J2R8fDn5a3VwFBE6+
	 nahbITxuPRzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A3C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022699360.13308.18434380210538527000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3152a73cdcaa7e629b3e87b1019ca124c62e1148b771b384f4f26c968ec33483
Date: Wed, 18 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750226993
