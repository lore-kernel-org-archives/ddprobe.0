Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604292DCBEC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789888234; cv=none; b=XZ4GZ+x91V+hShFUujwm0wEvvF6Wjl2dyYzD2FiQCkiaUBIlDrBKROmu3bydf9EmLK/6cSDFBBAhU13YdFu5Nq6F1doTz6o/OscF/KQuY914Nl+EJICzva2Y/3REyHAGsNNE0mnS2u2gyGE4TESj3b0BDa6Msp7xPZz7WbRUH/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789888234; c=relaxed/simple;
	bh=uxZsNmm6aji0WsPM7nYrET0xiFWBG+2RuAE8iPBX418=;
	h=To:Subject:From:Message-Id:Date; b=SwGG/D8IfU17APe4plm+p7yEP+2zYOmbZQaJJXsCGY8TwPZaFMNSKvQLWq+2oaMPUtIS2sGn9rivLnrWDlguRh3SjrHeU+2XgayNyUp0xSMubQHXtIa4jBL8w4RQsPpTGLASwkwlDyjcwu0nc2cDEZRTdsvmtBNqm0dspnxWX9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqQ0c6zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqQ0c6zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68CBC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789888233;
	bh=uxZsNmm6aji0WsPM7nYrET0xiFWBG+2RuAE8iPBX418=;
	h=To:Subject:From:Date:From;
	b=NqQ0c6zofaEcsyjaCKcfCFSuxFL7skZzxQXVh66bvJjsEmp9dBvj2pBxVzF62MPtx
	 T3uy7xuPk9krakk9Uc5EGPBw61jcnHMutQQUqgRdxOp4bSZDH59Va9QE6ZCbzedrGY
	 bnV8GlNb+8OgRoFGjU7s9mBjq8mm4CjKLaBE22fJ50WCYXrPmPGG87IQaQbuZy/47T
	 KOk2aoujQVUM1Pn2mCRavHQuY8JI6ysZSZ9R2VG7LMpPMJHEGQrXOFyUw4sQDaXfAg
	 894u11Py5HWQVsxq9RcRr3Uq6fcUtZlVPZmyYb3YAjM5ozjccjGUfs3MFjuW9u2cio
	 cifHwmgPMEW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3386C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988823369.17823.559837650616901147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1693481b7ab5f3b9010780594a4d3d5b5d13f21de85e6b8832f01616b2292bf8
Date: Sun, 20 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789888233
