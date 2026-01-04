Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F721FB1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767516234; cv=none; b=b/XDtZhtVuIhPv4uR10ryOEXOD9Yd9krCrm4toK1gxSbLstydzxMjuMtwe0dn1XScioRErr78OJMgs3/UJ5w7+jn0TLgn0YD/ol8xZHOGRQ2AeB0gAnhfDHygniXZYswqVrs5ph7bO6RruvHamw+uf0v91HTsRPbdZMT5jlNmDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767516234; c=relaxed/simple;
	bh=ctJcNAYMzAm2hBmpJSoGM2lzSvkML+xk/cP9ruAlozc=;
	h=To:Subject:From:Message-Id:Date; b=VlqAYHe2Lz/yhXzKnqNxf7dbg0j7Sv0z7HGtkxGDDz14FThPDiRB/PN4afzNkeqAXgixDg7vDOp/0GBpB296ZzROEZIGhiNDQG4mvPhmk+DebKk2btN0uGh4oUzVDSW/sCU+O0cvOccHXZ3c8QaezzkgXOh1NlRbuOLG9P91FPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkzVqt4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkzVqt4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C81C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767516233;
	bh=ctJcNAYMzAm2hBmpJSoGM2lzSvkML+xk/cP9ruAlozc=;
	h=To:Subject:From:Date:From;
	b=rkzVqt4ysxkgWkl0VuBPw/+GzaZRXBFFWLPX53PGZUqw44WQkIt1lQKAAPVVwn7tT
	 s0E1t7L38x9vCrlEQbHE9GT0OcqCXLcSYszGoDD3gxetCTB6lSlDL21mz08ClO3Liw
	 mQtXFiOK4VUFjKClWrSpKA0Laj/1V6UBTg1wRO7shJRzosVslTHzQrPTcrh8dW8Z/8
	 ok97ihnGpIF7o0h8h5u8IN5qHRgblD0OrCdG4VgZPSDT7tX13S523EgcvuHq2sAhky
	 os3JdNWKkRzhF3VomQXLSbHp7xQLyNXb9g/8Uah4ZBfhLtjJy92wwVV5mDUBaW+NZp
	 dbyEhEYtHJxJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA6C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751623358.5732.16066774394705144233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d31ee282ed2c5cd129ba698e2d6020a1c8412f585439e5083526a9e48369f8
Date: Sun, 04 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767516233
