Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D3548FF88
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791231634; cv=none; b=IMqhwZTrOiPjb2a7pxQuvcnDV9YIbd3nmVqXGxdfIRpW32moX3J2RSndkNnJRdi6Wd2OLno5ugOyC1N7pTu1I7gw/vFAmPIPTushsbBKCqZf2s+UpiwzBT3aZd4YI4GEetViut5RS0lco5GYEyl43wDAlY4nNznrv4tP1o3OEV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791231634; c=relaxed/simple;
	bh=4Le0TK+Lf77zdwpChpwx6EHbPKp7PqdVSYWZVTW9RKY=;
	h=To:Subject:From:Message-Id:Date; b=lGDEsnVk3MFklibaxbvtKiQG8bauLZtFBNJ9ZANkpeHtopY7GGbkoSN8GLiA4U/w7pqAGjuQ2Zpnz8lMdXJ5KxfxyXoq4lUNexcFTVEm3iPUQdYZHS0EeTShfq0oXFcAXdJxUZTH7WtQPTocS11JqxsawIODJlQev4FDJloEyQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8evZ6/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8evZ6/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69CFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791231633;
	bh=4Le0TK+Lf77zdwpChpwx6EHbPKp7PqdVSYWZVTW9RKY=;
	h=To:Subject:From:Date:From;
	b=c8evZ6/HTMVdpvF0U5q6SfD3xgT3Mryq5/RQkol3bcum5FyhrEttp4RC770ER5S7J
	 OXbsHRs2Wua1ZmeHe9CaFbfasaNez7s0H/3eS23kLbxbhmw/WUtSlAzSYW4UiZYnxF
	 FwtZk7nB4OnbI60eBwAtBbWmGf0WOnb76NCTLPIpLXlgB/YexTC28U6oFjgdiAAXr1
	 R4AjN7qZZjN9AEAcydHsI4QucNValibmSNw/FoV5DOUojSOEe/2TqMmTbgJO+O5565
	 HjQ15pY3LYbKyEJ0gS+nhu2eAoh2OHLv008W6S+BG7VkNq0wCTeRJUfemgLE5i7nEc
	 or/pbMv7/nqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC3ECA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123163368.13189.13334601230022426216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ff10b511a6194c7e2a549ff666b1941bee62ab60deaa9f951d482b891d545a
Date: Mon, 05 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791231633
