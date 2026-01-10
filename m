Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E4123AB88
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768011833; cv=none; b=Uk2/ZeDBhnS0sNEhE+/tWS0OOHcgIBpUI+3pAIhPEa2srOT5i+5PW0G9neb222R0papSONcdt+Qnet13FGzf0BT0hc1QBSoW3p7U+8a5xql62n6f+lL0ZDQJKzLBRIpv/4DWxhhnhTRyCD0Jh1yoeF5IZKzRuzizwqaqSD9Dfw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768011833; c=relaxed/simple;
	bh=k2tdMBvl3/x307U4gmCelLKieb6oLhtlX6W3+6Np4MQ=;
	h=To:Subject:From:Message-Id:Date; b=Wcdi+IAMnodCyfWZkgsp9R5+G+ovyRPVLk5wmLbigD654IBPoqzZaZebCGgQ/vY24jwoJH4aMRND3upYI1l5rmTt2iTPiEZAgS4D6dhNKSEPfs20tXx0YHH9rqk/uBlUOGq76kC9qrKZ1n2e31Jh68gMpLxlqsJW9tta2MTv8rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iug5ps6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iug5ps6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768011833;
	bh=k2tdMBvl3/x307U4gmCelLKieb6oLhtlX6W3+6Np4MQ=;
	h=To:Subject:From:Date:From;
	b=iug5ps6P08p4OLuWV4wpBA3MQRs0Tyg8BtJJs6mpYV1ZvgvfqcRQFfiV3PzSbNTex
	 wIua7oUcezZfoTYf+vKq1EjMHkhTENPKtVkBOwYAxhd6my2lbFAoCc3buan4WLTae/
	 s5RdKvU4ke+bLQVnVmfNVZSzcfEcVwryL5fg0O428cvZLLhvJRkHJsHO8LD+WbL3tO
	 nJeGt9c8pIKK4i4FliXezIYhTL5JDTEMG9LSSIQd9DSAGZzxcuNZHFMtTogfqWydvL
	 sO4UElNqXX9A/hH5/yRjKrTybPEF0hK+ATncRH5xWd1SgFdbRFLFTJim+v6Werzt2b
	 FB/t/zSphTA5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95998D277C9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801183358.1875.14403845091917726380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885683e11527aed5388d49506c325f4e35dd315bea6250ef2352e0afffff0419
Date: Sat, 10 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768011833
