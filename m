Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393D21514F7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762634394; cv=none; b=mGvGHuvvNgpZKw5UmdTOkc2eJIsWdnYgPphRcSrS+EEM8Cnk+6OP1heD7+XmDyyiEYS1Vnn5ElsCZ+Fw6vsuenPImvCd7zN/I9qDZgAmX7tK719/vDGBNZjh9Sh8Of89/hbxnADxKxxAfU1JsEI1T21vY8+g+pCrCHpFYXa4kRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762634394; c=relaxed/simple;
	bh=x++H3wXY+ks/RxPj5FlshD4GU+iyJGPFdgQpz5KGNN4=;
	h=To:Subject:From:Message-Id:Date; b=cTOu4TWh4mlDzmdtuV5Uq18xQAEx4ZrPXRc1FMICGjxQKCQixaH6j+snC4oXZ4DrV7uU2n+QySp+ibnfqfJw2STAAqVdSrtTRv42Z0xSp6sUuDNZF9rYd5qqtl6tfBtzIGQM6ylz5PIxtcPQEIti/zqwrePq8Uo6+PdC5mg3GHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrZZlFul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrZZlFul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A873BC4AF09
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762634393;
	bh=x++H3wXY+ks/RxPj5FlshD4GU+iyJGPFdgQpz5KGNN4=;
	h=To:Subject:From:Date:From;
	b=IrZZlFulmbFKO3UlfMnx9cdS+qWUgHPwvGLXe9AyH6LUio+8uWhTON7XCnwCdzH9H
	 D76yKsaElojZFIxmFC2h6hlRt1MukC4jhftYdqCzHfFU1vT3lO3kNPh/H7/v/U5/LN
	 ctHtCbrkLyy2C2r0o/8HXDeEI2D/5JtqNVbxLrJRlbiPbEPctPzNHBeH4CSkYrHg5y
	 Ln6ihJmRO3JA/pb2f29iNyHoWFO7NF40qBendxPGtxnTqLIrYXndiLZ+p2h5jvPt/3
	 TOLx1TUS42Cq5gWfz4V5ZjcGcj7aieV9tp0LGdxfcWFpWjwsS2Yhwc1ieFtrytNnEf
	 d0U12FOxmMfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE90CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263439358.3884.17940136295529440961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f098eedcd902c5ceff443770e1891e8a6f58823e759d161f2a882482bcad349
Date: Sat, 08 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762634393
