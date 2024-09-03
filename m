Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C8335894
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725326754; cv=none; b=Js/VexicSVSETb2vFmCTxkaJcZoDn9PIo3jSC2Jc+epqcWstKOeAWqtuHe9Elcks7UstejQPyqCQgdAgVcNUXaPa5KVhoFXOyicw9QgyKuvSwPKyC/TP2pJK52sMmM4mcBP0ypIMdiC+DMJDLud241CMLKMkgfLWw1IKygYVAks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725326754; c=relaxed/simple;
	bh=63veFxlD3UIm3jtf+rCGHWUMcUHeA3jsphYXdfv89hA=;
	h=To:Subject:From:Message-Id:Date; b=fjQpiDTwAz83Vgik9o41km/atZv1BTMJ8ekM+LXnEfZQhfMzlcLFAbhEUIWsB6DJeboybAurfKkqSaide5AH6LuGFVVNSb1Rxh7Z4LtjsP2yc1ykpHMzTqJARLfP4k+1fJz18AS+JrgrCcbz1c//gtBQgdE7elApXlbsYSj3kqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtbPF/RR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtbPF/RR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3550C4CEC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725326753;
	bh=63veFxlD3UIm3jtf+rCGHWUMcUHeA3jsphYXdfv89hA=;
	h=To:Subject:From:Date:From;
	b=ZtbPF/RRDuEIKsAoXcEm6Z/+OT5ykvSrY0k6L51UdPG14eBK2hCgL2dFNxOdZYRUn
	 JTRRQt1rFZ3X1T9fCbcsIWuYF3/mVKSB6onhPCa+ZLo+TOVmlIS/Jl+rRzxRtrxOvW
	 OsFMiHmnk5mg1es0xj33Y+74pnXPIgLwVNiHRHWMfWvK+SQIWJyh1WLr+XF7koPOhc
	 0tbcaHQ+ZLeE95vl2kR8cqGBJCxGl8vWHuyxyoHFkAdwUL/75LIpwwNLT/R0J7DvFx
	 DlqCQTnMpeWfQ7YCowT/sDu9gEoA+TPBfbsTdAebluddG9H2YknEBIYFBp5H1jNthY
	 IuN3wpDiI5jwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF7EC54FC6
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172532675363.26890.2085812007917761864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6936d3a8aaba6e4c5dfc33a05bb80df0eed8d0c919ff271f870ad844b5ff04
Date: Tue, 03 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725326753
