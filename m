Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F282347F7F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712789897; cv=none; b=nMRhLhBGvqC9fKVw4Qnccuzzi0Po0n9nSxMugsQqpWTF+LHstz/ABf+snBlGXSwVaaQQC9mPSg0mvcxD1PXTUX1IR1fo/529Lc9r3ck4wFGccwTXxxeOmtSVJLI++gGY/0rQPWXFeHYfdhcgG7lbPwn5jiH2Wpb0j9tarqQpkxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712789897; c=relaxed/simple;
	bh=f03RjIvr3L1n5BhGOf+Rpqyxp84rl+lXz/eQCiqDkn0=;
	h=To:Subject:From:Message-Id:Date; b=nIRCRRB9885oKZU+W3eTQqC3G/+nietSw9T4+v366+0remPpMSI27xLd3l7hseTMsU9VWjSNe2E2BLrxSga1DNCNMZfokA+AJd76pKbHwaAG/OwO7b1C8DhjNZej1z1nFTth9kIv9sZ7kco39jSBJ5wPQfzjly0gdn90ha8WQnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9PIGHnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9PIGHnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B31C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712789896;
	bh=f03RjIvr3L1n5BhGOf+Rpqyxp84rl+lXz/eQCiqDkn0=;
	h=To:Subject:From:Date:From;
	b=U9PIGHnrkqnDaEMa1QLrlYwJnrRocdgPjn0BAqHgnTgCXA/d6RQFo0gOFxWyPAHBn
	 R9Mn3QElRwAvlTVoPNEyNVeo/NzYVf+470IT85R+ybpZ80fOPtfHtG4pmq+/Yz0UtE
	 dSCRI/BTQHIkI6fiB/bT1sC7M7pdKTlvR/nMLgDjAN+UJsy1H47bhXBG9OHaELZZq8
	 nriMR4HU2eSg6sg9gWy7JfoCpIrrJpi0ajYWFFU5Y+ydtGJAak8hLBMfBFyAnTuKyV
	 ny2qrACLWAlsgD35xQlANhk1zIwmj+zxXpN1wbmL5w3lTE+JZmCDJBPc9gu42fcM5p
	 RMaIyTDhW4fCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 720F3CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278989645.7501.14463769196793469037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258afd1bf9af3532e980e8c124173408f986c572389772a200e53e80f3ea4de6
Date: Wed, 10 Apr 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712789896
