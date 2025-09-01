Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287EE1547EE
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756700994; cv=none; b=fBU2bhrVoyIO8HVw/O7W//Iigul+0YfDS4W9pZOAmz0UL8+llAiAbZWukH9LEgNjIPq2ObVaoUHISt0qBcB5Mk76U1AlbdQk/4whnIcdD0Z7TmAl4P9RKAjmiW0t67ArBLwsSsYUAik7vWOj+s8Q8054iXhyed6UaVqYA1/CrkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756700994; c=relaxed/simple;
	bh=jKg4iqg0XehiPmitak75e34r9bEe0Wi91CQPMIF/cqo=;
	h=To:Subject:From:Message-Id:Date; b=AWXM1+1Y0ZAGtmhMmrIuuKVrpd62NpixMnP30SaYia1h4DLN5D0aPZpL1iEbh2jfCM39aY82YLC/XurW7cZ5YLJQZHTMdhutu/MDRcXp2c2YJ+2zrEOxWnqVoHXWI4P7q0HX3GnM2rNDfD6A8x0mm/ECUGQcF0U29y8tCDm94GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meuH5aai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meuH5aai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FE0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756700993;
	bh=jKg4iqg0XehiPmitak75e34r9bEe0Wi91CQPMIF/cqo=;
	h=To:Subject:From:Date:From;
	b=meuH5aaiYzi27I5hCaBdutBBQqRP4do4skrynSDv6BlSDSRJDNSM72c/jLNnMqVzl
	 HsL0PfjDIjCtWapFM8HxEEtXSamJ3fDBIwJx+K/TiOny2p2CIIELq0PibXIAEnaa0i
	 f3CKYTrZ9f2fmZ3JEE1GMJmgSOEEBMu0DYPos53ILAJiLR8xAfHIp69biYs9z815Z4
	 +m07UUROjhfwvQGPjhavbRaVIsajq8sObEPES3/vz+Nfai7of6tbl+R2excSql86R9
	 +lZyVeles+C2GK9t/J702coHBxe8h5rnATKj2siqpA4ksUxAl9ssvAvKbspC1ZHirQ
	 SU0Ne9vLDklHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94501CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670099357.27241.15975943014534849984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c5d9b32c0404d64ad3be37ce2b0024befec2aa593a3d422e8f47fd039f3f0a
Date: Mon, 01 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756700993
