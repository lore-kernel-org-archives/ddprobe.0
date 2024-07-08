Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C25F6A022
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720445783; cv=none; b=f9XkrglzltFQzvZ/iL8N3XI2plH7G/ngn6p82lA3+JFucDyguwSjuw0qrB7MUSqUb/t8XzOq7h4f9yCM4r+lohf3SERgSpzhElxtGkenF5n4ewehivx72rdKXXJ4Kv2KbqURM+ukGVqDLNOfdSFct+cz0XQvQ+l+w/MPCWAhL+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720445783; c=relaxed/simple;
	bh=P4ESWY9zf0+LL32q21Ln32zwj9GQX2ZPevknW3BkFtM=;
	h=To:Subject:From:Message-Id:Date; b=p5rluh7uCYA10S9HgEFJrE4NfY2OPosT+e7mfj9ELWs3mNZ3VYJYU9FQU+H8SH5Z7fhPkZss15/Vk6zSu4bjsUi0aIn/Ak8MxqbcEg/YxtIvEr/FD170zwGh7fBD7WdVOijNrz+1iI8AonqrL2CblPNfnyUlIJb5IjNYKBE9iUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0VMfkkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0VMfkkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD92C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720445782;
	bh=P4ESWY9zf0+LL32q21Ln32zwj9GQX2ZPevknW3BkFtM=;
	h=To:Subject:From:Date:From;
	b=c0VMfkknSoMCLn/5ZAK0voKWTU75MPwpS9fqNH8jcbiAJ800WoIk7Z/lu7llcnGjB
	 JrsYnibJus6RFeCgFh+y0VbvmgidBFBs6a5+VcSrvp6C+uHhkloNssCags6jOrlD1J
	 /YQ1JTRQelDM0/NY89+5PoHsi9RKfOTPtT+GB2RHCXyUCKnSf3f8A9sBRcW3fLZqNk
	 lxdiyxQWYFMOeZvtFFMtZm14WVxjlRjKuVko1Dlc8bPE9pWrc6r2o8ux9oXLkGFV3k
	 jroH9vsnAxdZjwHLVRJdHC8osUryDGRbIW38szvzncZllzWMcVz1dxWnbnY5Hhlnua
	 c+9zVzHSm/s3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAA6C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044578282.32029.10364129689089906612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92647ac2f0d6cb16763b4d6303526304effb6fd62dc759bfbeddb4ec382d0a50
Date: Mon, 08 Jul 2024 13:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720445782
