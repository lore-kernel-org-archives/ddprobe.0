Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A561442F4
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714247543; cv=none; b=Xq5b6MOq90jgDLiAHcMLDHVunPEdAznJ4wAKSJ0OZrK9BocdsWrZhAbhual9zGcd+DREziNZbpfLWPeTxYzuUAbjcEtcA5fAF4I8zLdcdrp6pKpHg/1zGUo1gkeZmoUKNSQt4SoqXDzLEtL9pPNiaRPLcVf5Y4K3KiqguytNqdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714247543; c=relaxed/simple;
	bh=64tv0ZPK0c2HseWog0DW9g2mKnvqIEk3ffUbfOzNFDY=;
	h=To:Subject:From:Message-Id:Date; b=LyVDnuPAHgwD2WU+j7W6eJKxmkC/ytez4BCjXZVTeeZzJUFSLuOn/KfWvB2bo77WWxMv1LSLOocHp3FdlZvKPTpptczDUw/EKQRkI0lKix6e2zb4I3MCG6dSrPm3VURUTxmsv656yld68SuLYKxUHLQKudgehk21/BUL6/ZXT58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ3Nac8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ3Nac8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CC3C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714247542;
	bh=64tv0ZPK0c2HseWog0DW9g2mKnvqIEk3ffUbfOzNFDY=;
	h=To:Subject:From:Date:From;
	b=JQ3Nac8iwDQiBoti/evf1TyiD1mU/anw8UzTKIcuGzwPkHJGIROR45YBWPQF3XSOz
	 0CrV9hJaihQ3fLCVMKCVIWNqnuLOwihwCS2Xjb2zmm/RE7VixH+wzpWkZUWIvy1dRi
	 oSQ+rsPgsPm/GsuFira01QPHKYZQw2aD1Byj/h5vDAjb00NLz38svagw+NqH+KpVOd
	 5GAWeBchGh7ceMU28gqn2p/pCXBt3v4RjOMaaC2w0oQmVnko3PExt3uEuJ3XAes+v2
	 mDc6cCGABMSMgZbjJybkbLjdfUuIWN4eUc08GXYpD2JTO0TIXe18C1ctj8tGe1P9HG
	 haEGLK/wB2xyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C593DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424754280.11520.11680427892548852440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72db69cdc18a6bb626413c5fc26322410f15d2dcb3d32421cb3cce3ce2bd585c
Date: Sat, 27 Apr 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714247542
