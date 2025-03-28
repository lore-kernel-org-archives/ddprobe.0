Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E02A1ACEBE
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743184194; cv=none; b=sFnX5yL59dfWhENo1xDRCP5Jaj8tVIw1vxHM2ivKzTgJBbDvhelCTbJ9RR+45hkSg6X5HqppEteagis4+sAuN9EbdPGqY3bjs3ZpAK4AfmDV05FHe9Jzoy/DJ7VEJx8a8WOzqxG1UtVG+dSa62WFd9fLHX42e0SDbLZjgP4LKXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743184194; c=relaxed/simple;
	bh=BhhWulqpDUASwTEnPGv54Deyi7Ch3OUC9F5o8iueQdc=;
	h=To:Subject:From:Message-Id:Date; b=jx/2Rz89giPVIaYwdiQ/y9DqhsmgbWdXMqo8nIYp/6XjScaSWSAseTDzGHFw3sTdbS3k9iROlSd2CQopzUpGsg1JwAyODtB5w+WZ54hPup8k0vnY1iJe/GyKGBjbEfWeVEJiWYZxNEl3A921XizLZRYnZSSkz613rVfbXtJCtoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZIaTRhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZIaTRhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743184193;
	bh=BhhWulqpDUASwTEnPGv54Deyi7Ch3OUC9F5o8iueQdc=;
	h=To:Subject:From:Date:From;
	b=uZIaTRhFlMCzQHYLHP7rh/qbAEVwpEV32JUmHa+FhbzL9eN27sjiciLnwcd5LaAhh
	 C+4PFpj0ex/tl7xVxOjZcdra5M2ZoVKZ/PlNFdchYBk66dOiogtNfL8TKcqLz+MVtV
	 VMgcZYkOG+IPSTtfdlCEe/Ki4y+tXF/+FM85gv/rzTF73+V27EgVLpG2+j4M22XToN
	 +6lPt92TCXhqOV6o4LVJ9+Bp0a4AP8KGQvpiCcses/ePPmpXKuQY5KfkhdFjSAD4kW
	 b3XST9UhN/XJJWv3R9ezBnKNx+5DtsuTCsbOhTV47nYWkmzDgpLnPiJo/5vdzdHUr8
	 rCayDlXMXWVFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D3C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318419359.2736.13145233754323850341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569b78df770503ff0124be47e3c59c03162be9927af7c2659143ec28ecc8d264
Date: Fri, 28 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743184193
