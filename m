Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E69A1F03FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749463194; cv=none; b=FGFg1kmq40Q8SFwn1f6IOD3Nqriz6gATCIqyAY5sycP9xAgc8+E0e1TLW/x7M6bBUqZ1LEWYDD0mE787J6S9N3cCniZ3Lm0g3EFuBybYfBLEv7Uru+rNUvE0YjCK2/RAwo6AQ1Gopmpf/pTDBwmjNNtajZQBNGR/pTV/CiEmLkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749463194; c=relaxed/simple;
	bh=TvL69hJzshCubkrQdMvjx6SXz1EJ6wKoUGQqQan4h98=;
	h=To:Subject:From:Message-Id:Date; b=lilR2lPCxJCkKPDJS3StKaMrpyZGtnheOfPP2qCs5+VTjUS4h3DU2x0GzcgMQyW/y5zN5fnKf67p3KzBB4r4B3jt5xMrzIDlSfC/jpQdQ6AJWlIV3DMP/EygoRs2xwV/kwzXQl8VhkldckK1QZ2xT2SsgPc0KCA8oTIGiF8GiR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q91Alniq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q91Alniq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749463193;
	bh=TvL69hJzshCubkrQdMvjx6SXz1EJ6wKoUGQqQan4h98=;
	h=To:Subject:From:Date:From;
	b=Q91AlniqZ7T7szO90FUxU4QcyEhtDvlkb32CIo7/3jiQd5l9qq+TPlzWjdSIwb1x/
	 lXCRAv3uD1/uWm7pTFrBbeNhXV9t6nBTqpZg1g7AvTr5GfK2GX9WN46twZwlayymtv
	 MNLNYlFqzhjoh86EZjPdrWfHNXN1k+npn6g0gPhXM0WFuVnv4e6Hu12B5MLO/7am3W
	 G+gudI+rAkyRKnzgH0DtuhxVDvemE/y3EfCiZ19hnVmES4nCjer9P7WujFW2pWLb5e
	 yjiz/vjfrZT/Yl2vq41l8H6I/KWjpjB8+aiV5b7Q9zjg0jsnpnibeXfns/DD6lyuQp
	 8rilIbvymttVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFAFC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946319357.31051.8028638467829505561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bbee0ce1238de5c8b54e1f7528c5aef01b943aac359a9bbffac0c37735d6c8
Date: Mon, 09 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749463193
