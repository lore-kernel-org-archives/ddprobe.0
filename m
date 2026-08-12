Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D06F31197C
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786494634; cv=none; b=STF9a2j5o/+2PfujsXo9P8ky8DcWxAkj4dwNQvOyspzCLwTDL2WwxKwa78LNTTgXK7F6ECe8NXxB9HhxakTXJj2piz+tkSl2ADvrcShLPNLZxA7ZiQ2uZuUZCoJNo5+DrcMsreyvusX45OGxj0UwZkgVMcx7nPhJ7Xud1U0Suz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786494634; c=relaxed/simple;
	bh=UIpqpABhUqXdME9Sl2IJoNNLrtU+Hrc8fFah5elg7ZI=;
	h=To:Subject:From:Message-Id:Date; b=AWLQ8WSDRtLVPdJZPrIt8UGExX8FEz85qi90uTm4iMuFvgxdWq+pRMSa3TyPbWD2yfW5XGTeEorxQ8Ec6BioRHR806aR7X935yeU2LfeCNcUjrDngjX4Yv/wFGdIEArp8PuI/Wk9Lg93osnJfjfm1asDukR62kcwGc5OIfr4za4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H97aysWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H97aysWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD001C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786494633;
	bh=UIpqpABhUqXdME9Sl2IJoNNLrtU+Hrc8fFah5elg7ZI=;
	h=To:Subject:From:Date:From;
	b=H97aysWa6kgpsSvAxHrIvZ7aflJzaqYi9e3jYKZ5HCCPJ0IeEP0uaWK5EPRDvutB+
	 nQ4BWQmJ0vuiVKQjrGT00Wn0GZWWa1T5SF+hDwbpqlTFzkoGHiE69J/IrCMezSnlgA
	 NU8C6Aolmg3axRZjzZNYDVb5QHJUqIvDIl0GxFwUY44hCeQnStm9JN7IhnppqM26ZR
	 htmpKNQkKNxFSUlS8QsUD3RcJZ9N51Al+/73Ys1Nu+TnvMcl5orCsUwagSurDcK5FB
	 bwjd1cFw9otgLtpZ4b1x939HB6WwOBBNkUin+4ifm0k4NSOfKmYP/328o3kg1gi/UD
	 4FyjKxEpi3ouw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD05C5AC67
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649463368.29599.579025237396685489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fee1a940247da41521da354c31367f3d8a198e7d3e5b924d5c0b3da809e22f8
Date: Wed, 12 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786494633
