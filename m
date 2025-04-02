Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1FF239565
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743595194; cv=none; b=vGJFflPvha9UuOwlJQ0wc8SI64b5MwZla//zhzjbfeOVdat4RzVSSEsgbPU3BEagwRY9d8hy1kMmunkBiPZFIsptkCKiPSzzkP2eFKbLi8BcZw/4MZHlEYKkNU+DRt3horOa1xpLFdkIo6n8QGGodQitYCXGuWe7SyOS+Xi5V8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743595194; c=relaxed/simple;
	bh=7lezII2KN8nSR1Tvr6ZoXG7kQMGlwwoAZLax/g6q31Q=;
	h=To:Subject:From:Message-Id:Date; b=I1NpYOTIsenjTEITTF+uxaqrCsuAhxaUSihOQU9TT7LjHW0MwQeL6U+F9cuCgK/qjGVKZ1ufWk6xlfiAscwaMdXvn2MJuje2alnWLBk/EJh0zVVDslO4Tm9ibGUiWw4Q3zfAG2UIk4yNx+Tb/rOXg69GIGSBTgac0yFAKYOVNa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gz6X8dzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gz6X8dzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CAAC4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743595193;
	bh=7lezII2KN8nSR1Tvr6ZoXG7kQMGlwwoAZLax/g6q31Q=;
	h=To:Subject:From:Date:From;
	b=Gz6X8dzseIxsDAOfrOSQuVy1KG63e40Mxk9/8J2O+2Y89+fWtdedZBTFUBJR6pTcM
	 FJ8YLL5MbehiQ9FH16toArOObGIPzWyZI26Y2Md1K/RzFzeoow1yR4Mia4L0+wiM2r
	 mGH+vZbSwRcjkKC/mAYolQUlDgc6OvAxmDeviAp1CTdV1O5RCsmpdBsbCh6eNcjyXm
	 rqEKs2DwnqKWrMdF3UOPBJMqGt7j4FdjMX6Vp+5hxsPAVa9acfqkRNhE+3mJWdRZXt
	 lfAp8a+ItzVGvqc2KCC16Xl2PDUrFj83VW/szTMzzFg40ZPcRAtCxEDfF77QHvxU9B
	 f8ZnUPGnr4dEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97474C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359519360.28709.1324304078337296917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b58b86e2089187ea0e000e1d37eefad65e6e966b8d962631b44dff55bb7759f
Date: Wed, 02 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743595193
