Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D4815350B
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724743554; cv=none; b=U+b58am+8Of9lgE6X1I493AfC3SsOC2PN5DzVS1xiUxXQuMXN8hLNByTTSKdhJGJI2pdWndQealM/fwX/Rv0zTnGmmsPSHwWjc1XMfRq//HQgGTURQNjjitjouv4OLSSFNtzUKGnqXrEs+N1jOHzZl/CuD3rar3tf6sUwfvozxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724743554; c=relaxed/simple;
	bh=l7zISQWxC8Lwz0lrP/tkUyGObvrNoSnJ5fIK9BgGdbY=;
	h=To:Subject:From:Message-Id:Date; b=B0ILR/O5kaII+GAzi21gneg7uev8niiTZYDUXx3phWZ7pGELiKgGM1HCM+B3AeITqjDf7DAkdPp0kkFzVcGq/8NZP/kuZmEv9XQmP2uq3oRAYTcwqPQmz6RB60Sr6mmgqSO7G2Tv/tezuSOHw7iUYmtCZHwW6ciz49O4csN0zSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcaJT3ZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcaJT3ZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B69C8B7A0
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724743553;
	bh=l7zISQWxC8Lwz0lrP/tkUyGObvrNoSnJ5fIK9BgGdbY=;
	h=To:Subject:From:Date:From;
	b=FcaJT3ZGvvu8npXGPmSbTXxd+WfwjA48vAcRobA15cyQCSc/T+Q7JQ+cfJiisexj+
	 hWqug1qh0ZCnBCBq7tdbpmjorA0Zht6CCG4lhd571FgISc/3zfA2NK80YgX4NHY5ob
	 RNyww+MDUFR1y2pxUM06qS6EADW+AlSF7aDJVnpTumQwGg5xe5M/B2Vphs2ImALelh
	 CWrvviQAyk823S/cJIKB26KE//EzAgn30E2okBWmX7Ps3I98uiUSC6ARb8psW1h0M5
	 ImEb4VWLJSvVJQlEQnknF9Q9w8n3QavBSte/gQ8tVSYygglSiZesa4YWprw929eCA0
	 gjcit9/G4uHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A4DC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474355368.27113.13927375262142831076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e105b8d6667936e7e536071041148ecce01c33e83a7e20f5ac19d273ed4879a0
Date: Tue, 27 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724743553
