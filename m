Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D79242D7B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782643114; cv=none; b=HsHo4pKkCWt4vBtI7dUTUrJeClTEbM9PabFZeWhJSuNB1VgVnGk764a7FezTBlH69sKCKvnSD8fFl0oQT1HbOC/uN+7g5zdVLV0hTfe2o/SCqdcKm4nnV1FSUZVX9sb3y73SqcEomLsrIqHNfKNvCs6I9ERisMW1gkdrT4QZjyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782643114; c=relaxed/simple;
	bh=Xd5oItFkcH8KBTCXPf0Mg4J+XtjetUH0Dbf/w1nsp9g=;
	h=To:Subject:From:Message-Id:Date; b=aITkJUn7EK2dE7/BzJnmYgxK3XHMXW4NAhvJjwgguWwfMSp0u10eCQUfhpDhAGB6ZuXyL44vN8s5FZLC7LvpgcdiVGhWPGDC/lk6B/Q4ULuxe4RZzdeCFKN1kac5F36gXyCurbGGF72iuvxGd0QLe0saWrnNh0cQ894TMHfmk/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkGSE37C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkGSE37C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE40C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782643113;
	bh=Xd5oItFkcH8KBTCXPf0Mg4J+XtjetUH0Dbf/w1nsp9g=;
	h=To:Subject:From:Date:From;
	b=lkGSE37C+B16NSJ+gUEWjiSYiXHM1w9ysQ3Q3+T7fL1AozLXx5wKivVR0BpAIb6KJ
	 n8VcVMq/Vft3MSkNNUm+RSDvUdjnVpD0b7RTGGz6zIV2cCN1VoiUKTGBsv4N5dM5RL
	 /dwU8CMjAE9sY5JmoO7a3Qm5UBSl2qLjXkNZC76GvPosrJc6FlpcGh51Chwx/BOCP4
	 w9xl4mvZbA6grSSGx6mmW/sdX+a2Xap8xEaGJ4V/cL4Fzd6f2p7WXRUxI9QDd/2bDY
	 VW9UXRK1kUe03MVmBPyiVmIBJiobxfE1atg/In9gx+VVg6uapNBDdFIqELG/F2h1Jd
	 RBekSU0jQRptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B767DC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264311370.18469.4208013926512358723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e3fd6d69aec8048abcd9ca3e9db1696c746592a5360ac62fc32697bce9e83e
Date: Sun, 28 Jun 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782643113
