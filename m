Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64945A38
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717985843; cv=none; b=RIqTcvIrqpdUHR/ceWdqicJ4ALoA7CuGsJFTr/xDDAQY5/w57eyBIYRIk+5aIFNU9rCX78Mbejz6IBiN/3fBl0wt0YCVcBq7SslBQaKLUred7rWDpkeCY8h4Bw9uhW4PFExEllfiy9f1OD6KkbM4F41UIzWx/WaTLRO3dMHSc9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717985843; c=relaxed/simple;
	bh=qbO8yTGMa5NvF+E4/Z943hqSQZXJy5W6zEax/hrk01I=;
	h=To:Subject:From:Message-Id:Date; b=ptvr4Ur6UyzUc2T/O54BG/hY+CA7IlH1MScJws1D6kLw/KBJk3A+17dXXfkCbDsDs4zjlbYUei7+wGqwxniAMzjShACNCg0F3TGgUGFwMAWrfjbOrOfhlZfFWjatVy02KJ4sJWt7qhd3UNkt6N8lsXalHk51s8AhjrrHinC4niw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKYaNSZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKYaNSZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D24C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717985842;
	bh=qbO8yTGMa5NvF+E4/Z943hqSQZXJy5W6zEax/hrk01I=;
	h=To:Subject:From:Date:From;
	b=kKYaNSZxXXuujsg4qJAA/wbA1Gou11ZStZGnyNkFAueDu6a73CL+6PlzHx/Zz+SIZ
	 EXqmNLQFGi04sPIDhDfIjtAIEvGErs9yXoeNBopUYmTXQ2yYf+wgvi4q13+9zxfn5a
	 bF3fowD/BUXWyWaI8FC1ubaYkLtXJ6RlcB5Hfr2M2HpFzWFQsl8TYV/0aryaUi4z9t
	 mqgRcOniHR3h7KuIDQXbMyJ9zyUICZPZfRN3rzzWOcNahS+656b/nqcBR23m0xHm6K
	 XvUz9d40j0n87jYsCnj/frQ+Q7TYDCOnFfS4Wy0WzFNVABO8GL0lpjQiCyM/HTB6rh
	 iqoVrkxN47Img==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E36C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798584277.3080.14242621683562171530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ae2218210cb7e7327775efed1f3ab907edba5ea89ba37fd8721c692798387d
Date: Mon, 10 Jun 2024 02:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717985842
