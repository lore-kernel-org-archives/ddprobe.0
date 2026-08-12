Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C64E36C0C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786536634; cv=none; b=ElvLN44BeAtXNsyw6VOyIfsDqPkKMphMfRApMM0EE2LlHzstdS1LmEgeGQr2ESfEhoKyorMnf3YXmZX0sMf+Dp8J3EdaCMGyhSEtrrthGKw41q6vb4u6VEzHxsnj077XBu+xciEpWa2pTSS2PCRy9zQKen8vrRRrTQU6MQZDBhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786536634; c=relaxed/simple;
	bh=pBaBnEttQXjg32YN99tug0ntsCb6CRusryamSjeE1AI=;
	h=To:Subject:From:Message-Id:Date; b=X6Ki6fK++4wrDOFORQpWDwbh1pjRYyq8zlms2jhfPHyH2iZMhf00tGiA/x2D70H6IE+i06cR7NfIoaAD+uRiW3W3unK9xJdrSXBEF/FB1R4e78qzg0FeiQWQc9knqVjNZU6SuNELsMSlCv8lhvQXY2ExsNMOFxVGdyF579g33S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RymZfCv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RymZfCv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07B8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786536633;
	bh=pBaBnEttQXjg32YN99tug0ntsCb6CRusryamSjeE1AI=;
	h=To:Subject:From:Date:From;
	b=RymZfCv3VCT42+6NrbvuhT4LB/sGKe38cMdezmiha97mZ/HwBM79yeevVIfPPKMlJ
	 aUPexSLC51ZyDAa5/f3lr/x0UvRbCSIYs1bJgXpl3Nn9z8ujtGDFO2VfjgBmD5XRvc
	 qS71bkXGv/Xl+BRjuo1CDQqhPEuRXD93JkpgCXPmvRBgFLIGb8laHNMxb0ckG7TgCI
	 dNgS8cCvX+AseOrpIihR6O3xEmbiTgCNlZYSKxMlm0pgaxgszG51zXhNV8rjUuu0ZS
	 f00gNoF4KCSduILFhVn9hedskdEkP9y9Rky1GXJOOEthUyhjjPN04DB+Q9RXV68yMs
	 U7cnR2wb4FvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF3C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653663369.1455.2723003744379574179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e26df6fa3c6849d7e4420a46736a5b756fb3a688ef18819aa64f535158e48a
Date: Wed, 12 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786536633
