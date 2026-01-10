Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACEDC8EB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768044834; cv=none; b=MNebqYWiXU/Ak7qUjhPWsquCRQmw32HD4acJPCNzB/h1cxDFsXRXtWhzpvpjNGufpPRt3BDPtFT+NCIipnEC6MIIFXzEU5aBn+QIJhpw7OEDPxi2tz3oOMWQIZ0utH/svJPoXA/Z/mR7pS/wquO+8HojzIE93t5W3B7qw4rCoEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768044834; c=relaxed/simple;
	bh=kXqTr83o/7gEGCzS1/SEQ2bm4e/6syrPuW9rCEFcQZg=;
	h=To:Subject:From:Message-Id:Date; b=qgzIIMiAzvdfWlIUqoOCHs6uT0em0ZsTBFyzMXHiDsLWvZOvt+ijSHgJR4Rz1VnpOZPqFOCKSTLOv3PlwLz24aRinVZwEqGsokrzJb0fHI+l4IMaelYR7xo3YGr9fCbwp4a0iH+zE7il9Aito0GofXtmNqE56Dbb868G3jYNQV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW/8ZNHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW/8ZNHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768044833;
	bh=kXqTr83o/7gEGCzS1/SEQ2bm4e/6syrPuW9rCEFcQZg=;
	h=To:Subject:From:Date:From;
	b=XW/8ZNHOtqnVI7q2GIl2asEzb6ROb1vntAILUb5SsWfvAelhP993imbueA7fWcvTo
	 e1fcEu55g/fEcFGZx1FY7FEBh4CYQJPutvtDqVnGhaSi+YIoOPyq09Kh9QDPMYsMSZ
	 Hxi1ZODpOlYHHrtXGaOI4Iu8aV+tLVzb4gG1p6waixJ047AqFY7rnZUhEEzFJYBxkB
	 s5R64j9UU1lUUgxubbhSiwupl1kMJsccoFM3gE+EwqJH5Y32XYtynrRBuG7BSVd9LC
	 R89oP4HlStaTcifL9qDc0lp8rXL/wWAlP+tpLIx8PeMk2oDWDeG2uvtINNBeYr2GSN
	 vSia/Xc0IxzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B18D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804483357.24679.14789022384059794781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d3d94f17e6ab90e26c4a7a2880b2484b46b1278b6b5ade73a583d6eb62cc88
Date: Sat, 10 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768044833
