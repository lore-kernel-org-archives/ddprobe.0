Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF93400E1A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784602716; cv=none; b=R2gphfw/9RJabolxXDrkjTFEOVCrI008ykZHRElHnz8TGUNaunc1KL1lhNYpAma1EAv/rqAy/ORINGhoj/KhhSpK+QiQYtdVpbMfZx5A6e9WgR36649WKh3vMdEGeY2yoVwu9c3us9gm9JcjrdkYYCGl5LAh9TcQrjgYf8cEgL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784602716; c=relaxed/simple;
	bh=9+woR8k/A0xMWvQr0+IxTGoABOLi+JYLAIUJ0upr9n8=;
	h=To:Subject:From:Message-Id:Date; b=SjtbbPVXd+Br3BDdgyMgHePV/VNAXVWLCf3HKwn8RDK1FChVrLJB29t1Sk4EjJUtzWeyQhs03v2CefiJmC4yMCpiTqrG5eTnz1Dh/dzgBy6U/dIbCj3NWRL+ty7A9pBwZVytABF5PaLo46AU3ae2+HqU04REjUpcd0IES+lW+A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+yVdTtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+yVdTtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFE2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784602713;
	bh=9+woR8k/A0xMWvQr0+IxTGoABOLi+JYLAIUJ0upr9n8=;
	h=To:Subject:From:Date:From;
	b=b+yVdTtBs5fAjjrVMHSNKN8WOwgUhzaYF8XkfIoQLUOZ4Hz/DcD0kSI2/a0AZQKtA
	 4YTXqJdkN2fEti4bK/rt9s7T9tS2MjOclX7bGace1bcZ9LKbIogr1murMA0mTx3eSj
	 nvRvQLOQ/is3ZCRubOmS0rS8IUgqbxlF3uGT4T7N6Qo/6YVykoUPEVPjE71QZWsiVZ
	 J5XD9kiQ/DrVd9EMTS9VYRKMk+NNgQ/ZMBboIhga0GZc3b/wVe0bhx0wWSvTAmYnmg
	 mWwwflrr7zA5nU/zqiVcEIowGI3GmlecrBRbxopg7tww4a4PUAHfYbkMxJQ2rZxSsv
	 +7bPDJSk4zO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B778DC44531
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460271370.15542.7176003041920701099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db56fbfa9317b6bafd1c898bfe24e1bd4805c150cad3b7cc00483ee1c3116e0c
Date: Tue, 21 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784602713
