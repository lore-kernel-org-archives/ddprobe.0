Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CDB231CB1
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728878754; cv=none; b=aw8twe9piGP4lrVjZky+a3Tj83wpoQZ0/5+Nzz2AchlFKb4JJ+WsYR55e0CE5ed9tVmNOZ2aBkW8FhxMIt2HE2zHK5IxoAIi1eqOu03EOMktOXCHY7XdpUwIj1K+SrZfusOlHIsk+2JO2tFLNllp/f+pvUhp9/yntliUUmr3sYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728878754; c=relaxed/simple;
	bh=fc6SBC1sFhwtSMcXxLf95euwK/ZIQUg2Xc8PykRs6rQ=;
	h=To:Subject:From:Message-Id:Date; b=faoW4v+J7dxLCw63dLvuk3D1XG5Aq6cO8emcRHuRNPvGyKuOExztBl7xhO34vuIfsSibIO7+wQc3Ra2DWYLYS4WpROp25qiv6YqKFG3/mMSawj5snxk2x8frhe2+C/kuGAKFwysSZdQpMbAQ+2G5+ei5niPdqOgNuG2cr/saQdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahM2ve0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahM2ve0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1014C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728878753;
	bh=fc6SBC1sFhwtSMcXxLf95euwK/ZIQUg2Xc8PykRs6rQ=;
	h=To:Subject:From:Date:From;
	b=ahM2ve0aXofce4CcOD3BMul2aG7TV1/XMrtVU+M8ilUSv4Lg0buiUTCxiwoAAh+eh
	 Ik3lVFeJrU0neV6XOJjKuBnka7R8lV3b53qnYM6o2GcrvST0VLixF1UT797943D2uu
	 G2AnC5idTDeIhN9PSzHknJBTxJvlMg68NDRNmnMXM1AKDsUehz5Uqg9BncjdwuidIy
	 l6b5j1QB+pB3MTP13Qy4XfM2X7jrrW1jNXnzApuyknzCptXujBXMH8tpw4j02DFyGX
	 eG2vl5pnnj2OcyBOytrQ+rP5eh3Ha4qAx3yFoBqQXM8Qjo5Mq69UI6X6wL4faH8Kwv
	 cGxBmsgOUITmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998FACF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887875361.24404.13132085868212594118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018773e5a811cbc2323b6455f15c909386c58531c35b3817fd1faca02df96fdd
Date: Mon, 14 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728878753
