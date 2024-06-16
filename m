Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606F0C2ED
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718556503; cv=none; b=cJRpXueqMxAB56Q80ksz5NOnErKBK6nXQSWZ+L8QCAip1FRbumFQ/Fzj1sb3x3fWQpc7GgG8yZASQQNVmjRQDIDFhZxU/+Cnei2cuCeLn04PfQUSNsQFR0RxwrSru7XxQF/ukxENQBU6NSaKTbpgHJ1/lHBCOszJP1huWyxpcNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718556503; c=relaxed/simple;
	bh=aLIiX4yFjbPRSMqVs5wwrGlsuQvpmyd3ejluOYJGsBg=;
	h=To:Subject:From:Message-Id:Date; b=vAgUrfGI6LGlqSFriUy3Zx8SDn7PvCLi29CX1+cd5tMj9QXnbASk2WgOGHOf9RX0tklv74xg8MlBcxfwl85I+vnetDd2l8/lTXK2RBZFTVVgHShnLAWOIp50zJACexeHxsxCBWah1u3BfC7tBeg0HnUzJGrBgZ9LYyfqsE2GQyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/LRuGuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/LRuGuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB821C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718556502;
	bh=aLIiX4yFjbPRSMqVs5wwrGlsuQvpmyd3ejluOYJGsBg=;
	h=To:Subject:From:Date:From;
	b=Q/LRuGuC33s0cw0pXqaWcZ3UvQ2O+XLi3cZK8CstZ6vGscqhMLasUCTnvha4S+Iy+
	 DxD5JUXOPiNEq1RWX0x5NRVE9UYIG/N4qGIn8wTIpaiulT09FJeq5TLtSvYXEIQ2am
	 HJCsyhj0klK2jMljTSmmsPEE9wzUGMPTb1uLUecuNq30gLfyumy/hBfKlXvebLGhpU
	 vg0hY5EhDWjr6/YMU/4NvBEi+FpB1T1y9BhSkBWIJ1k6qSivRn1kf5vG3Ddns85MWc
	 pXS6NaQ5Zv87vVAYF7WFcqsqNp+mRlvFIQGruoUJ3XwccZnyElGLu+tf8Ej7inGb5d
	 04n3I2jqOlv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63E6C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855650276.13049.722449124363656169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaea6fb37c0657e2eec66faa592e5f83358e78436a44f1e167a4939fffdd4e6
Date: Sun, 16 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718556502
