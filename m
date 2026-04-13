Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C83AEF57
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776079654; cv=none; b=K31kqVLsf082KksCSUkyWNpFNDTTfOePJ5P2gOCu/PDWGx9VRaDLZMoITEeQULnq9pu7wT5IYt6iiQNbUqKc50WrNU88NTfagTNXRPm4I7yf1fNw15LfP2j1UbTXy6mgYV0cuq/brgzeKtoslAk+108jlN5flOXxMmZbqrIDrZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776079654; c=relaxed/simple;
	bh=VGQrQ338Xa+ZZM7rRct5R3/hHQmPk+I4ziObtYouGeY=;
	h=To:Subject:From:Message-Id:Date; b=pgmI3Gg3fipOfDdRSmB67sHMoq5xK8nfZaTo/F4FXb9EolarT8R1yncNMv9y/JJcHfTzQ49mXr+6li4ZRUHT86Zlurcmuu1AKBQS1q+986P/E3oej/nPrBXVTF9KYCRRR0Xn14hl19mbDKtYLdq54oQQx+4RbsRhyUKGObJkW3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvuPlisZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvuPlisZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA086C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776079653;
	bh=VGQrQ338Xa+ZZM7rRct5R3/hHQmPk+I4ziObtYouGeY=;
	h=To:Subject:From:Date:From;
	b=DvuPlisZ4q2P/U5RY6X5H8iD33CjqCC0HPe8dYBld95YNYjGs3tUqG3ArPkc644Fd
	 CZaqLLzdLVW/G6sqFVmyjyc4e7dD1iJek0wUEC2bUqULmtO7E0+HV0Vb/PgGehXc4F
	 o99VyGAUs5QV+IXDgTmRu9/SUH2FkPavIWmHOijwNuDN4lFYi7E06Gx8HlRzyXndjv
	 rQ0Fb6yt9uMsQrn7JFIiCpQyvVzKScC7IBHIHSq0H22jwWmH+xM7h2LWa/+3FGKyuJ
	 tBb7s5OJbb/SYYiPPfBMLf/me6XCoCWV4jrwOWhwaz3aVrl4wn9A6s7F/LW49RZGCx
	 4GmWfbJ8tgOsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A71E64007
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607965368.32129.2030394814642865069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a453d5f5b7d885292ed4ab11507b11aac5a675a9a7cde234013d5f6589d24e3a
Date: Mon, 13 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776079653
