Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A4A2749C9
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765551174; cv=none; b=mHO2RpXBZ+NLsnsK6NqK7uqKAC6tRgNTsO4kbswXhAFjxrsAfyo9r2+hfspEXP1akkL8cvKGvJqHjn+fQf9hXSB8AAI34EnSOlt/k0CNs/bAcqSbgyky44XUE6Besl0vdact0s9mdpylqV6cddEV6WfoGqz61p4QtY/YNOMd9UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765551174; c=relaxed/simple;
	bh=Es15JfvGBPCs2M5QqFSQaqXmRakGXrKKhVzgsxfrVrg=;
	h=To:Subject:From:Message-Id:Date; b=Rhzq0MZfSyU30Mfd+svjMHaXW0O0TR4xW0fpFv6t1WNJ6TSTogbin9q8nqVigVx77q0K2kdmwvju1NmudODb178g8EPIaVWy5D97UpO1nYngfAjwr3lkvgzUJypqOoZ1YSjB2059CkdJoG2VDb2s1R6FnoaGLyZcrn6XqrrkU/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAIKYmc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAIKYmc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D6C113D0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765551173;
	bh=Es15JfvGBPCs2M5QqFSQaqXmRakGXrKKhVzgsxfrVrg=;
	h=To:Subject:From:Date:From;
	b=ZAIKYmc1kjQYCCzyTwqVavty9RSnwiC0V9O6u+PxakMS4ErH/Qfk0lDMzO1l1sljF
	 v1sKLIfValJSyUybAOHKYRmh4RIdDa1qfTRQqSScnk2AAbRGHCjfotoi/yUbPGAmzx
	 0Q9ytlb8L1/HBU9KaQerTHL3ZphlXDNAASlArkf8BGMpuOIHwUHHvrr8kYXevIaRHT
	 +cv2adviscqyNZ1OTQrPsW8aLHLNWypSQ6+Mn5lvAkw7vQfFYbOxaJ/qkQNJwLYr8M
	 okmGivmxI9AQmRcaX542tJIhfpC/FiOillkB+EOx466FL/8dltp8l/gla9/gHY0FMh
	 xANS+iN3T5ZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98832D49235
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555117360.29566.2357536912843231960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7e7f5e9cebc74910d727c2a0780f0c59d821ac3fa23bbfde3ce70c5b9ca35a
Date: Fri, 12 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765551173
