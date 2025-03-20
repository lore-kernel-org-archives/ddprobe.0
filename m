Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4449221CA00
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742501394; cv=none; b=ZLbB7GEbpxDGzJtchDZe/fEZEo8aLr4GohW2X1qABVVcNIZ8q/ADh4D8zYE4C3M9vCtBrjcn7EzfEv77tjxBedYqxEh4SUqC8xAnT1NR/qbB9FCZUGd1NbAYb3So0qWIq9h9UVtB/y5DU19l8tS+3weHM7UBagCjHqtP1O0YsGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742501394; c=relaxed/simple;
	bh=fm1ZC7MnNkOU/m/SsCG8iqNYZTrIlsWJHEZ1Jt3pKSQ=;
	h=To:Subject:From:Message-Id:Date; b=UeFACRSlDZO7LHZ+xE3/bJ6M5FpVIZsTKbOkYruSv+aVNB2kF4pQwwQj3otBWLxIEQGCo/nW2N8DcXFcPFMIRfSfeDrArGWXMBarbXuGbIuPSdQ9hJSr9Y85I9RmCpFIPwbzZaLWRfEtbungHd5veTxQk29yjw53Ic9gBSBhG6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv5D9B/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv5D9B/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7836C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742501393;
	bh=fm1ZC7MnNkOU/m/SsCG8iqNYZTrIlsWJHEZ1Jt3pKSQ=;
	h=To:Subject:From:Date:From;
	b=Xv5D9B/hLWBdWIgniGGS4esVDOE0klAnhg9s9fJnnOXigrOsj8inNBwpCGAn07ltn
	 /eEdS+JQEBG3tt4Bp+7L4tLr5Wepz/DoX2I12gdxfVvu+yGq89KtZK8cUHZXMz0YhQ
	 J14wzoCT+obmrgGVK+rplTwmoOLiLVMccyVIVIBV6DRAEvgYTU1E5W8g6mS/ASt3e+
	 OKGGGvFDARYyyzIvcXEsr/Ycm2eNQnw/TmPxhanIc12BjN/2f55yoWktthcieTJTfR
	 YEIAOtype1BgkEFOzot/o2jSUz0eAT44dS4pKZlM6LoZDwJZ71ruPY0jDhIDPMdG32
	 A2NL1hlWZ9l6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A416BC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250139365.7262.11074556110578194883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a337d3c1d8458e7cb74e6f91fac10f2d49e0036a5a4f93bc6262e5add3578e0
Date: Thu, 20 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742501393
