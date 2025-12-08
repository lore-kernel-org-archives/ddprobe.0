Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C30626F28D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765174974; cv=none; b=e0nfyTogoTWgt7mcu/ahsLVF9V3gfFkEnwDjG9fRyZr2+TMVlHC/KgIytRP06zVtam3p3UtDSBe0Me5AYAv0VPpMYuWQKzvGrNerxZFENc+91XKvDlSWjS17IgKQO1+D8THDAHxw+YLQTDFhEclJIYS993046CSPjM/AnfXzihk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765174974; c=relaxed/simple;
	bh=VBSibUhNrpqKuzaSXC23nepnrSG6/gi4RdudHuoOBsQ=;
	h=To:Subject:From:Message-Id:Date; b=gFmXMB9y+gzgO979+k+p+AnYCt4WvyzOrNj3K3KquSI6cANYWE7osDl6EuUeAhyWCKNq32gXFBtqrUm0ZMRkuqAwDXfG71K3FQUmT5ifm2C+KSCkwVkeuKPRe5vov/7Q4yf2pXkx5GOF1lvwAWPcc1AxX1alfbBGgcw0UFeJQxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsPNISep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsPNISep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B4AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765174973;
	bh=VBSibUhNrpqKuzaSXC23nepnrSG6/gi4RdudHuoOBsQ=;
	h=To:Subject:From:Date:From;
	b=CsPNISepfs0U5ndcXQA7Cqqkoi3iB8clkQkByn9u1GPNyZG6w3nX5Y7XLBsZXeA8U
	 EOXEQUNpwkln5W78jIyNANYkk9Gh7BKBOcaRGWlyn/1E95aMiLmizZvz/KR5k4Ibjz
	 YRIgM34v1zXCU2Ml05i1zDBwRxHEcf/gNlBvJyROKx+rkS9L6NghvA4NAA227XsiFP
	 tSePdkawgvwox62sALOSwC2l2OTKvPjmpfffNgAGtd17eSAHJt+/CrvVg/ydoXjsuM
	 d/XzzC61xqtHAH0tQu+DesHis4A7oLm8BpXh4OE0U8BaS8wDaoEJl11X1Z2E/iU5Ms
	 8pU+4ns6Tx/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95721CEBF88
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517497359.418.17084389506142417899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da5a23f7e6729d6b2d7ffdd84499785bad04d09825d337a7a2de7ac52f2e273
Date: Mon, 08 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765174973
