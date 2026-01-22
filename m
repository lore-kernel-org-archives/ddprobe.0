Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C555F423A8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769078633; cv=none; b=mCb2gspXaH4Jbgq7gUkpYBFR1qRIlwwlckJz2u+86LgSJGd+kiGroyUnPNF6/Drz2CzveI08r6eZo7kLTYTmV2v1FOGUfmFT/9IgkAz6s3IaGNbF/Me3NPiIcj+llLdF+Peav59RevCpGeU8IO7zfdIfyJShauIBnjAfFkLfmqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769078633; c=relaxed/simple;
	bh=kcDm201AV/Ajf3FSZG0VOCZVprgMCR/vPYoswgt9cm4=;
	h=To:Subject:From:Message-Id:Date; b=GN0nVi6gjKRBJzJup/8KqP6V6juuYwQh8GeUxCyQ54WZYwJHWdNMrbTGX4vZxMxjE+nsimU+0qwlS/tUxMQhcLLRw22Gh+34JjxbaEKnCQgMqpKFDd0MY9Pacs+VxN7n0vPaH+PUQlRyikphkQkDiLBCwFBLAMwwGK2upNh2RUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G22+11OU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G22+11OU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA7C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769078633;
	bh=kcDm201AV/Ajf3FSZG0VOCZVprgMCR/vPYoswgt9cm4=;
	h=To:Subject:From:Date:From;
	b=G22+11OUE8+tyEL4tsqd+JTh9/93umu4lLDFjFjYL9ODCVK2weQ+dFBgxy6/7RtPF
	 ykceRbL1hglujUgf0bzz4YrPD0bhJXR1iygrFQnAapsWrYNNB5Ct9/enC4qEqLWJWR
	 9Ze0wa/hPAp+1Xz4Em77O7ulMjaXJjwmJ+oLUuJHhl6aGP3Fw4gHubUQmO1t6P/xMi
	 t5l+I/hiImMS2iJsLBnHGE+ZuYLMTiv+86p9IZjJFTTeSvQ1BCRMjEngQ/JIAFTHBU
	 dFI9NcLeeGt+ArKFEf5wR18TkTG2MBFNQJA1IvUjpdc7SbXCKgqpL1v8LRE8MhBuwt
	 ejYmnR4zvOv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93411C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907863359.23580.2117199799031130968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7dc95d279e2e9391d76c235bc16063dcbf2e2a8e08660a7cdce1341831e691d
Date: Thu, 22 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769078633
