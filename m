Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A4E17993
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744096794; cv=none; b=bD2D2SB+tmJelkXO+kNDtEwOtJvesFBNr26QEwPEDB+PNhAa3g9SI6zypeaU5TyKIOHK7gKj1cKXrAC/B7tg2BhUkefojsjlqI7Hfe3ofINmfdEdigdo+rulfIngT1+8DIQxR1w+0YmKNgdPcwF5XYtvemA5Z1dWgoQZLx7VUdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744096794; c=relaxed/simple;
	bh=YD5BjSPPY/DGCIrLvgNKPd6VF1M1MI8R5uec5vrHO/A=;
	h=To:Subject:From:Message-Id:Date; b=IhDsY+6hIwhJh7zNfZZG26d08uwUyFZNr8IKdhocw47ea1FI82kBLQvhikK/z0xZEg69MIrBh7QYlomdkZhzLRZoLNLJ7Txr5WmG1+wdmipgdIfaAMu9xzYAJcKxa4JvFCy3GTmknoOMXPDPCr5YSsIhPb4gHq/o7r/en2PgYak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgrPI9WL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgrPI9WL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBCC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744096793;
	bh=YD5BjSPPY/DGCIrLvgNKPd6VF1M1MI8R5uec5vrHO/A=;
	h=To:Subject:From:Date:From;
	b=TgrPI9WLVGHT3KEZ4hXtt4N03oOZjNBaqpk6s7Z4kGch5BSTAfwnP7CxdNZz62HxA
	 +1mlgi6IQZgo9vuwDABQ3rm0gAk/JVwQHL8vpQh9qWtFQc3aV4xiNI1hQuL8drdTPJ
	 Cp3Shyf/jo4SuHu/dfDd2tFmWlKWKpgQbXPjn4QOGfDLMZk3azjPzxcqzim88/nZw7
	 fkiVd0GGkljPewe5H5SXvbi8Z3ypzRiIzNw1YA1w8e6T2BfF4B6mrFNTRBGpbK6le2
	 1iH9hcIoCoy5KnF1DQBZH5BDSpAIEkdCRobgrLKIFaigyXBsVC1skcKiCb4btWLUnq
	 XuhFEEzWuITbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94714C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409679360.25007.1515192750188803675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c120dc9bdceff0ac5b96690e51fedd9f4b6a5d0be9a2620856399837bbf5be4
Date: Tue, 08 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744096793
