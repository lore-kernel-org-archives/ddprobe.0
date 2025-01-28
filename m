Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8371917D8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738059954; cv=none; b=WOEk1W8IyRg54FC+yIVdtQJ/dWLuj4xe0xLxhY6uW2/m17hOOpNThGAsmAS284VvdMouICFpQjueQPPJ0a8F5LQ8QEk0Pigztt/X/3fB2v/cL0wuCwFndVntJJripeP8YcMlKoQ8ZQJbsY+mo3fALaTAzpQOnoeJOUKDLSbBot0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738059954; c=relaxed/simple;
	bh=sUfF2r4y26XG3tqI4DjLrb4H1lJ4Vzm4iWeuvoqKz3k=;
	h=To:Subject:From:Message-Id:Date; b=Xd0ehR83ozfSMf0grzndDfmUxizVdCGGxFp5XoEK03NyEs1h+7prkQeGwLIQ2WX2f9XidHol8l3vAxMiTzANZiWNhl8Dj819/jYfmb3thpL0kFrC0m1aKuWhOGnpOIkgzrf6mzMJsDyrMhDiT9Ohj42uoCYspkmcRDw2Bo457Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkQifSlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkQifSlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB83DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738059953;
	bh=sUfF2r4y26XG3tqI4DjLrb4H1lJ4Vzm4iWeuvoqKz3k=;
	h=To:Subject:From:Date:From;
	b=fkQifSlqDJakV0NjeAnmYB4/FcmRsrZf+gOPFgI8TP07neosjkQv+WLmvgqoXxMfa
	 kHzr/3glGUbKJzcDqaOYB6R6n5G+xBPAWjPd5jB7S44sGfgAOp4TXEB+KT29GF/td7
	 0X/E5LJTe+MNdPlgDYSg9jzfKDbGky0otSyQUmvQjfsxx9lwfMAgFEDgomjzIFvk4m
	 mNfci2ul6FSXSCkOVkFtvY5nq6ICceNssK7fTTGgAI1OB5UPIcDtH2kltxreccUd5I
	 /0lyW2Db5Jix1B9i3ppTCF1TN340xsvYRfBfeOIpskYssmDHMr1hPtNSgWIFyMslt0
	 fQ9pLKbqO8Eug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94840C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805995359.31863.11118908202003816688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06b0bdf2d64bf86277722b1155fde2f739febc712c2ec94c444156244fe0c3c
Date: Tue, 28 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738059953
