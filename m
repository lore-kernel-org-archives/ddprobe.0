Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73891208D0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770963294; cv=none; b=MCM1dxqou7+UrP9tU8vYkxWTsgFX5sIVpahq7SDvFcbWcHoi6KACq7gCWnpsuEXBh/kdGEnjfP0cq9PMcFIAn7q8I8kSzeoWT4rjov3ok72ULYGQH+9Hnwd0p/gokXypIJqrYBy+T1mNDcQT2x2oHFbo13ULZdxHhlsv0bRE8pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770963294; c=relaxed/simple;
	bh=E4/9KhsS7f4TH9gVlmYwq/LBBMsR3oQU9wwCjbudjjo=;
	h=To:Subject:From:Message-Id:Date; b=k0LAS5ifr5oTlaLWPaBXIHHS2Or96rhFTGXBTR378UaMjXdnif7XuSMhS+mskgyEGNREXrNJRnWI9PYgq1ui2eByRgCgK+mj1L5JcLKGNVpXhSQ4aC9iCk37Bc0+WtB0QFutbnldoLz7SQVmut1TqFROVVaTC6LDA+ue/TgrMvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CS+FCUgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CS+FCUgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B11BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770963294;
	bh=E4/9KhsS7f4TH9gVlmYwq/LBBMsR3oQU9wwCjbudjjo=;
	h=To:Subject:From:Date:From;
	b=CS+FCUgVxt97E0hDeeH+nnTYULrIACIUq6+8bK5zXrfONcHtWci1p2Mt52yDZiTTO
	 tnuoGMhT1Sn+c3yw48zvwg92ubtR6DezjCym2/qhVXEb467GkeTYhpNoGcF6wcDwpW
	 upYeG3TizNVp2QHKPszYBaURvV0KYJaRr9FGtTphiJFtROATu2dDeQVnRt3O4RbTMN
	 +5zm0BeUzHmvE/9JKS5Rh5vnCCDCHoDOsSrf47f1yixj/sH0pCSlkbo9yrOcJ7GP1t
	 F+s5ZiYiJkshwUVbbWPf4XCqY9DttoYMT1wn7N9kJTKR1dATNtKPZe++vB2lzuf7E9
	 W4UB5U6RlpUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E04FCEF48CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096329387.8705.6977758111844698340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44576d9e9b5fa12aa713472c13c07f1b5aae18554e209fce85d0bbc9cc2cc5c3
Date: Fri, 13 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770963293
