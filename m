Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E614D70E
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743196194; cv=none; b=L9oSm98XNYCygBspM2RbjauDAqdhtEapVLaikTA1jLiHmeXz1G64D/PzVVflS7NvaBEd6h0l3sfh93IX/XEXEYhTs9TBpLK0dVf9YX1BnmAncmCOwBx/jRaFP+JMoSKznZvMc39f3MOR7XfePbEsu3QvDYWREGgMBCQ481r/0Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743196194; c=relaxed/simple;
	bh=c4C7QbY/XcoimcLRcVGeMG0XWqnyPPHLQB5vePDJtzo=;
	h=To:Subject:From:Message-Id:Date; b=OUkkDhm6sKHw6yeT8yOCbwGIzdDtw9UrkR1Z3NLGP9fIYRzTBmkdwkGqjsKsXZYP76ijDiZD1rHNXCgPLaQYmw0KWuroatTe1IfhtPryaJZ5KZOdytHnT3OMEAxR05FWC+gBb0GW/ftA00wPv6CbA1tIeCIScI3mT3k4giPrf7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDkhl5Pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDkhl5Pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BD8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743196193;
	bh=c4C7QbY/XcoimcLRcVGeMG0XWqnyPPHLQB5vePDJtzo=;
	h=To:Subject:From:Date:From;
	b=DDkhl5PzmIfnfWEOTPUTsT7fdBkGyJXlzZbGGNsZ5jOtvb+nOknhttn/ePI7AWjHD
	 ULPX6x/p91Zf9NGwt/+4VNSZ0Jx5SRpBftjrZ+S+Ukmq3RNa8hWL9Zrn5pQ114SF1M
	 l3mt0iz5Il6HzSOWYfsm6U4P9vUoN5Txvwkred3woUqK+15gfp+7gusqsGDEk1J34G
	 xNZGmuh/pCZpTEngsu8Dj9Fx5wd27gB/wev33R5vL8HBWuCe+4ZnUT3q/irdqzLJ9n
	 TaErfmyN3+mtEiJKr1TLm5y0AYNaIp2raA4EcCVExIOhuSoLXkAP2120dAvlalI7OW
	 9QW7tmpy7pnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435AC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319619359.27751.15270021260956025089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b63c28c1bbd003f60d59c21bd6bdb8537256dd30869051574b070462853b65f
Date: Fri, 28 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743196193
