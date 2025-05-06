Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A1B4B1E58
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746562194; cv=none; b=TppXabv3cI0j0WJKEw95TINdU3nIR6Fm+v3abSjNYI9glRXcGH+nZCY+rPhuA0shxRlUN4pJgs6UrLBLXnuXqVkjPFqydul9xAQyWBLjG4kyXIQuova8L3iV4bgxQ5c8HxzgjV5edbsrF/8paclHepggsX9I8CxAS/z46HlUB5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746562194; c=relaxed/simple;
	bh=Y52cOJZQ9cTSVkRI3QDgqPypmhbiQTx/Z3Ng/ep0TEQ=;
	h=To:Subject:From:Message-Id:Date; b=oViwF3PEU2/q7dbLNex+USlUzZVPNNjweu4TxdpxZFGtXBcEKa//NF4TK3mnFHDDhiIHJrLeh2czzATlCsY6clYBAWyJHdMi+0KHTFoCeeu6jdy+oNF8f5rRHeSVP9ja50lZlHsDcOjU8AvZxc/P+m0M/bFNJkzMK38ioq5XSYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuWStDKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuWStDKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E05CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746562193;
	bh=Y52cOJZQ9cTSVkRI3QDgqPypmhbiQTx/Z3Ng/ep0TEQ=;
	h=To:Subject:From:Date:From;
	b=nuWStDKoe05rl/9cEMsDqzBOm4CUgUy+TOALQcFv7OEeBTyVGJlqtBwwDsaHmlM6h
	 JLHuab6n6s3+brWuZww3Un5A5GKYQaD57yTfa3U7aODP6z12VZZficUiWYz/fTIT4e
	 AXwwySR3VkZZceh8XkTqjpZmJvoljA5zkYSHKiWPL2ndNsPBamDAMu99d1TA2VvuEG
	 YS8jMqn9G4exuE2fvMnH4DPfloZlt18LtVu1ZFQKtmjZrGpMPy0gJh+1YZl4LUL21M
	 fOA//mbsoTHUWwHdknKR3lb3RFNOBo11dJKcGmUsX1XhlL+b+kKRrmlGk84oZy43XU
	 dB350ZnWOGWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E35C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656219359.15707.9569172677758937487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed9b41ecc204945a17de0f60ff0d714d00995f2510a456dbde21282874bffbb
Date: Tue, 06 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746562193
