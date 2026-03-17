Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C49F3A63FB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773789894; cv=none; b=gJjsXmh2IG6O9SnKRH78hLjYMOAQ479KE3RVkzBd/g1+NyK768cQUQKrLXmitpxbq9/uDW23LNh6ZcvoTNWVQQE+ZX/lngwQKWPh+QXFKnFXnc4gEoRo97kvVO5Ma5m8hKQgmrsFa71vuysNSlgyaPpYW8nrthcshsO0Qprs0HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773789894; c=relaxed/simple;
	bh=m86j3p6JcU3eGqA8Mzmc2tA0RGWzHLyXq19J9l4bBXc=;
	h=To:Subject:From:Message-Id:Date; b=ptOnxZbVVVv0e+H4QFXq+zJ6Cs7J/hvEMeGCtzv6Gl4/AT2LGZojO/1Oxhc0j7OLx8VG/vzpcEH8KEAcvNgwy1gXBFiH5rSwJwkyKXYHzrxhPuLNhaVNibZfVLTaQk9VJfGAC7dGtA0XzUyyC2PBfuo5PbaIQ+IWnPpNw8WX19k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIqOPy42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIqOPy42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1478C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773789893;
	bh=m86j3p6JcU3eGqA8Mzmc2tA0RGWzHLyXq19J9l4bBXc=;
	h=To:Subject:From:Date:From;
	b=ZIqOPy42zEVFjkWtdtQrdDqMBXAI12TRlwKYmUy/vs/uh3aYI+guq0hA+XcpdR2PM
	 iSyYT5+K72ro+qMm71mhMJVJ9mG+ZBIp1kdb11Lo9BoL6SSWt9AFq9aYX9Ddo7Y/9f
	 ngnSCW60W3IC2C+BKjPRc6jivygtBWgg+VJOM9ZEi1zjRmtRgNEq5imZAVCyCYYPfH
	 Zs729OA9CG4ltdgtTNhQGAVZzN4F+vnc6wKtKcNvhnXwl/S/4zi4vG3Of3omgO7NNR
	 Sswf0Q3dJ/Pdw0HBhRLi+KYW/El+iCJyWAnquL+R2dhCqk3O0CjLGN8Vu3PhmFrRcq
	 IjiyyJef2n74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECDFF6E9B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378989357.5072.9841723761930579090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b887dca0c56842806d55f057182f02b2ff091a38e192a0379a8cb22edd120f
Date: Tue, 17 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773789893
