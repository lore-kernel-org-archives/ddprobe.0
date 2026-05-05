Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C047DF85
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777989454; cv=none; b=YPJDABFDMCJq1Wmyxb2aexlrUc+pcn7n4IAkcRGBcgGv/rMEuvGVEr6m6bsC76BVn1UQvpyKQU9eOy1iD1nAjU42IWigjBFYoWqr7LRqdH+Gh/U3YQ+AleNBqduf4w1pocTsZ8R3920DKfY37IWLIj77GLJzGad261nhykjEpPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777989454; c=relaxed/simple;
	bh=CuW3VTbqPnCuQp7kCxiu9T5eEWwMZfkqYZvUvX+WNjg=;
	h=To:Subject:From:Message-Id:Date; b=gfbxj8THzZBPEBqi55J4xUF4VFtiBOBYbAnMQjOtoNJTP0gr5d8JjDPfJxdf/USsMM2WvZJqPVADq/xG1Amy4eMLvRAVfUAxUOKTlOD0UdcorRPV8GDc4nFOXgvZPabOC2CmFsr7NKutlTOsZ47ZxCOxOxgL6o5g1FcO0v+018I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNDw6VQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNDw6VQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B697AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777989453;
	bh=CuW3VTbqPnCuQp7kCxiu9T5eEWwMZfkqYZvUvX+WNjg=;
	h=To:Subject:From:Date:From;
	b=DNDw6VQg+7G4BOLwB9Hy6l0U1Ld3Hf8N/iVkLZQtGXo6McUCom6WXReCR964v0GcE
	 o6kqX3CsCr4WEWl3AKew0umidOI8GnPHnh5strMVfUY6zzatuF9bQZRlSlB56qsOsP
	 HsZseeWGyQZRlsydt1YvBE8986Lz19cDDT/cP3KBJmGhPn23wrwS7ovJqAThS434Ar
	 IxgcPpeZuaLBunYM8ZT2qy8xWlbyfz5On2++almTRpD+SMf87HZ1NneLJWYZK957oy
	 doHrUkhtgy7tUQKDXw4sMmxRc1tIDhWpcxrffkiGaYiTUX9q/GUX5hYVugESrkppf+
	 1dJ61EMlRq8Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8AAFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798945368.15454.4903504584307992475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6280ea66d80beeaad2de200f2fdefef8563c80243a9d5c914bd9bbc47c377c13
Date: Tue, 05 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777989453
