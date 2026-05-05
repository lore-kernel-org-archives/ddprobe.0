Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD93361662
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777990654; cv=none; b=kVYzRNFJ2e0/W3ywqYSzTs+w1WOwXvYqtJIhh/sdUqvgf/KZxMPns8+TOxdpgutzwe+WiOoqLvmnZqOnvH0iZ7/cnX7/Nx/cLdGg4QoKGSbJzdXzxh1KngYIDjHMt9PThp6qhXKTgQqDY3fvhNC0oqGSwO5bIMBp4E1lbRB658Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777990654; c=relaxed/simple;
	bh=DR39YAlJwVzdMNXUCG684jpTgUCUfCMeCUmvPbAPG4U=;
	h=To:Subject:From:Message-Id:Date; b=ew0NmZiF1Q7ncCF463w2w1u01mLgKnjJMtH0ZVYw16VVFiA5rjn7NSpad+vGymhSgmAaK5EndB9c1np/DwFFItCb2Pb5f2CLfWYtgKxGFvNlNIBWFsCFDfKWL84ScKOh7eS3OBcNCVhRADAYSiP9EsowMOM8NjQfI75f27Fo+Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6C15pA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6C15pA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1841C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777990653;
	bh=DR39YAlJwVzdMNXUCG684jpTgUCUfCMeCUmvPbAPG4U=;
	h=To:Subject:From:Date:From;
	b=b6C15pA3OnHXmd8OQgfQ7ZETc5aqY5mgJc1NiRt81KEB7/vS/aO23pEu57ldz5vRr
	 SWF6uV3q/RZXvO1bbTExam/PsY7CqZeAwuPiUfJrNqGF3bT6nsOmrqXApGmW9TpH9a
	 ioQhKNmt44dFijbLyWybDwjWL8U3ZlLqub85IHJjyWGgPhjGvgAJSVX5qxBrUeGbNV
	 +ZpQmhujoPSbd5t1VOUl4Ccw8xpg3cL8vzUHkDEbBDy4FGnpVhCFzR/ujqyLzRGQP5
	 x9SftFb0bp+pJisjqktLLX3jau1k3Oh8pFyQX6510Gee7pYTazw7SGhGElBHr31ICd
	 /wdHGuObrzaFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE146FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799065370.4626.5860090332531047886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3671ca27c663fdabb3b2989c8027eb9281266b1cde7cf426281014df7d14ef9
Date: Tue, 05 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777990653
