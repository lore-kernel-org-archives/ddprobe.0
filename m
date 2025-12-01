Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340B33358A0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764607374; cv=none; b=M7iuhGhqooC3Jdu7XAxKvZ8edlxBSrZBDN0EtsRB1wKIEkOU0S1LVFUk3GLPJ3bkG1Fl81uX09n8i8hAXjMdbLVxOnMpJKnV0A4hUX629n/XN+ATapOvwQ2rv0RtO+ocX2p9FImp00QZ9RrzgaCdyS7ewKAoPy6dAmGLo3/GrVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764607374; c=relaxed/simple;
	bh=UPJ2n44uOT7/8mpxfaruYwx2VgIqgwhO0WWNsJfGNWI=;
	h=To:Subject:From:Message-Id:Date; b=YSH+9jRUBYEvTHNPeSqRrCw9GT3r19Qvv0RKj7jMwVil1kjjfHnTIq+fXAEvkWwZYvYrbmUqeBtbfJHzBqm0M/zuMotPdtg1vqe/bs6AHL91moRhRid6/WFBJsXMXt1fWCrzF3uKHVPRtsqFQSz3JCvIGr4tpnpq7FUHooY68Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMuagDJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMuagDJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4448C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764607373;
	bh=UPJ2n44uOT7/8mpxfaruYwx2VgIqgwhO0WWNsJfGNWI=;
	h=To:Subject:From:Date:From;
	b=VMuagDJvK1uEjPrVTiGzDdlWiBRyabRKAxWXAsiN/5v4xpApVnnPSTfgl+hVbs4yB
	 nW8jAbhEZjzcz4eiRS1EBWTknPAEhMZFfYTGuQmc0Sm64nU1nSmFHVD7T1Kjkypv+y
	 g4TxmSuh+yOXU9KadAzcCac5tfanACIzms8t1uXTi0Cnq+loAessYSDI/i3CjcgRvB
	 stH/ks7qlt6PnHp6z37w2EzzTOGF/ZB1EOsOxhnsRFoajOCnjD2HUPCQBVZ0dG/5UW
	 AXttj1vC+IGFmIcMxjGuHDZvQ+PdLSrZPc75mDYZAXYI3oQdfALWSxB0Bg2J2ZxPjR
	 yCn1A9l8qnLeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE1D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460737358.5337.6349201527090481420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7746b59702e60be260787b50123f8937641f054b0e80bfaa74c4dddd58ec958d
Date: Mon, 01 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764607373
