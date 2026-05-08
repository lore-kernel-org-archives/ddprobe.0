Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2975422339
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778215654; cv=none; b=gSjCRYJ2Qwls1t1Jedh8M2sOlVVbbzsTY8I0Cq7L3jt4tVxqp1s8RL+m1t2bPQyopx7mnY/E8aIsHHUgIkZ40b1pjrpSSdkgeSmGJbtV2KMs0KcW9GhVduqqipGMdY04S+S98NH8Y+MZE0eDxPFpS4bo8NzUdgU9FkLMgbxiveY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778215654; c=relaxed/simple;
	bh=yW3MJL37o5Cmak78SPOyFWpefBPwcae60HIaEN96jNw=;
	h=To:Subject:From:Message-Id:Date; b=qNB59ZEV53mhnYkVWQf7OImK5Gu9TxSnn8iYmFeCiInwFMVrdjJ9G4Ne/IvXYhCmY4kzRRiBWJeQXDHM8BVXGJEF/uTVsWDDMJUqfHuCsMnhiRrQoxXmBM2TIwaknQ8h0z3tRiP3kJvHIFeLr1vyt8fbTosGqnvx9sZeWReF/sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixHPPiN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixHPPiN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC26C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778215653;
	bh=yW3MJL37o5Cmak78SPOyFWpefBPwcae60HIaEN96jNw=;
	h=To:Subject:From:Date:From;
	b=ixHPPiN9Ke1NH7lPAas8UO3+T2ls50CUi5wQcB0kxvUnl5/8n3JK+i6N8NeJXX5P1
	 /ZXHeHtf0Pcgn5yzT6Oh1spjBZxhJ3zEz1akbQS6nDlFvmiGS3AWDUv0wU8uPEWHDP
	 /fSo68zgJI+pKbUaP3IF4Rk3CgCevdrq9WriYC8hE2LFBfWoSprAXW+gqnsn1la+XN
	 p5OyA5zmfTE4cecGN792g+d8LU/0+II30YJAvdhGN1Y8QL6UVSPgltjVqAZStkuaf+
	 SStT0oYi/qRfLWl82pddAAHPoRp3J3S03irQhvNDWxNRJTR+Ksa4yD6fVY/EiLEmL7
	 YCC46/KZX54rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3A2CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821565374.27177.4398748006729300991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6de0ba99f8630465f1b456c2915ce7ebdafb5abcb9b29f5f758ab071c11682
Date: Fri, 08 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778215653
