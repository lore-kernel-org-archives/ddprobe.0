Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254D013792B
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734018954; cv=none; b=owHH4rjLyDzNcc2dQrp5+3uO1VyG0Ajzw+0WL6AStKTsfl39muRS31nrJGWxcNAupEB0PWIKvfPAmUATHm8X3inH+eZMZR3/91Jjqk3BpsLRLP17qQVuKH5A2GKbr7VlsoPoHQyQp3YCuXzdjKQDV0fgvw/zBA96FLd0j8UY1B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734018954; c=relaxed/simple;
	bh=vnAaoBF/g+z+H39Pl458fmFqoyccMw2VKC7g09V1Ddw=;
	h=To:Subject:From:Message-Id:Date; b=A0xcThXHsSUOTV6vghLESu6WlprEmPLIvIcl5OfK5eaRcCO2kzGb7fV5zujb+YLgrFkN9q+20ZsusCMTpBS0G3KFGCpUw/1A+/R1BHqhnG9mC+s7AP3upXzWBi+RuuuuKs+RNFMlphKXmsJ2r0paeA82/IYDGoH0L4k838NBkHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMkyZxXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMkyZxXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4348C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734018953;
	bh=vnAaoBF/g+z+H39Pl458fmFqoyccMw2VKC7g09V1Ddw=;
	h=To:Subject:From:Date:From;
	b=lMkyZxXX07amYkpgUb2q/hcFfG934DieOGlDaEGMuFRJ1Hw/OXrPiIp2WGYd/o60L
	 Hrgj8Ar7kPbu8f7GyoDHwBPzh8beQioHgxBX98ePvbIS9VqgpDANC0kwetS6WUd+l1
	 aSw52LWZjyK+Q+Hd2ZBLKgean65dab5BV4SmhnwD5hLXeHSPBqZjdGB6lo0mMdvUFp
	 RT4kJoS8c3rWHCkIq0wPhyjAMf0lc3hh1ax5nEV+DG0hTtVTX6rVLlYwQ9KQ599xoB
	 MaY00cXBdYaqNedVBQp3ZqNYwA0ArBkunPtcZIPOxCo9roOkWHP6spP1nBPBdSTgGP
	 gSnQP6YDtzsjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDCE77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401895358.22670.5986868855572985136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b24d1726119fa88be86c58eb17f36bda9900795f55259dd8b673da5b9c6f5d1
Date: Thu, 12 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734018953
