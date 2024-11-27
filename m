Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138DA14A08E
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732694754; cv=none; b=cZhl2uV4+VwMCTR/q9dFB1EUCo74s02Kfa1E9CrsdaBdmT9w3izfXSxgdCYN4A88UnuD3VCqOViTcIv5gHlojqnwQMJrVbNnNZzJeN8NvaB5eu5lV7l1zgc50hlnqIjtjVF/SauxBzaQPZrayX5rB0fsSfYTYlGBd606fZlEE9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732694754; c=relaxed/simple;
	bh=305LEd5apvarrIldJ3Od9f214nme9cltiU0cccxIzcM=;
	h=To:Subject:From:Message-Id:Date; b=DSyDkNMbara3qUjNURA36f4VchKoyqA4AMumgtT44H/IbWKd1uCcX2ZhWpfjeV5GoTBNA1vSiR3XC4cYOUT9peTIvo6Nog1CuDBNs8DuHNXAaAjoJU8dv6o4LgkcqlHHeqi8aPxGpG6C9I7B4Jb/PCu9kAXUpehSTF5I6souP0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd8JeLU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd8JeLU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B84C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732694753;
	bh=305LEd5apvarrIldJ3Od9f214nme9cltiU0cccxIzcM=;
	h=To:Subject:From:Date:From;
	b=Nd8JeLU2nQkrRGzH4fYwzyrrgT7m3sK2R9gwqqBvjArVpBC2Qm9qExancIlZOltfC
	 9DI0izE3q+mrU0IOlscqmQ8Wx5HtbSSnRKaFU8JBmvIEQqRQDeBGc1Jr13SLP5ucmc
	 8QLuTb3N5wmyATqIQo9CVvp/JjlxvSAiDv7JQwxxOZtR1L51pa1ncds7yMKod34KBH
	 avLT4gwtB2Usows5l+dmo/y4u32cEc5eJwOIo2QiGcFcGThBctTxjoav8SxQ5db2eG
	 IRvOriVyoN/iq11+5cdRJI5GTQYySLLoZPhjJCDidNrd7a9/qtXT3hEHn0AcPFU71M
	 6k+4mBG96TwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BC6D609A7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269475361.23006.17178712517738385530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5acbf0c17630ba815cc0c33551b309f311cf27452eaaf0e64aabbd7144e908
Date: Wed, 27 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732694753
