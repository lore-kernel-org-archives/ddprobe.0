Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5DB1AA1F4
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751140794; cv=none; b=Unj9fQZkUcqcJzAcRCL/8+XKZ+NrRxDRCX7bHfcF+U/1of/1ZJeIUUHE99OCyejULxJiuipYILYUeYzIqaJmv6m85RdA2ZYSyjs4LWJ4ODPVYX6YVYu5RYwXheuv8xieE2gZbyq5G3eXM5NMWJtzeeg/XeqLDwLZoID6fmVR+W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751140794; c=relaxed/simple;
	bh=KpLcacl1DScxjhys64GWMXVc8YkkTS0Oq1t7E4Uy8C8=;
	h=To:Subject:From:Message-Id:Date; b=CsOcl9FvACrZBPxLRwZr2IqZSyXyt77ndw6eYysNxLFVUoT2CPfxadbGh4podss0WARX+kCxSUxQpZnTs3Ymhm6lX6kyyuRGX1P2fPV3AupUVgJifVgaRfuDGU7LLQeJ0qWzfxbUbIoFJyFxJBHfiNM6fOCxkmK34Fpf/JVk6SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PczTmLOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PczTmLOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751140793;
	bh=KpLcacl1DScxjhys64GWMXVc8YkkTS0Oq1t7E4Uy8C8=;
	h=To:Subject:From:Date:From;
	b=PczTmLOLyEUuzHIuilUXjxR6zn6d8IaZO4sznGGGWzQWX/O8xdItVDhP+nUEbAlFl
	 2k8duFxlHNFvNEUqedkBInQNuF4DW69pH3GFrLES99AQv+H3rjzTcAuXkbH7RJq1f8
	 q9MK5MD5WyAGQWNs5UVVY95n+lXPb09kbGuJ2CLL4XW5gffAcVKu/YbzyD47EI+eaa
	 b0vuvWflu0dAroJl7WR4KIE9S9wdruQz6HGMkNHx33CQFx1x04Z9oHSUEOdlT/j1CP
	 ss1pa9HjLBi80HpTJnT0UQptVQ/QXrasELq9Fd5fxMDOKKo2Xob0+O5TrgIjAZ1+JQ
	 a44w/aLpxobAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA56C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114079358.32624.11772009484029314083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365604d045e097b67ea8375b7a6f6cc818265cdfc869001769e04c0f2a539d97
Date: Sat, 28 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751140793
