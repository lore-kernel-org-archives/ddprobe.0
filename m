Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86A137C52
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758479994; cv=none; b=jDy4LIXsFS2y8LmjbouWn9E2MHQ5AiRpiKqrYDQ2hIU6hG7EwlH/MXp9CFzg67myvZ2sNuYop/SGf4CTR7b87dhlh6QsWo8gmI4nZIHWYNBax7HKSPZPgumOAFijGXP/LbRUAhr2Dc8I86GXy1vEGHmUDSW1jb7x++wekxupcL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758479994; c=relaxed/simple;
	bh=zg9/bhlU30OSyeT3vWPTBex918BErgx9Uqn6a9uRirE=;
	h=To:Subject:From:Message-Id:Date; b=PBcM3xvSU3288m8zne/zXlKlvaPEj/XRZ1pPzZyQj4csuQF4+7b19gYeyvAI37dYT9Ry91JrNWxpP4oGv1SxRZ+HSCQTyBF69EXYctZ10Nocaq1LlaXAbEcBPitR2IrgptMLfelGrNLVrsoKR8YtM6LK3ep9ZTklzNPEkN1jfTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgyU5V2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgyU5V2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758479993;
	bh=zg9/bhlU30OSyeT3vWPTBex918BErgx9Uqn6a9uRirE=;
	h=To:Subject:From:Date:From;
	b=KgyU5V2a0L4iVv3ttCNeQUPb0opq5WV8xSNZL9dDZZkxd6EJT7g7YBGvtoJlZfALp
	 PcLLLPu0GxvH3cozRfzjbtbpA6PJ5i5ir5umuxe5yZk8r8uZyc2AZSzbLjMergGCuq
	 LMFMHt9iA31bqn+pZUC19iRHKFjY/fqdfApKfcCadn8KZlFUP5OqrHEnCzs/ywEtG2
	 S7zy3DO0VbF3atA215q/xnFIueSbJjy1PemFHcngTUhkJKA5+u1IoqGYi+p+KvfEWx
	 4w9EteWRLKCmPCw50JHcSHj8b3wAaIGh7VOhw3ksIq1gAcuM6TicGd0kelYBS7GX93
	 k5SOWteC1bhLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC88CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847999358.17654.1753744825335685677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ed7d69704bcf9d048581bb72386249be11a7d45703038da5adad4263078e81
Date: Sun, 21 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758479993
