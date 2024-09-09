Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F6615EFA1
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725884154; cv=none; b=i59C/R3//V5r9BmlrSpNUPh+KSaGgEOk0qPcl4avB8ugrlpJp89GrLQJc0Zbbfng1l1BCK4W7OUfjXWqTBMU+356xuS9MtdDW33OirRdLfXEsMlVGpDO4h0Xoe/l1ruH4aFJoJqsmYGRqmbt29Daa3RFTNffI8fGAQxs2iZyrBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725884154; c=relaxed/simple;
	bh=ueNgnG3VjkQKZGyWLOqTJ0qL294Mnyb5JcOns2FApX4=;
	h=To:Subject:From:Message-Id:Date; b=YE8pzv2cqPXv2rXO6O9q69gagxz1EXwfTWrTw2yA3xByYxyU39cnJbvouRsP+42g+e/vq4eU8hJ6+M/d+Pjv9phnjE2pQNOKzNoSAs6N77f73MgvDbXjcSuVh449Jj4FjWta264xDlu6FrKBQMNlgZKoHBH0U5fDEEoRTBapqZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3Mm67ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3Mm67ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB29C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725884153;
	bh=ueNgnG3VjkQKZGyWLOqTJ0qL294Mnyb5JcOns2FApX4=;
	h=To:Subject:From:Date:From;
	b=u3Mm67apegKsLMePtZr9BrLpmcV+G9CM1g0gEuLXwkZqfF4nO5g/YFoWAYk8wSSGx
	 uwzt6XGo4+4cK8TGnEgRUtQx6G6ef55xrJM+/XUB2gOC4Pi8nsDkwq5fQ1/3EPEU+Q
	 FdA09HMQgx5HDJv543z5qZKuRjPr0DfddlocfPMu8VRvttTtA4gsj0Gd1HaCNNDJd9
	 2aUbsWPkGDB/ax1kP3a2Ab7XfpbI457oXo14SDb+49j2vb4hEHRrhSVLg2ohBr412w
	 l1ARKmNjTz33PHIkl+kaUi1h19w50mNFJatGTOjmYPBxxw2xCggRD9udZCsFnoNBNY
	 HDLsqoNMRT4+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C528ECE57E
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172588415362.9144.14641552566023563749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7004fdf6d2f2333bcb82d5ea7820f7f06920936d7421cf31548805abdb90642d
Date: Mon, 09 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725884153
