Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28722C148
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745885994; cv=none; b=fLm3e9Fny4cJxs3njalOOLX+pPihWz+3aIetTqeVjxdcQsPua+2yTfDz6EwVmtlRXPzSBzrsf0pyt0KcJ/9rShikrhPCJrNLQpjR3adtw+fiTmETbpr5jJYlBYjkdzp5nkma7E0EFqUdMQ601/H2qzKv0OlW5noBQDqmi/Hn83g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745885994; c=relaxed/simple;
	bh=hjsRd0JtFyJUJY/fVbDf8CZS73/aPWP86J54JkOT+so=;
	h=To:Subject:From:Message-Id:Date; b=oGxYFZrqTFpaWw8AORDT4N/ThRrq58ggIrTPvU1Or/YFL4eEAGI3z6Vi8a+owwVKhelBjQzvBlCKUgApu+UlX45NLnu2ROLIqjtPDvjdICJ9XGwzzTnfBcy1Q3bsMkyeSKRaXYReS6bRQQY5ZIeuEq7tuF1HVnvBexVSBtubkPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhRpPnRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhRpPnRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0589C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745885993;
	bh=hjsRd0JtFyJUJY/fVbDf8CZS73/aPWP86J54JkOT+so=;
	h=To:Subject:From:Date:From;
	b=NhRpPnRvavBnkl5PoxpMQLCJIx46fITEjs/1SR3ewLp7EDpG3zECX62FxOyKer1o8
	 svDOp2sqcTyBdlMzXUkGfKVj5tH+hoV4peMp4yrH1cdVGaPDGvaabo6ZrbH4Ut8CHh
	 3N/dBx8hNIatiyM0GyAzPTM0pGbbz2Fiyw8x8Vnog5R4r5lWkgaQHCJMo1lXjyn1eh
	 QntHFMA2x+Hd4+fgfl8/mr/tyxbHvJTHE2+xq9nNWf8QlL7G/db5Eo0IF+CGSPGA7L
	 KkZiIHqiIM9ytEb08onapm0TSe5SSftfjJr+NSMypbN8UGxcYM1dhFn5WGAbY2UYdY
	 EYICh5rbk1ZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F289C369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588599357.31676.455228586489266160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3becf10c89172d9cb92ae2958b08b4c95c6419efcbc893024ceed9140209da
Date: Tue, 29 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745885993
