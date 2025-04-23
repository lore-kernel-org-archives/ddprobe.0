Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D854A07
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745386194; cv=none; b=e9ylpEmeG7SOAFEGGp7i3fWUogcHpqjjZ5oZvGoj0XeZW9fj9mXREfIl4g+uM41Eb920zHCVLMpy1nuwI28GCINN2A9SxU/SjSBF/IrCGwmhOIInBdJIgqw9rTbEpwtxRbT99gMOBSgFBp96wbJq+jk7/9sOK9Vtj1lehW8RW+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745386194; c=relaxed/simple;
	bh=EbuzCEpVnaYJ92zxEGjEeeXpidiGEBXJBmJWw3kdzPU=;
	h=To:Subject:From:Message-Id:Date; b=U3SmVF7DauNe0GLIhendkZDnuw9nL0Zj+l/OtsGCkf+6x230z26dYP8SIZY+Uq0CQFtXttxSRssDiU1t9afMsMKO2v6d0iEl6Ex8YJIS31lNffY4GCpVcusGyARYkCTPmQn+TamJ2Ol6HYXDwGfdOIQmtjt790zV8RAQK8YtYrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOyPKZ7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOyPKZ7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A75C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745386193;
	bh=EbuzCEpVnaYJ92zxEGjEeeXpidiGEBXJBmJWw3kdzPU=;
	h=To:Subject:From:Date:From;
	b=eOyPKZ7zwR/631bZuYhPrFsWtAm/wqH61m178yd51+etHgWWvohL76lAUuuWTWLXj
	 ZM/kQoGIneO1TjkDG0/C0XIFI5P+bqLgjLh2SE2as1drzYGj3LYAwQ4wN735q5UoAu
	 qivSPfLUpjv5DrMtTaiy728wU1ZkvoFwBboJTaenxvr3yEtQyxKwQ3lOCi2IyksCui
	 ulc3pV9ntgHDLX8WffxpVRDHFpbx6OzEENnlaVTPNSeTSaV72/lj/GTmB/MfvW4RsR
	 YYphXJ3G0w0T3H8Nb5Mrg1TBQYeBNxGXtFBQ82l5GTVObRfi0roEFo27tndm80QKbB
	 Z06ZjqNSQgvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9633EC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538619358.1446.4808784064567400346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99eba19fc030e7e88b3fd14cc294272c0d5aafffc3d4bc044c4a348eac285491
Date: Wed, 23 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745386193
