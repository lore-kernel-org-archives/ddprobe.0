Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502CE3845A9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791415234; cv=none; b=BDGN83G1P9ArXEqmGGTMcWxSCwIepMQEUUk7BdpZ1bvmMLBQ96Cuq/BeBJFKOzf3rUZB8wjk26JGVWEy8xzwZw4ctwre9K4Sd6AQNX2KN2WURrBDQNJ9Gp0uog/TR5CDJP+cJJJj9vuDIyMajRY1NsQ9LpTMgvAonzhGZ7U/98o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791415234; c=relaxed/simple;
	bh=P6aoPmnS5t2ktX/5oMAglgtn9J7j8DEk7nreVDu06TI=;
	h=To:Subject:From:Message-Id:Date; b=HGfuRRq4cgSu58GSasiuWDpI2e1flR9nymxVXw08GaehUo9IaEJSThrDbNm+zbMGYUnGWrA+SwgaiU40oeUTDKzj1BKQipALxkJrgcJcoZTAkcoyYIc9pTRAypNq089QIgTXTDYcodDxsE+1kiDsMQ5vU+nPv2LA6vNj8m6NQiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wjwss/Sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wjwss/Sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4304C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791415233;
	bh=P6aoPmnS5t2ktX/5oMAglgtn9J7j8DEk7nreVDu06TI=;
	h=To:Subject:From:Date:From;
	b=Wjwss/SaP7gs2JYwV0boGp7GyMickEwcwyyRYjQx/nMu7964YUruWeieHSgojxwcM
	 1hUes2Da+sspTFVRA9FMtr6Hc6L73hV0Eh4YCr/73Qhyal7PB91L++NYwJlX2PE+WZ
	 iBmXkfln4DH0K/UUXKV43zW6z4k8yNqq884PYYV1z8BagM7tJgeqjJBcAU7tKYoAG4
	 0gimLEW2krrmqkEO5wnNA1BgLj3R/iGFEpTF54nlejZ4fJxO0FlzrDMnWerEL15DNH
	 Fw+jcCY89gPSdZN5Wgjq9oeBYqs5V4Kc0hd28GOaM8CV6OTeiROO+xTTprIHB2x5q+
	 JeF6YU00EhgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0913CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141523368.13207.14985692149194857657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8006149d233bb5bb2da99bca8f3f0f30e6688c0b2ed66ac30f41f968a54b2c17
Date: Wed, 07 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791415233
