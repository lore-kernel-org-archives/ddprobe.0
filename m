Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D77E166F32
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728203154; cv=none; b=s6jc/9mUTjFif5Gx1985+h+I45mxvaODwjXaYd1ziFE0DU0YeOFQRkfZ+N9WTTL/aoy+JO+zCZYJHJDpwfkUGXFkO7qToHNQh4KGHO5lPGV+3FjZUCRc5I+du77f+0U1F79gIn+Y/lxI1kqMGefYYP9n1bMUPkGsIt1/i1B/U/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728203154; c=relaxed/simple;
	bh=RiITBPX/n1kepDrg+SFQMgHeSFQL1/TT7AmY+jGV5pM=;
	h=To:Subject:From:Message-Id:Date; b=UyIBVz1IaDClPfr+3hPBVOrnkCiqS/bDCfmOSLF76vW9y4oFFP0rECvPdt+hkKRlJnlJanC9zvTaBtw9+Vi/QmI8mXBDJI7caZgqBs1ChwQW9W84QcVO4cW/0yLku5I3KV0nGjbYQTClNg9zrfWu9ZotE8spJhXzd65HW7nPo5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqpbJuUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqpbJuUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BE8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728203153;
	bh=RiITBPX/n1kepDrg+SFQMgHeSFQL1/TT7AmY+jGV5pM=;
	h=To:Subject:From:Date:From;
	b=SqpbJuUIiViyiBGlUeseqslfPdQjSltRrMGMQdhZ53DFX+63/Kdrog8DBnJwmJQfr
	 N0SZCahnMOR2BBHwB/eYHogB77aKfrdgfH/BzMSU66NOPLLJn4ExWIEBJw77rlmHVb
	 Ss3paIs8CQnAGI3AxsGsl9ILdvxMa+rjPLTkkahzkjvpKMUtdwMvKYPdKJ2pLXeq4c
	 +LMFnWX/rabi8us1H8WfRTaDxF/ruk/o5i4tRTLgUFauMf1ZZ/7eiOa919VRzjfRPo
	 jbnJvly2SZ3a4yMqonQG6W24AmqUVqDFgCp5bTawqqQgEqFeOa1vxnq0qrSCi8cV4p
	 yc3FHg6OB5T8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A173BCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820315362.18787.9623717197408682161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba62fa3bb3c047d8f4376bf5a2d1abb6d3d845d651d7d5a35bc200422781b7f1
Date: Sun, 06 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728203153
