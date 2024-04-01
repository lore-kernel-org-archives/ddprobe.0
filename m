Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1DD443D
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711945697; cv=none; b=kAEGr9iUcLAUb4U31Zqaxs3DNUPqQPWKyGw19XUUW6qQHE4vejyHj5B7CF+3rBlxwEQ9Gb0O1vHaxSOP2hsHtA7MGpfazU6knc4BnOlgzxoQXaTj1x4Tu4ZIdEu+JVwvlHFPU/PSKMWjafScG9PhSIDpDkxXapSnhf3Fg7fXqv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711945697; c=relaxed/simple;
	bh=n5cRRqF5ih1BlwLoyveF6lzsgy/FO8/A+ygJpZ8BiAk=;
	h=To:Subject:From:Message-Id:Date; b=H9DofnxTujKoR/lqGYnmULbiPePjP2xQhZWlvKSsf71d+Zzc/T0mw+AHE01aBDZWTxfqHrQ5clw8bNw7KKkVRw0ErPU6s1AcE8kqcxl4kQtkfBpp7opfe9g/qnOH0M0CbtrIqJE3KLPA+CR6cYb/XmZN6CEnAlWr8giQ2yWyLoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EthLQ1g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EthLQ1g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75872C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711945696;
	bh=n5cRRqF5ih1BlwLoyveF6lzsgy/FO8/A+ygJpZ8BiAk=;
	h=To:Subject:From:Date:From;
	b=EthLQ1g3BUlCelfBP+ZSLVTJiigIwbET97q6qI+PpGdpj9eOWz4HqacDFx0T9NxYb
	 ouQpuTQgQ1CzsSM5AinrEvWSGa2Mv284dkkJkjJOLR6yUvrTVTH0LPEmVa5jM7QCO4
	 D1LGoMXjLfIR5E5lFx8Ybqo9oeS1yux5Bw8JiwaIRKdcQ61U/DSGY8X4a1gjte3wzu
	 ZiarnJ5liAGfsTNHEsXNXfpRvSsG/GbBOsbg2+gtTIn+hgW2H1zL7ykTOOHdy6X/qQ
	 PXx3Uwa0dWD/i9cL3+whlx0EdklURIUmsKA02fQpjEO1rqmfT62IktFZO1pM9dCiz/
	 4z/LNwoN+87ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62758CD1283
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171194569638.1008.15690313947952323936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9e3eabb1cfe1f11c9b2331b7b40881523f88ae9d67cbeb2bb2e1367ee84d80
Date: Mon, 01 Apr 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711945696
