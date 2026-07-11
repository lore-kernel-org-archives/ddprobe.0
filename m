Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF973806C9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783756714; cv=none; b=YkrzUBo95pODq168bfCIdVSrcdjDnG4zf/92ymbpNzCZE+JX2IliHgC+Ev21CRSm1As2ZBM1k1J5qJUoud1pxJin222G5LwR/EgaVHSjG1v+AnU2HxJSvZmGqoFB7+C7LX0sdmdRkw6MrH25YmV8JVEzuaoqQC3GAX/tN4iiEH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783756714; c=relaxed/simple;
	bh=16GwmUx0PYQqXw2ztKvlao1dBZMdwkRtx8xfdLtyfQU=;
	h=To:Subject:From:Message-Id:Date; b=AIgVfqH/nhUbnCCl0rDrkb64rhI4yUdSQ014rxN1TxFP27z6HqzQ1rmBzehgrzhySp0DrXZfJar3SwEpe1Ue4BkMonsqtSN4It25x6ZCoJRBYHEsfvZ6trd2yNQAiCQED8EBx4bQE7Qa6Sxxgo3WJw+8fma+mnpnI15CGV7x+yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4/iQXh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4/iQXh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFCFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783756713;
	bh=16GwmUx0PYQqXw2ztKvlao1dBZMdwkRtx8xfdLtyfQU=;
	h=To:Subject:From:Date:From;
	b=N4/iQXh2Tlp0zo9yolynRELyGD/sBEhzVSIFJjOxt7SoOVSDdK9zR6xEnnnI9WFjs
	 Su3pcqWvvf5TwiO9pkq9XeeNlWxTn1r93/1wfL9LwiLBtj6CMQqSnBreyrXRw98M6k
	 ePkwzh+MBnRFamwCwW+vuzz0ulzrGa1mS17lUoOL+1MpGDAnwfMQpGiSSPytJk+F1d
	 svFHs5L1w7uOn70QsSg8II3jkEBo964HIfDioO9iGqzdM951xxvq4tt6vi8oe81uFN
	 ogo2D/GIRg/grYFO0U+XKMExeB74SRhbJxq9PzWH3TgSppQHd7C15MC6oG0NsThjtM
	 ofpsLTv3sinBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12BC44506
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375671368.4291.10509660203190315392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d720e93a387ceb320ad1e1083ffba0fec5787ade704f47b396e8e2d1184433d0
Date: Sat, 11 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783756713
