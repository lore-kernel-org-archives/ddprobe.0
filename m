Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E3015958A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736966754; cv=none; b=GqXpzp8vRmmGp5lcB+hfzCKozTIZkbxG9FJ4Bg8QRNk6sJ9qsluXqXhmXjn2AllM4akOvN7ijrf1Vkvsvt1dZUjLt6BZZVemZwZ/dnd7G72SqaWquRKqkWVfa9PGatQr7L0EPivPuyhtSLa+wzg2Y58dK31ryabhkzIAXgtzCiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736966754; c=relaxed/simple;
	bh=/pQzfnip7iFXs6npGAFmoZPut7YsVSJB9WHWdQuhvHc=;
	h=To:Subject:From:Message-Id:Date; b=BrrCgr1Mg54uXA1Lo9Qh5mBK9Naalqm3ilp8iTWIDO6k0RmbGpzvOT1xqmd2DuCuiCB54qIx10lMaB445FddDZ2fEYYI7NCh+0k+U+vMYgsf6XNuuFeoZmTM1kmw0mIs1EWzBetM2d0DgN3xrgp8zolYrIy9ft6YgOf18pfdvCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx+awlxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx+awlxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF6C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736966753;
	bh=/pQzfnip7iFXs6npGAFmoZPut7YsVSJB9WHWdQuhvHc=;
	h=To:Subject:From:Date:From;
	b=lx+awlxK2Z9GeEJVEvgUwQRpgrJG9aiWZCNFqky2poS6M+j4rduYv6sz6faxp8URc
	 wcAWhRmo9ChNXXSY0FrCSwocUL2EfrWhQ4PiwkEmD1hOQrV99MFrYeJ9Lw75VyxVUk
	 hkiRv+NzYCsLsHHNnhc2rP67fU3NzyJSYjgm9PNq+BSprstDjtQmXjeEiiSrGJ+Vii
	 fGBa8d7ztEKfGJb/0poz4Nwa2qm0oB5JkkawgrqjEsDus/cKShKpVmfbH3N22mjGhc
	 bt3nz24pX3XhFjICOeQDn9fz6XFylNpc6UjvYhGJzusvIZiKa4raVHJJ0RlhnK4IpO
	 /yeQIs9jIWTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98646C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696675361.3505.15716004256827669790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfb1ceaaa8f4dd21d0fdc85bd0d3a8c46570a5f36ccade1d1d9421bedc57a2a
Date: Wed, 15 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736966753
