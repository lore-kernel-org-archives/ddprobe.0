Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47627944F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770826494; cv=none; b=osVJ8RbGh42/Dg+LCVGsag+3/mkZdiTjtFdUeYEz3mmCmUOTmWeFwCaLkDTldgrc5C+kaBhf54+vmPJv1RY1qiIg2kxRRG+HfkhS4ocoPNV6O+zAw4pUjAYesEYcyQAPaCg++OfdBPzYv6Z0Kv3JWhR9T1h2XuSr+lqySkA9iAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770826494; c=relaxed/simple;
	bh=DKhLL7shXCdcdcLbWw/CwoxOFe64jef50W+kpor0YwU=;
	h=To:Subject:From:Message-Id:Date; b=WmAplGmsGsV+ZlWD4W9YacEzKA6st6KTHR7qK+BpZRUPd7D6SQXX8SEOY0E7k38L0vNr56fs/h4iOCdHttg3gHxijd9oIGSQ6Bg9RlmPsidetvUyMfNjHyFsmGHDDicmfymYqL/dzv5Jy/bEYLx3dwXMs2oe++e/Cp/TAA2QNzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtXEqE/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtXEqE/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA281C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770826493;
	bh=DKhLL7shXCdcdcLbWw/CwoxOFe64jef50W+kpor0YwU=;
	h=To:Subject:From:Date:From;
	b=VtXEqE/OAN9IGS/VAq34CbUvA1S1YB1hqM3WKCZ8tRnay4DyLcGs+ELcV4blcO6qN
	 UjkgyGWqvbiljPbmgXzr32zoOsXlxETRwSAAHm0GHotF7/eE/hm86PhnUyrP8ZFEpy
	 2y496byGyZ1UjozI3/39zUHSGuS5UbsIimEclz0LBMqLMbrqExG+j4hIPyCi68yR8i
	 UDRDVYZsxLLlRRc47jPcOCK2K6yGAjtWGhyYzTWznPt9moztPDQHT3hHX2yKxmKW2K
	 +Dk7UATou70kB5/gnR6VwzZfFbVeiu20VCkcQTEmnLAzPVSf7hKOe4WUI7sZYYQkZz
	 CHyiNKlUlN0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B068AECD6C5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082649371.7467.9460613818105977733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f714d6f41cb603a0aef1adbeb2d5275ea0430205083c76461ad1cb0f0786c8
Date: Wed, 11 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770826493
