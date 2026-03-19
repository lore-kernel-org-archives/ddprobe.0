Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032A034CFCA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773903894; cv=none; b=Jqg+DWxrONhFDZow0NQ47ka4GhVMz1lqoKGWI4qxrGJXfwfGrjlC+rx/u1f78zutaGejHhiBk/+vdTEXg/T4dCK8IBpyxSR8DBWMgt2+nMd1M7ol6eVNKIdcTR1GmOh6Jym9qrkjrR9yPiVoFp/s3j8V50xb9yl15TxfLEQzD6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773903894; c=relaxed/simple;
	bh=KyMIatNpuMjtClCxFxB7I6+D4MK9nAePECi2D70Y7fM=;
	h=To:Subject:From:Message-Id:Date; b=m9Brc4FVW4oJ7pT0jYgJhCiGfPLkFn38E+jh1ZC5RUO5x0mhrefdMgFmos8RbzBzMjBEeWWgUDkHemI/b3dwEnyFeCXGrO8WR1xfsIe9lnx33bnSI+63UG2ChQVF0a1Btj1JUH0t0zjaraLsB6o+UtxAkKw5mYH035Ccj9kaQTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4eaA7b6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4eaA7b6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBCDC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773903893;
	bh=KyMIatNpuMjtClCxFxB7I6+D4MK9nAePECi2D70Y7fM=;
	h=To:Subject:From:Date:From;
	b=E4eaA7b6qJTteiO6TMRIHb9PnauWwp76VYG1/OpBfIUOO7KADcuJz42UxjSXCO4UJ
	 l1r4vllSqXcW9gu0d4EzHNV6x/wABdTJ3ozMo3DfWV/SPRbMPTGIKoyLFcwG4viyg4
	 0fIccHJn+EiL+C7Gjk7T3irzqo08r3A0NL4QFVHfbN3KIWubA4+R0gZI4tlQpWXWjo
	 0AdWD+kejr4PgqY5Mcn5LFzIry96pXE0JiaMqK18ioE8cWMHQxghETDPWb3yEfcO9y
	 LJKvYZLa+SVi3cw4uSHD/dau1HL/PBggbaCc1BMOEBfYGNYakNrRwGrfQFAGv2Dn3S
	 9Q7T4pmkBZHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE41075264
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390389357.32274.9211711989902973350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d8c4d2b287959b1f0e7a728612469395d6cf0e8370a812bed2d189b6c67825
Date: Thu, 19 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773903893
