Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4E433BBB9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790919034; cv=none; b=UBvyBiOf1uetGKZSzZMSgavVDgQMWn+m8WjrUw1RLrErF8t2yYA/DIABsGVZtviS584xtNo2WpWLOHWHReD08csWFSLlJxCg+AeTatQ2iGbwJiVbG4AqQjRqPnLUn/2bbQnRjeOnLZbnDywdwDiBlga7H6YIL/x2ZHXKs7nbah8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790919034; c=relaxed/simple;
	bh=m/2bAsCrnNC+dGuvJycSnOvwsiou52YSHZljNjHsnlg=;
	h=To:Subject:From:Message-Id:Date; b=C9fSzYrxb7qC4zte496cc4yeKhg2toqtkPXhzVqTIQWA67qmxHBxcYCzAcDIOqk2k2OnVbhTIGl/Tt1rw52dr8FEioKF37l5PMlaAwriJDHtoURV1pKE+jJZW3TAnzzZgEduI8t+UdZRRnU9Bc5/Jr+f2POnR/u4WDRcCuQkTcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8oftxmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8oftxmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF94C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790919033;
	bh=m/2bAsCrnNC+dGuvJycSnOvwsiou52YSHZljNjHsnlg=;
	h=To:Subject:From:Date:From;
	b=I8oftxmniI5MmE6vn0KKTU7HsW2hGJhsbfFYR+gmZZXLTlgFaoCsDqfhaZRbpjJ2v
	 P47fm29DkwSYhWdtBrea2FPG+euT+NLyRCGzla+CsVglzUqR+Uwq5+xz74TELaRSmv
	 1QphunSw2JFwjZaU+0k/a84QWmmJMkdQFXvx0sTDqXbR99V2Ibd01PYK3PRo5fCpT/
	 L7PHcg9cm68xLcFJGsfOcuQIA3cPqLjxPKTg8L47WyTWFEyM2eKaPOrUJ563Cb27jx
	 9POkZVicp6WBHBzJYyi+HQ95k3O1gm7zYsRRZilxhtdzdsw0q4Pf8OV5ycLeuPjRYX
	 SSiHd7mUfSyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA84CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091903369.27361.14243601034517938814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75c70eeb8027cb435c00cf14df3d2c55d05eb32fb6a2dd5da8b83ea80238aed
Date: Fri, 02 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790919033
