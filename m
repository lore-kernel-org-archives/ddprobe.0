Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A5A15CD7E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774062294; cv=none; b=g4DX5Nqh0PMuToHOMUx1t1cUFx+/Uq7WarGqV/uNpDfeiAy38H+05SUOyIaH5sS8A/YihivWES1aCGEyT8qPjZ64TAgA+Z0v1hWf8lusvKl9Itf3nQUXwdcsBjizLg0DKY6cVlLqlzxTFfyozXobjVKCweI5q4vqdb/doLJeoAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774062294; c=relaxed/simple;
	bh=uTiKzfAw6wyLMG1XlNcal2luxOXjKEbEHDVHlb+AthA=;
	h=To:Subject:From:Message-Id:Date; b=PQkWKwG5MRI3G+jsQLleKy/ZBr1QBXtDl+/ubam9tNYcY9AFqip+3k9htdwc+rSBmdCwb0bCe6lH2/cUs3kM75CnKNTywN/NZKDnYmBnot2Y0G/AC6zOMNCGh9ZYXMth/q5niq/tLPy/gpt5ByyF9AirlxQOOz+B15awEitl63s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqFuqypu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqFuqypu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774062293;
	bh=uTiKzfAw6wyLMG1XlNcal2luxOXjKEbEHDVHlb+AthA=;
	h=To:Subject:From:Date:From;
	b=eqFuqypu+r5DZIgIvtWyIWwbxXZbQsUh4kl3gKtY9edNarlQ8e1nSmqV8LGdqYHeG
	 I+DPCTr2ZprS/8TXPVt2ddrV2EcluhHhczP2uFw/NetDvrwrVYCUE1SCe4Q0QKP7x3
	 t6YbEWNNrFtgiURicR/uhgnN9sfM11xCOCfCKgRIRdfj9omE6dytJNSJiW7EuM4ieX
	 g8IFXC1pW98OPs0zMsn1+h9r5I7mmwOQef7mw0QvvhnOkkvwmlJdBOF8da20HI0tXK
	 R7zRV9FhF4jBFocramlD3xR6TUHsE9brgBE1e9CpE9bCqhjQ2YuYycKEftoiHyFmIE
	 Q9aq12BQm3DlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F391075269
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406229359.331.6568232720353488155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2d30837cd4cf85186a409ca50c83daf6a86561fc27157363cbcd4a371531d8
Date: Sat, 21 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774062293
