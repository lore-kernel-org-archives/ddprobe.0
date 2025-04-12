Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33379155743
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744472394; cv=none; b=DyZ4lsF16hJR4gRpDONr/YvEhxQbvp45Ik0CTItzyvsOkSrAoUHF2y1cLpq1+nQ+6Z/zjYiRL4qsoZFh0nVwrfoLSe4AhtFSC3NqcUY0RW7IvuXwoGpzRWwRwE1Xtd8SOONCJQtP9ozDdmBrHsofoukJKO0g3tHQ5xOf8NAvj9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744472394; c=relaxed/simple;
	bh=tAXc8J9FNbh4wm2g4FdPCmOlRpDL8xevIX/gRJNLY2A=;
	h=To:Subject:From:Message-Id:Date; b=Sjf1czL2PFVimod7NtNkPTW0olWXky+OXveaqTMDPJ5psTQqB5OZRRVakKmLtSHz9doPcGM9kZ9viT1VgHQu9ymp+HXbsoKKIV6H6gQ3/J38H6wcUnrp0/LBHvZQkQGSY/3wBF7FmblldHa84aveYdfnSaSbUVYprWjkUdbnD+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPHH7mLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPHH7mLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744472393;
	bh=tAXc8J9FNbh4wm2g4FdPCmOlRpDL8xevIX/gRJNLY2A=;
	h=To:Subject:From:Date:From;
	b=RPHH7mLtjTkJl02ZlrKknamUtIJaayh0YJES4dEsZA7QHCxV5IRfA7/FpQXJz1q4S
	 OwEKHIjaT6mQn6d/ZbvC9+IaJno6nzFgTaiSyfwhzjOagwGuQNNr1H7tGwqg5M+DuB
	 ZJU++7uRjEc1dhIvRaDCUcdjtnpSmCXuPW4gkR9MRTUullJVIa2hRgR80jyhgH4bwH
	 VLeabRmCJ/LLSF46aQJo8BU2cAGTkEWLJ5rJ5s4Js0+aPK2cs/eO8mhYor5QQ7Xh4P
	 5AJlv0T0pb1u74w4El2JmA37zdCA7kgVJYxfwRQ50RrsQJp8wJjIsbilHSJqRCZp5Y
	 pL8QctBWqrj7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985B5C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447239359.5426.14077970822744733048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425395fe5b4371f3fd10337b4bd87575a9f88f79d2aa6036b28c4718e7d57993
Date: Sat, 12 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744472393
