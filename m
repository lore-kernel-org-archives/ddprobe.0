Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F202D595D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768926234; cv=none; b=VrJvhn717QYi1/qCInU2MIb+dY1yWwlOLTSAGZUD3SmdSH0GuXxGCsRJAXhR3HWgQDVlDgml1HEuyA5eQoI5eg1Z7SVwF/LJQbxTkWOesPS+gg6n+beSDFwNn7jvsbu+ZmOJuSAS90js4owoiOi7n5e78YFUDtjxmaov7Mayk64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768926234; c=relaxed/simple;
	bh=Fcd2/V2eV4phMEjvBZpfGv1QylXffUrbp2b8bL9FuiU=;
	h=To:Subject:From:Message-Id:Date; b=dLALKvjxhkq4aSFiBAzm8dApE2opVjUGXPvLs/yeZs8ON8yxAybcnbABUjYl9FrlaHeEf2Eb29CEQzSXbwcmurAPLF4s0ChHhM0irRK/w8QJ3LlY8TVQJlwjRBipJeu5WbrwyE6o1X5eyhf/WSoQtCgF4zCG9WjPf6440rbbf4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqGJ505e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqGJ505e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB17C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768926233;
	bh=Fcd2/V2eV4phMEjvBZpfGv1QylXffUrbp2b8bL9FuiU=;
	h=To:Subject:From:Date:From;
	b=mqGJ505ehFLWiMEgh0qLVazgTG5gsqE+3qeSBGJXh4odvh51fl7i9JUafrCv7BX0u
	 MIRqYLpC+AtLhxqVR6lCeQ3b3GYbf62dYRhI9xvGtoqiDC130abMzlgXVwth9+hdwp
	 aLo1IrB885kCAP2U/t5ofyyzL3uMtoDFLYCi292jRRvWTHLG37UHfUruccBqaFPOWG
	 +c9HljJe+hTjU0mAQekITQE/78CmL1NvShFj+PbZENfvumQ9RPfvQLDdA25Hv2Gah+
	 x5g5FgI2WxiHS8ieYGHdrWdOfICQJaJeIQ0ddRm/T0lQ2cAT4Rc71pWLZUSpk8coGB
	 aC4YsUemk3wuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EACA5FA8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892623358.28174.2864099448924458378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882d01beedffd05f3c5d5bbdd5b5b824667c3b32ab3c8337fa571f223108940e
Date: Tue, 20 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768926233
