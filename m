Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5DD3A2569
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787176234; cv=none; b=eCGidiNLKzDj0G1An6rC7CK9PC6aBJ2BLH+KIV3wfN/s+9HFSwsphYAFeNFf4iUOe83nnmCNWOr6BJZw8ZgLTTkVsyMcFoF+OOmzvs6oaU0KUnMKUMF7KHKvgwdprllCvsXcm0Neu1Hja82NrhIRiekpLZOGyiFL2cIThdGi0Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787176234; c=relaxed/simple;
	bh=Tvtj+Ke7CbK+3bpgvUwgkUSDp6aJChj82PNdX21pUBY=;
	h=To:Subject:From:Message-Id:Date; b=PP9WRY2DXOsnz3TDIiFu2+YHlXvBhGbYLppL5ivDZtcz/W+hAF8lKt5tb2n+p+bW4mVtp2zU0aXD23HkN2pCDazvDphf7N2H43M437GvNJRHscUmgkJcSXkq3X98hSVX84nEXXB8BulJwbH5MM5eNR2NVp8+8lsKSXYVzIko6B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbUOy06z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbUOy06z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE866C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787176233;
	bh=Tvtj+Ke7CbK+3bpgvUwgkUSDp6aJChj82PNdX21pUBY=;
	h=To:Subject:From:Date:From;
	b=jbUOy06zOXbQuexdjTmjpB6m0vmm4HpDJQp1QRTQquKomJNdq8DcZ1/TMIX5GGvKd
	 96smCWH0n+K6sfPNuIn95onBLTp7pP0tFvhUiUTBD2fZ5VcFBXcdKza8JvDkQ1r8z1
	 arLozNp/d6zteXFQiG3Pr5PH5QevmMmR2p83yjfI3FOzgJ6P9XW0nT7Ur20gtIkE+Y
	 alpptGbh16Voh7OkLn+ayKytTA7q4CgH9QiZ0NT0SkGX+MdPT26raGKz6t7BBUBZU4
	 u6WVidz8wzbiOaXk+JgnNdaJLwSguw7QhL8G9SGHcJ9Tk4NHjvW02f1uI+J27kD6V2
	 9Xa2qMGZmL8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA832C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717623368.27039.2657909095241335482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf67ae8d312faba364b36ca4d31071fa48c5f1db0f0111a82111c5d0def3886
Date: Wed, 19 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787176233
