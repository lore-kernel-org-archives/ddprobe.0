Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721D3410D3D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774461894; cv=none; b=GXxL+5o03+8lH40aVSqUFnTYXCCoXGGqwYgZSB5WVMJaJSt2yvDpY6dPbkLw9T5us7plB528/cJPATtEQYUpz7V0/puPq6JyakTjNvJV8lt9xMuSwTQcAq/A4+UYunLTKNrjiVpGImQFk2iitTpUngiDoHpfSHn5PwK9hobsnx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774461894; c=relaxed/simple;
	bh=LgVvgovV7LUZGbGNVwuD0QdT7QMjbe2NNWtnp0KzMV4=;
	h=To:Subject:From:Message-Id:Date; b=SoZrMGCTQlO4Wl7a3P+lwO25atv/SQf0aN+Fv9OT2NxmYQScYIFkNhiJ1BhQcJdkRoSeCpEBAgbG/N1e6dCAS4h9QbDBp4sO4Uidpc0ktI4dYFTbbKqFDPd6B58cuS3iQRCfNjvoqW4eY6/zdtW+cj8Rfn1fFfVpGPetrr+Oku8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMPGZ2x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMPGZ2x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774461893;
	bh=LgVvgovV7LUZGbGNVwuD0QdT7QMjbe2NNWtnp0KzMV4=;
	h=To:Subject:From:Date:From;
	b=bMPGZ2x00C0RgHTxTUg2QVCs/YnruzTqfyC9uvy5jUZEBai2zDACFP6SyLNfnQDrx
	 wZ/Ov4sMx1vb9ZReCDDccY3L7g8TFlA2gxUNk+gEo8W3XvjL8ENme2zQ4ZeT2tId6/
	 0Q099ullKcWt4Y/WtMZpwPAnGRS+E6pyA2J8C1/0SWTl2FE1Q1ef1a2zrPavVwCw/O
	 3wZL0eyInVjz6UW/AHaVJwdEHrK9FJKt6prI75h5JEV1SPT62bsvrg2Mcbj2Lwc8+G
	 2375ht+isRCIGgpl8xv3q7IXCyo/yAz1MAIci92P0L1eth/2WeVfWL4TNLWQLf/7gS
	 xhi2v47yein0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97412109C040
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446189360.2200.17292449262853330914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7d9b4a72721e5c5ae9eea346ce66812dde9cc6d25261154290bd3e1d313e2f
Date: Wed, 25 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774461893
