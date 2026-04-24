Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B4223645D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777037854; cv=none; b=czSbjVnSxeW6Qa31TTtYUViOb33hxYiwmlQhdjfuSMO2edoKA4qg05bQ8Hc2ccpKnI+8Etj1cE/uWLvYG0Mj6MotCqKT18c1eK4k7xWwevz11AoTUdDlodqjqPqkKhbqWmtvkS5JZGak76qh2lze+dFI0gN2QFo6EwMCngDNH8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777037854; c=relaxed/simple;
	bh=7L4Ix75AJh6ei09A2zxDFMYUq5lAnvs3hjYJE/7Qwqk=;
	h=To:Subject:From:Message-Id:Date; b=Sdd+AXF9w9T9TMF1BGf5sAviMJavXvcBSlq5bRw3O8QwCbLzb/ZOHxuYMf/U/c7EeLg3Exe8Vm9PE4qdgITuGcTzHmWmgwQz20A6+mv0mK6iGNgN+3YKRd0onroFFpZBy2MPPjG8D0jvq6m5+EfXQwyR9vsJ0nsEeAhJzkIm2KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/4Qgj1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/4Qgj1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83A3C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777037853;
	bh=7L4Ix75AJh6ei09A2zxDFMYUq5lAnvs3hjYJE/7Qwqk=;
	h=To:Subject:From:Date:From;
	b=u/4Qgj1l4wYW8Xar6u8ZaBGuibu8zAOQ4uSOwQDC8bskE4323HGli17FY8G+Q8Ybe
	 C5X/e+Jftr/qALFlGJcfr4PY/YlUbOXPPIE4TeB9VkbeewEC4cBvT9eSVqohVsSCCn
	 VkLfV8phoovv7b1KlM2kRfDPKdWNWL6m0+vbYziYlFC+0VhlICs9qPdKkkIKOjpfF6
	 dwNN5lLYxxdGLVtH9AgG3xAfGbYqM2RVF4M/NwuRivZjyAezTKA+2XLgjQl9jM8IYQ
	 a3fpsqo8F6Spw5eC8OiHt8Qa1+kHKfKNCivORdZ0qNkrqzlalW6H0Q49z27Nf+C/pC
	 BTz+5PAYeEhSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB29FED3C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703785368.417.17538407773261482158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0945e67f0d897c5e1051923e1ec1302066a6e79709b21db89b59c32eaad7fe33
Date: Fri, 24 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777037853
