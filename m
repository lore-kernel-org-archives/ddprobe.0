Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340B31F0991
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756678794; cv=none; b=JBZ9m1Rca321wvg+V9aMeYzAzrtmaPnca/uh7HItUw6pKZQzGd60Sti9/sp0xtoa66Vm/cxae2mU1Q4SGQcBsRS9yag7kL8TLb0kPOEKgX0szOYE1Xc9ZLPI30I5+5sXDFme0Ix7AgfPC3OfdeVy2HExMp6gpWA5YeTbnh0ByUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756678794; c=relaxed/simple;
	bh=B2kYrxrhidaSJYvE9umlhso5FvjrugsClqSNqFMow3c=;
	h=To:Subject:From:Message-Id:Date; b=VHBGB3kaxDQAImYNihAibGkHj6g1CHTeGKwG3VYBnAEryRHFol2C7xJMD2B6oxWNNAuli4yWBecM4RfEycAoVsVgenwepjYgs3H78275EXZVhckcM4p69ASzp6Q60W1hCZxTMe7fyIMvWEw8vb0sWyeTh/EXBojRG8ur3UB6tZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaVCKsha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaVCKsha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77EAC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756678793;
	bh=B2kYrxrhidaSJYvE9umlhso5FvjrugsClqSNqFMow3c=;
	h=To:Subject:From:Date:From;
	b=HaVCKshaHtK69g0wqQN0qlTF4YoZ+P8DH7XKd/N99yPW3Rn0yE0cu+YR3gg2gHxZv
	 hkeEfp9N7lynUFAD6U6hdqG8MqAkNFbH6T4Zgmt7Q/Juq51elKpbpgEZJU/5FOzfB6
	 iLfyAnb2A7W4iPUNpXgsAKTM8hKEYLMmy4qumgDCBNpTpxAuDHyV/6Z9h6FGmHcYCd
	 idisaZr6GbNe8sA5OlxAKAAvqiS4aDeFx1HpS/SXXpj6okUxf1ivUFRpx7l58ldSVY
	 gEdeeS0mUBI/ig/bcyvHC8pXze+xvCOy/4/zxI+Sk1AuWzOcL++32UXhN4IQbeammH
	 sRn4Ey0GVAuzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BDCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667879357.10900.16012831732454938331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ac8b60ec20ce4041452262783403830462eeea8181f969aa89fb966aabf24b
Date: Sun, 31 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756678793
