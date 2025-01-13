Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319CA23315F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736757954; cv=none; b=pKnUitDkC+GXo46YkCBP7aA0W+PPneCSC6ZHUKZWPjL+rho6Bk6jlOjD4/V+o63NM+gXhj6RtnBjA2DEX/J41p6AZJBaekTPDc3D9szZANI3vs0tqyPLEYfnAsEMboM2TslhKw6UyxnDcC/zARXtJJ8YN4889awmk63+tdIEGGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736757954; c=relaxed/simple;
	bh=I5aDuBnS+oXImKTTBDLn1SycwZlixywHVZ51JGTaf30=;
	h=To:Subject:From:Message-Id:Date; b=iL5/F7TXggzxxzG+4jUXivEH2Pp6mdENL6uqS7/ShV7UP1iSwXyCK0BGpUSUUO2qNoeVc5i/kasSg+MiltgjXviGoXrYmWK+EJ523nST10uMEjSEaf1jsK9mdIyWFERU11o80Iia4EPnchpKK2GWf7FtAM7Nrff/bHRE+IaubUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRDIQV4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRDIQV4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B0C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736757953;
	bh=I5aDuBnS+oXImKTTBDLn1SycwZlixywHVZ51JGTaf30=;
	h=To:Subject:From:Date:From;
	b=lRDIQV4G3SMaJnqfbv2QiulZFxeXRBtYIzbjZ/EPU2w8McLzkV5JAs+mtCnougWEj
	 fabvXfk5KO0FWCDiX1+aS2VO7KAORvHnkGuNMvnwRbtNfQSpOW3dZnp6Ag2/1EUPWT
	 Z/R9EC17k/TkxiGauzdRGtvVQujpAoO18g3vstkrP4Su784gxEcH5DuSh509e9iOLh
	 QwkBaJEY8QfRRbq9aSxa8sWwpHg2TUsEP/+NgTOHP8YEIYPIri1ShACkQ9wsmGUoVO
	 7XWGxOsmQDv77aYExtpS1q8gUvCg/gIu3Lz/gejDdW/2yfivu7c7l3QyeFf3FsZ4kS
	 cK/Iac4G7/QvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E53E7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675795360.7461.18091649766569790867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a781dba711f53a0abb927083f6c28d72ba0d2db02207c6de649b319b83d1b43
Date: Mon, 13 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736757953
