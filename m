Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEA627CB2C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750017594; cv=none; b=Bg3mc6E+BLgdSZ+ryW2GIih/myiSAPnPRYuGs1AX/ZarsTWAdZdElfpIUrCbt+UL8g3/Sg8Dq2cw6wHOos3kD0jzOjb4IjAsUrVsQHKz9oFvwWLSViZjgNnRrI/dSNbQRZV62PMxHeFwYprTgBSowgzwkaVfHmJVVIGKsPjTb9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750017594; c=relaxed/simple;
	bh=SX0qmC2tXqt6FC5MkObZaBVc1hUXdhiFbArfumNtNHs=;
	h=To:Subject:From:Message-Id:Date; b=RMWoTpHMKdBt6pd0x3MBcAFN6xxkuPJ0oe8ZLWrMMS0xwuVVAiy/4lsFzpxL+zwQUX22nzzMatPy5DRzpph2NzZzmRG3fY4DS5QLOLVpcyVNfFkJEqOje1t70BRfmJytINqcFM0jX6oIzWZna9fb7R7u7TUEdPcfy7JfWRj1H8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbSFOT/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbSFOT/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4DFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750017593;
	bh=SX0qmC2tXqt6FC5MkObZaBVc1hUXdhiFbArfumNtNHs=;
	h=To:Subject:From:Date:From;
	b=FbSFOT/WJPGOnS1EqdccI4vsMbiRnDbfMNRYp48WVMJPkOfBTWVtMa8v480suYPL3
	 3mdiScbtDc5XtsuX690EaGdEKX3MsFP3Nll/xsMf6WNgCbhOkM/0ln799iBQtleVbv
	 3X8P5PQJzciXDiDdDXz+gxz6wdaRWdV9ppyBI1ju3kibHazhr701WXFlktr5FxH7sl
	 6xpSbNx8ALBBnz4uvFO+VoBToeE4Ywn9CjwqPtZflX2EiW8XF2UP2cm7HIvS1EuRui
	 T/BD+isEwQ0VIPs+9R4Bv+r3yjP+HZFjUErayZJlq2JSm17AadkXF4AGwG6u+UdMeg
	 EWlo7+oa+r+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C88C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001759358.13003.13287652777517094886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee4a8e2983d83fe63e32a85604d0612ec346446c8a3a3656e343860a4c6c66f
Date: Sun, 15 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750017593
