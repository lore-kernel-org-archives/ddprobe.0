Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCF6DDC1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835154; cv=none; b=AaOCwo8QR3iurZhY6Z5D9Y5U/D+YR1nfpXm0n25+vOHAt6YMP/fOiLU7HrroMA3WrtOUi1IIK1yRq+a54seKjFB/rw7KBw5wm6u5S9okWGeEP2XHSwxVlkNgt5Ora5Py9DAIYaRRvcuMTEMERgOktY+iZpOfP7+Cvz1am+jIOwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835154; c=relaxed/simple;
	bh=nie7jU34DD3M8bEQhgm3kbm7sOQee5w+CdVCUT9pcPA=;
	h=To:Subject:From:Message-Id:Date; b=uqCp+xn3ZIZTiRodFWFAig2NnBxv6PN40hZdFSoP6I5bv21NHI3+nQB1IKIvSNJlI8Ql1I3J/CdSM0XA2zk+WmJdEQglRsCiZQfqrzRzHxFDNdhl3fgFFzoROwp/riSjH92ksw5L3qL9YRyZTv1S+23IQX6BBolQUOKhsjtvFXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drVH6KMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drVH6KMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD555C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735835153;
	bh=nie7jU34DD3M8bEQhgm3kbm7sOQee5w+CdVCUT9pcPA=;
	h=To:Subject:From:Date:From;
	b=drVH6KMXo1VVI+ZnwLCE8QBpcpDiOiQ1vQhiuM7AhBy3u4tz5kGYouFyvCSakH9yu
	 qzi97bjRmtjWaMF9c4MU54oYFR44tUZ9+LcoTiLPxzpu0/v59of9zrJYUrTwBxvP61
	 kE73gc13437NC6SP6kPONql15Px+zCveQ5kXc5tkss3EXuOBk2c5nWYwhUQbn7X8Ku
	 eh5Md9KvYPD3kelLpHup+FI8aC12vhXst2L8p8yB5td1HIIy1cg0UtbOJBFtdCe1y3
	 f/pDrAsB+OucDFtuS9jfegpMFkT8v/8IfPRZE3FulGB7qmhi2mEDSbj+z+oQKS/FlY
	 Cpy2WiMTl+uJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96523E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583515360.14201.10928921658043710603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c5d88d27936b8920badefaf666cc3d1ff115e7317a48614fe61d330fc9500b
Date: Thu, 02 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735835153
