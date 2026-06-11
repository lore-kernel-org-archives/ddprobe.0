Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3465C3009E2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781172994; cv=none; b=KBt9Q09No7fe5XO9Bcf2aeY4zuxQQxHBJF1W0Cmz/pj6PB6Nk/kzyETWTVxBHw+FPG3+BBloVoSYaUOPb6wVDkJb1o7ygkGJwaLCon6nJCOcXNDwM8d3iApcqYAnRSt/SxECCP55jW9moDpvt0Gkx2OUEqW16BTTM5IrnbREWsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781172994; c=relaxed/simple;
	bh=ycDD8phAXjTnAwlpI1o5BMN9pxMngC3UwBE0OzdF0/I=;
	h=To:Subject:From:Message-Id:Date; b=jUp+QYcoPQlm8XBBvKfh9KQfS1X33RXX2aueLHHEDh71g24Y8UW9l3aBShFIACAhfEY+zQEFOMSAB1shG7k3F6xxPWTHyQFR7as1UauhLmVKHgGFGi2mMdmygnTpv2Fljrc7xPTl3qNPOhj6mjSAZaNiupg5qKWDU69Pp7fzLb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IN2KhIJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IN2KhIJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF91C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781172993;
	bh=ycDD8phAXjTnAwlpI1o5BMN9pxMngC3UwBE0OzdF0/I=;
	h=To:Subject:From:Date:From;
	b=IN2KhIJ3E2x87B+ilVZbqNYMcLknehiE52bn1ub8Qd8AN65SUuMSD67AqY5tzqr/G
	 NI7EOXKHiPWPBEsNioombj/MakTh5x43UlTXVjDNc3RDT6N3VToU0FJDTS5EJ0Tc2s
	 AjqhERqaM/GwVroZjm4WomTBl0DlnOIsxnvqHcLS1NEdY77T1YiAQlRc2EQd1cvF9G
	 n5o4XtfZiJnJqT83t0uCq7778mENOr60HEOuBgHK68fO9JqiZ6XXfObO4t59mrYcZw
	 pzgqPGuy2X5a7q+hDl6p2atV74Hr0Hae1XJX/zjkyk47FrWtdq0oZ+ZH+DuW2JvrsQ
	 NKVf0irCb7cAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1090CD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117299371.25304.17535462426034703704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0aa23ed14a5f34618e34882a81647a39d87838dcbab66c75e609a939b0d32e
Date: Thu, 11 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781172993
