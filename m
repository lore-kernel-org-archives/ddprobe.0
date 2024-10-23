Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D7214A609
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729690554; cv=none; b=WP+PlFGu4ehTMuaVCOBOwmJLqikSSp4SegEKOMNxTTUS1Usyyhwr6r/q5SL/rzPICwPmSRAbC2nWRfGQGbtnQPXdxSAonPaZB1x66QMACJSUwThS7N3YDkvdhO6gDn/SDLO2RMRVXVu+xe0cVw+uGS4quww/yH2u1jcSsEytZCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729690554; c=relaxed/simple;
	bh=zx8y3+t7tNoxFr1KZKbbi0wG/oaCr5E96qdX+jlxElk=;
	h=To:Subject:From:Message-Id:Date; b=ZeihGD9MUY9eeZUcEUqFFvWfqgi9jWzVetHscKeszT0xdZ1inmd63TeEw54v1kBEGMfCYeD3R7kPdj/p+W/yFGyOfS7qNc1TlxBt8/GKQuQ+Bt/ufuWAZkaN0tmnG6K5iA3CjKlRUpNaMzAM8K4pa+lRDBFZbvbm7yWVyiPHQn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnINz2Tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnINz2Tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF04C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729690553;
	bh=zx8y3+t7tNoxFr1KZKbbi0wG/oaCr5E96qdX+jlxElk=;
	h=To:Subject:From:Date:From;
	b=OnINz2Tvthffzj0/FMgqO3S0KvwTwmr16t2dwOYxsCiOItQ6XiKULIQxkLGYDtxRu
	 seb8fgg4iaSy86oMvwVRWdmi/m4onji8P5/Vva4Qb0Sfe8frfu3WIUJcY72Jb54NFN
	 cZFmjnEL1fMOW0WbOSy2lYKYyupPBjJURdDq8YG6jN8eYTeOIBskfAzCvFtteOkAWC
	 joq4upH9rKBXSXm0YDfJ5OYYPG9TcZ7XhyjUdzuG7i0PdInBvdUpQHAv96FhZVnGlu
	 j0sOrwft3WMmyRMWPaW51y8MdXyuyEqkjqPeNEVnf+zVI9RiNEssi+Bpcqh0jjrBJp
	 SjTfdBgMi1ZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFECF5389
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969055360.28458.14789840595663318223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d37ca7ea6ecb5858d4074a77eb528572e872d3d60b8c12905a9e15afe47abf
Date: Wed, 23 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729690553
