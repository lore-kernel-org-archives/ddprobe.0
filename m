Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED63409632
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780474474; cv=none; b=GyCozwTV5nj1wotoJCb7Rda4BdUNxn5C5895tVetktS35NffW3+PThFSj/zWF2DARCN4WqrmdcA6U5I114BL3AayiaihEPy8UvPOYqHIl85jezSRjwiFevySxQ4gvgZvKmJXZGgGklQQlrCoOCmw1TsH2LqUaohItLzeH6RTMjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780474474; c=relaxed/simple;
	bh=iQ/M0uJqDiatNElk/3lLDH0xu9nj3Qes5BGilmshU9o=;
	h=To:Subject:From:Message-Id:Date; b=moHHncFYl5vWRoS7uBmWGrLeIpEm/5+eZrd3BtM5H9cIjnCBdxKaMpK0Nq1dFhvEfeuNOUhEF2Gg6BnWmSOCxUdciN2dPsd8EfBl9UaVfrwOkkLpaskMnQT0DqcbTIRnNmMGmU72F3Ijek86967bb4OuHOMQRwpbB6AF5cVk1tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUiBCzpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUiBCzpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C117DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780474473;
	bh=iQ/M0uJqDiatNElk/3lLDH0xu9nj3Qes5BGilmshU9o=;
	h=To:Subject:From:Date:From;
	b=XUiBCzpbzVRKkaiG6JzpYdE/R7MT4/EMu63ve8bbjJORtHyT3psstvFnd3ZeSfN8J
	 zJjQp+/4BREQ6vnokMxUkHGyhnWuiIo9ZUrT7/sC5OVRJPRfk4OOhhxfpwEVAdr5UN
	 uNh40ucFH4WN9N9F5w5v1bd9DWpiAht+F70EOJc2oL8sSU+Auy2dQ0ucxzR8xCnSjz
	 R+48IC2cazJqwM7HfitvX4Jjp7U8TFY0EUQSYysUz39ii4wzArfSHAw/Xgw2nEXkSK
	 ff4xnt75++uwMC7Xq7iAEoqrzTZ5kvkQ2aLbxIB4KbnWGrlbLaiCLPRACdIq2fLB4h
	 O/UpMgi4dViaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81C7CD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047447368.28676.4991506595372709105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e414512345c04a4a77518e5d551d03ec14a776bc63c9a09aa424288f544280b
Date: Wed, 03 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780474473
