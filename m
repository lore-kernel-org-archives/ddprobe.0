Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236F1175A84
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790125834; cv=none; b=C1+LML3eWHpV9bkzoTA2OWyFDtV9JKdQ5aPIdCSUxxVjn/o75oCwFzn4ceOTP8cumryst0zBn1z/t4ocI+BWfRFS6Q/SMsuMFWOqa55HVjvjfnnH7LavQwXQhi8tbjHU+BA5gXS8tX59xEzW05LGbhFiJKRsrBFZkhUdEDFb2Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790125834; c=relaxed/simple;
	bh=uuzDpniImJt2gQVEOETRSG9C1nU8wjwWSL1OEinam9o=;
	h=To:Subject:From:Message-Id:Date; b=scISkR1qZUetgmkA2HdVcA2aZKIpAAIAOR4tOr6+MkdHaRq2rMFXdlNK2U0Pg9T3/bC2+jy90KUXC8Q2R/jmVbVfpH0ebmEPyx4tP0GQTi4yV9/u6pxn2j6Npet64JyM3lcGMffp04delr76XauFfD2MrTFTOuUmRniF7FvBQs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2sBQoB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2sBQoB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF99CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790125833;
	bh=uuzDpniImJt2gQVEOETRSG9C1nU8wjwWSL1OEinam9o=;
	h=To:Subject:From:Date:From;
	b=P2sBQoB5jHtIDJKzVgef2osRPdQYm9OkVlGdzhlQ26aNIRwOwagbgppt388mUW5Mi
	 q7O+iyjjBkgQlBeLcr+f9l1vRgAn3M7N+6Em7dpGf3WKJ6OkCurGQfdBJFUbH5GYNL
	 hG7SAKnZeiZ+f2KEX0LiPuownCPAzp6x+CaPMIqDtcs/g7BEbqhbGnWQxWhEKMBtjA
	 nY3d8MF8IDQ8AenrLReU5uT7sX2vc9B/89DhDwuyHCeui2epnd3cN62IoLbrRUzYIo
	 MZw0IW55IlCAvJtw8lxZi74KCXxq85QL1qHRhALJ5E9rwVphiH3TZFdEZ1vR+WJyZP
	 aNEOSmOgqajFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9A4C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012583368.24745.17625061268810113280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145a46b70cb2256f289703782cef8075bd2f282b2a230683b54003ad9e96655e
Date: Wed, 23 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790125833
