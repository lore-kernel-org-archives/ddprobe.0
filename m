Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434CB153838
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728084954; cv=none; b=FfbK1bCHkH4ajqRM15bsOMtab53NWXxUbR8BYszWL72QSclDznkqdGCZgYfdc0uuUvwhqDGyNj/cw9+WyA2qw3/rxPfvacL6ZeaDBjHB9enIireIVRI4KGg5md4fl7tA31jCiGLlgoWYJ1+WSLLK2YEuMO0QUbK3WFZ5KdkLWdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728084954; c=relaxed/simple;
	bh=FbX04pslCPy2WSMs8zK6kT737/wxT3Z8iOPbFgTFNkA=;
	h=To:Subject:From:Message-Id:Date; b=M7ewqQtV3laK3cSgCp2JA8n6xyOBM073SW4B+RF2ehNzQNVAPC5hHQtkK+F5K0kUxTOsTBn5FuCpyfIrZgd9tsOsT0kkppMTHqR66TGq7wCO6MmlfBZ1p/JoacOOdNRiNGtrR3pkR/nEo1l/RBsHQ9wfH6DFQRnfjoD/7LIsx0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRXKVFu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRXKVFu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82A4C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728084953;
	bh=FbX04pslCPy2WSMs8zK6kT737/wxT3Z8iOPbFgTFNkA=;
	h=To:Subject:From:Date:From;
	b=JRXKVFu9w1mkCy4AD/C7561tvq0QMjD85OOSYC6+azCQO6PGeSemEfiAB4mvaIX//
	 0N5tpgfeZVCqbnsEYUA/B3nVeh5YyEUGtFnJcxSZXaGlSP2gPCdUTB+F7gqe8X0Ckb
	 ol11Tyv3/jEbTfbQEW5oz9OUpvYQNYGs+6DTNk4mpQiyaw1i22EQxnJpJJhfWs2pCA
	 IhpFTIbN1LUhfN2o5LwChnv+rx4xwU0fLrfkfnPKUJDv2jOzgMGynhnEYKgh5x8svR
	 t9WxJ9FqclXU6OLUYec1bigkuyQbjj9xWN6XrnmlX1MvgBmHDkOZ/Iypp70YzRqMoF
	 oY6OLMcQQiBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE66CF8852
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808495369.15391.14686460675926142227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b116ac8753d432acf9b71eb168d58d8a007aebaa99b0e571222d5a19b707e2
Date: Fri, 04 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728084953
