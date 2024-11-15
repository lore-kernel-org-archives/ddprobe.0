Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD031FF05F
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731707754; cv=none; b=TCUu3p6O9DN56j7sTSQ5uyiw8c6vjFCN2k3XwysgMdRm5vVRhE9H0Q79jefOXulqQJkR9E0vXJI/rzECCFV6Pr/E4naJYgCpJrzjab20isIYdadAhcjZufJqpFFGsr/vgHqgW5m3lP3G7sbK2jav17tn4NKDMUAZil4i5i47lGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731707754; c=relaxed/simple;
	bh=CS3hPNKGeH4HTHgt+mVG469Kwj5G07kJ2BGB1dlkOik=;
	h=To:Subject:From:Message-Id:Date; b=i+iz8otaKPE9Euxmo6O45D1lF1oeZMB6j0X10AoIo6YYcw533ef8nuaFOGykAyt2Ilxve8l5c61UnGmgef2V91p6MFIE7Wx8asPu7CEEylDT2TgyYNmtBrfgRpqU/O9zVlCQaD+y+nuQ/4/+d+5ZwOkmkW2WckFt8oczuDN7O6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL1weDW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL1weDW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCF2C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731707753;
	bh=CS3hPNKGeH4HTHgt+mVG469Kwj5G07kJ2BGB1dlkOik=;
	h=To:Subject:From:Date:From;
	b=pL1weDW/pKrtg2mDN/bVd3AEwZd8wuZCdvrYmQm7/880h4i/q3HQTVjwzsKhEJnTV
	 q6u9LjGi+x3eh5tjTHqG8HhjcrfijoLTl85vgxqRrMnPfaAFHP/uOD0KcfssVcEUHf
	 q7issS9TJIKwA4Tk5XLkuYjLtuRxn+pLd2fiaz38UNQLTx1B3X7Fdfn/2XQOPGRaMu
	 AZAS87PQerJlIn/pJ+qVPM/OlKUdRBUZsPYXXCumZ1q1bJJt/cUby7kUhvzbazFdrD
	 23j11Uttl/gvo5gyUBKcj91AP2OEvdKEUQrGhTc3VPLnLkdJdSeBKsmp9IEnk9WI82
	 QnQJZ9hrLs5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA186D68BDA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170775368.17821.6823402270927392070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54914a27e6506983c12fda5c00b2462e2f74e9ec3fbe6d5f8c90b9c74b0efa31
Date: Fri, 15 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731707753
