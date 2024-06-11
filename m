Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D94171D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718095703; cv=none; b=UezlUtjQEcRdxx936JulaZ36Mkkj/RGj1oEJCx9avjH+Gr30Msqn2A5eqRuIAYHQTe/sUNLxJhVt2BMXk4d8X81uKr5lk9WSYl/uM+p18Y6r+15zqHIJ9ocvELHC01IceWF1NYsK9LhGeLXPeJztD9PSv9FSO/bbekfNA4vNVI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718095703; c=relaxed/simple;
	bh=WbdvN8w8dDhtsRaMDfocozz1WkbvEMG3FyhDEtlSsXI=;
	h=To:Subject:From:Message-Id:Date; b=AocIrw/JdvcvFDbAUofmzz6+/FcuD0UC+LCS78bYeGHNzSAjqJ9pagT7/oajhIjQsY9btnFa8K/aQCYFM60PDzLBvVOsL3Av7WWtqgPNV0CERG8PkSFpz7mOwDYhbHRKVwofSnnPDZXxaWFq4QqnEOJ/QzIhslth4ayFdPb1xcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQjKFbT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQjKFbT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8621C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718095702;
	bh=WbdvN8w8dDhtsRaMDfocozz1WkbvEMG3FyhDEtlSsXI=;
	h=To:Subject:From:Date:From;
	b=RQjKFbT40PTV4rC0Hk/0byA1oKYCf5oSZIfVKKgmUxDeuJ+il7RAPuh2bR0WWmLdu
	 1Jh2aS4z5HCU1QrAhjIVeGJFK4pfSm9pVTPeerMpMt2uKszNs6h9/CI1Gqj0CsMGSR
	 sMfelha7Aj7plHYXULdfXyaDY0a2PwU9EDGPqKuxqfVOLXKJHrA51Xqvd3O8B6q3Ra
	 UdKqAJXMpNarDmsq15PCv1kO1xE7fD64AzDdN9ydACoqznQ3+kaiU0kcQtDqYpkucM
	 Kh+lnQsMt/8zau+0NL0td7NMylwxdtDozzC+URvJplRdrKCZx1w6vpltdBBE0wfsW8
	 gkeCHgIWBGG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AC8C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809570279.20125.14552373321391513397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce2450ef5a13f96408f35edec92d75abf1eaf6fd59ea726c303b4bac1f221a5
Date: Tue, 11 Jun 2024 08:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718095702
