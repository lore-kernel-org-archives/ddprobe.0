Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E8C3603C3
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780216474; cv=none; b=qGRtyINxgKuKzNM4D11l2x0x+TcUmTq6TmCmSkToZrXXSSKZExwWgBB/BoeOa2F2AqealOjVF3XGzHIcto5jboHAC3GPHZ4f18mOg+l15BF4bUBYYvB8ar05wSDzjqZY1KWiRUb5xReHmGOSOhWmDsDZDqtGFfrst/eyk0lapmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780216474; c=relaxed/simple;
	bh=g/T3Kepbp1cve6ZocXUW9I416sCCzImf//Kt5N65J1U=;
	h=To:Subject:From:Message-Id:Date; b=SAeBhv8gFiqP5qxDyC3WqyQRYg8Wg2BmsWLOmogQzHeF2Fm7ZWY6gWMyZ12/AnPaq9IVneagWN37UaMMYTaIRV3X27PDsFkh1CAp1sU6XPDc6B1ouMkuyYWowuy0xf0oo5i7t3EELvWp70C9ZPvphxSxE8zft/eEE/5rXIoo3xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjNb4BW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjNb4BW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE51FC2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780216473;
	bh=g/T3Kepbp1cve6ZocXUW9I416sCCzImf//Kt5N65J1U=;
	h=To:Subject:From:Date:From;
	b=JjNb4BW9TrdyTByZqz6eb14mlbhFRZe4T7/uPN1WKRLDUX+IldxLOvDGfUX7yQN3+
	 oVkbP1Irau781MgS0gx4Y1en8W9JANl8yDY7SjkBDUbRLsQQBkkZ+mmVK9lw0yEpHs
	 920dOuiKP2DKN5Zjy2K2f+tn+cshnbyn8oWCDl9cBtrbbFVENy93zWRaHChcxTsXmM
	 hVeLJXkdL/JF19AZ0wDIDUYCaIGvi8e2G9LNRbac0BALJb+0wuRH1JA5Lec6ptNE9J
	 mEblMw0aZMOV/tdAg6v26p7WcNKejpQ3aYV/ZqQ68L+dlfYN8e0MlIZGJWJbpihVtZ
	 fcHHnWYsACUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D93CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021647368.23834.6741910325994974351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af72a891af0aa2108e8ed93cd55932c80cdc19d0bb0e8b2b1752278747d9604
Date: Sun, 31 May 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780216473
