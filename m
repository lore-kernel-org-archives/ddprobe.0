Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD1B136E1C
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712678897; cv=none; b=aAeVMzxnky/fJdUJ+Jt/Lb4qvKL2QMf6ToznvL93QpwbMXal19mfAPZRBjf3MN6wSmzObPbxGF18mHvPHOUD0cbNdPWLWuoHgKoGWAgNIlj82oET4lMXriKsgMeVu9486TU3OgBVu/b0fC4BC6oNp0okP5XGfL3mKnkPOaEBd7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712678897; c=relaxed/simple;
	bh=0Qk7yzLGWbhoYZufbVo501AV5Fb+sP6jQUwFZUtymMc=;
	h=To:Subject:From:Message-Id:Date; b=Y5bD2Sd5XKrW7Lv1gIlozu379KgzeQCQ//8ddgNcBEYYU/X4lh+xgehGrq5mKBfXaQFO31ssrG5HybsZoKaqP3/0I2Pm9+iBha1ld6miWuDnL11UM3Ah4oGtKwZoecjlsBHVDu3yGPQpbZVsm26Vngv+q15LX0RdUtvcvfI0GpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBrXifaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBrXifaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8885EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712678896;
	bh=0Qk7yzLGWbhoYZufbVo501AV5Fb+sP6jQUwFZUtymMc=;
	h=To:Subject:From:Date:From;
	b=UBrXifaMpAKkYhMOaKgFIqv/W9aQvlrrpG4qbz41Au+SS2KoE9h7R6cWzVskkSTF8
	 0hpBXBjpGoN8dR166tPOILaF19PdbDz0rLrNbYLHqNXrOdNbG7mkYcBrdUDITJh/GX
	 wO5Xq6Vab/QwWmC/fxLNYu4go5zoSt+tuP7b1aBmJ21di2yITk7s4OT44RTH/HBFnq
	 pvOSYb4SymYXSDBDk3zaOxmy5V9abf/RpaDH3CaK3s4Ll1slqMRDKZ0Dnw1it5FI/L
	 Vk3vvq7hASgbHwir+oMn/RnmFbetzhhGKY1kSCR7xVlSz6OZJH+25sk3cixnfLDjQ8
	 lx+G1K38gkn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70E5FC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267889642.24206.1702050538427487455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19efd67d9a587f2b5e34890dc917fa8d584d6f0d0c25d92ed887201a52a0c259
Date: Tue, 09 Apr 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712678896
