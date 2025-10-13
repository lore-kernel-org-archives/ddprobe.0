Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A69E25F78F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760383194; cv=none; b=FFQl/rPom85DL3tp2InLLqpndCfQagUE0za/CRTXpALksLyx9hfhf3EwxfA7ooxBKSgfE9wlNZYJDLN+RPSzRi6+Zzl0NcnqdHKJFymm9yAvEOpG/yVRJlsJFLYMtC2+kr5ry0St/IN+J8PQDdqG482c/CmvsrDlXE2+PXwXdDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760383194; c=relaxed/simple;
	bh=4Qb6QbnTLwSvnAtdylVcXyE5vuHCbp+llYCSTF3KVog=;
	h=To:Subject:From:Message-Id:Date; b=OAK08zC7XI4W/seriM/6kfWd2OoXS9dWPNmCT+Sqs/oVvnhPimsDMYogz/sD8KuziJ/9o5UHjQFPLKEVzB+UHRkcht6qvurILIXQP5pJwwG7iH/yIsrkBv37vZ4YgeAA4X28o+UMja4b9mhbRC1sHRqE+T6DjSwFbMIPQZ1b358=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBn8XtCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBn8XtCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3736C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760383193;
	bh=4Qb6QbnTLwSvnAtdylVcXyE5vuHCbp+llYCSTF3KVog=;
	h=To:Subject:From:Date:From;
	b=pBn8XtCNEKOubpsXhLlw4GbocIhq1owh5ZV5WRye+7hCFBiMiIsqg9Yzv/beUMSN3
	 8//5ruYUL/3UWM2ZshHuLqUbPa+jyl5PNEMjos4jd2dq8MrunrCtSYjftoLpDk6nc+
	 WTh4w7sxutWRB+gMs76aYLUTVe+uPUdKKTxnHiK511CUeLZQ0zm265WDmSs7zO6DjH
	 YMytKP6ESHTvsEQke2hzbQCz8BLd6i7lHh9BCsnZMMdgggXMLxbWIsp2dM8JSiQ7FJ
	 tuNTjHCe6bniPP1rIpkLCB++MYWtRyI7KtL8vKGKK2nnBnjPRUz97hw2GJImjEDsuM
	 CUmUG6RZfTvcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C1CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038319358.28542.578891955453678320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96554e375ae57e8f7504c67740164842e81ea3790dd7eec7d7a47eee102fe72f
Date: Mon, 13 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760383193
