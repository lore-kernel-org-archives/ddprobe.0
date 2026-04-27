Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A6F9C0
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777248454; cv=none; b=DDMHZMGGS/CmkUnr1FMJ6Iy9AXNTUAQwCuO8m6T+ItwDHweQA8e67aeyfWL1yomb2G88++RiK3VG0eDaSQ3ufrKvl5916XaYmhkZucjJ53zrGBL/BuVG9DlpbzZa4ujtOmFpwKxGF2wVMvmwc7yuxdSUzxSHKHP0ASs3qVyKlCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777248454; c=relaxed/simple;
	bh=jSwm1UBF9gfv5pXIolW0XIrTTNq5rPl3QL8oEPC1TkY=;
	h=To:Subject:From:Message-Id:Date; b=BhdHOeolo9wA1wSbvb8wFtcD+UV+d1lvQ0/SvCnYxxB5uGnkrcdOvIBlRvZicc3Pjn+CImPY7e5T9sjpY4E62ifIKAOQFudPHMwaVrkJnrUNHRpKYu9StFpanqtBxf6wUk8WJCzTK5zm+RpfTUYGrJ+iwfygxrQsq2n+MP80dp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJl8UUlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJl8UUlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB08FC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777248453;
	bh=jSwm1UBF9gfv5pXIolW0XIrTTNq5rPl3QL8oEPC1TkY=;
	h=To:Subject:From:Date:From;
	b=LJl8UUlkR0eIvXCcyJU8Hy8L9Xb+S+qA3rzZDd1A2ONz6JpvGreScGsjxm14lBlyN
	 hZTNiT+DyTwrlB1GgX+rNS200C6Pnn5U0xE9azznx3BSZ70j4ZTlhAPnkswcg+QnIH
	 Lxn5pgzKBnJc9xvu4tdHiK9Qo7SdNPWA+2TX0pdR388TzuxqdrPwDQVpukeaDrZSH1
	 5k3x2u2qrDu0RO035emDb3ceT5vNg8gUNImu4DaqQCuyLerrwaZIbXL2J1qYxqgZx8
	 1lwpxhMIGcMgYbpfj/0Q1ft6AB6DYiVYcIOcC6hbkrpxzlCXow2SU0EFtPzn2ONFA4
	 NztPtgEAsreUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9795FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724845368.26235.12539618110161012582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9177a8c3f9636340de991d3606c3d726e1ad6305a6a93ff2b62310d71db566f2
Date: Mon, 27 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777248453
