Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478D42E406
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733559954; cv=none; b=IUnOEokHzIVMYVn9faGMCf1HBFAbvAPiW1iQQdOFp2oqCKohKkbESpb0n4YGfay+928IKWvuZgyQzwhvJ73aUHLVxzqsH7gG7F8VBjCMN0xi2hykHaeSTseIkoBnFIBuRpqx1vawRHbQAb83AEDMEz52mjqxBRUjfEVWRjXrLKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733559954; c=relaxed/simple;
	bh=86sLo5Mofi8Rzsgl7o9mXSb7iMuczBrGmN2GLoELvvU=;
	h=To:Subject:From:Message-Id:Date; b=WA6gVKMaEU99Yr8DkEbgN6Kofk8B81Qe1xJRBCCb6pC6FQOSAP2w6Nze7wFvNs9ywKuYS5EMKf2UXcnVxPvMpe3aunBlx379mTmMiEk26dwHeo8W2nIsOfh6eSkA0Zpkdu/OPMV0mQrd7UmWsZpZHU5l054xmNDyMnraMyc8R9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJXUhW1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJXUhW1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF615C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733559953;
	bh=86sLo5Mofi8Rzsgl7o9mXSb7iMuczBrGmN2GLoELvvU=;
	h=To:Subject:From:Date:From;
	b=LJXUhW1xKa3EH4h3gm9liIlK2o/TwzmF05e1baxhmglwEbalRKgmc4i4Egrl+Oy3b
	 xLOiMWnb5GjuG33l+77LxKaec0PIiQeR36At/XfWGYOPpEJAmBq+7qBtRFi+aSg+YL
	 7GeH168GU13GepAvOSN5haRu38H8zcqg4K0BXmXAn1eDCSKaKx94zr6FFxKkX3f+ET
	 9D0lFPuGQxpqounsi/SL+X7OCISWKwefAmy4z/o6B13LpIZiImhTcdr2HukmMmvJ2M
	 K10YCNRDMe20SwtysgZ4FY6yB4MuPQKuQBMEqcbjYUQ2PNkygEp69X8v23So2U+9cd
	 dZWTF7EB5IS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A602FE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173355995360.26363.10980130637084352433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb705afe00d3f9354bf23cc806ed967f230bec6a624c736cc766c4a2ea692ddd
Date: Sat, 07 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733559953
