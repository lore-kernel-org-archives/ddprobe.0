Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7BC185E6E
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723103754; cv=none; b=PX4jZDndo3IYnzVDwNvImy4e/ZOj7q5dqQ7fGAQDU2QplEL3Nal0OrxLaI1wfPhIxxsJgA0fmF0LSA2Vm3RJEP80s0drymPWSN/bRa1kR5VYwAQIMnl0g9XWCciYgayVfmM8Z3iQ3PF++U8QE10eUYPcoPtGhc34WQS0nSdwuos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723103754; c=relaxed/simple;
	bh=UWc1u7v3LnwMLwl4ionsE0IaqdeIN2qX0uJz8q+Bu0Y=;
	h=To:Subject:From:Message-Id:Date; b=LKUL8oDANE6yLFvCGMGkjnM9eOVchSxaUL3jCVV6rAfAHOeG5muea4SsA9G5I1GJgr34RZBU4YYpZjBnUMPsvcr3kQGVdhE1hq8K/SuIqrjQpkZaGyj4ZKMAB0KJLPpf2VftodSsBEMaBUYaVLT+UyLUZPPJ6o8nr83lKadrQtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1OM4aqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1OM4aqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3B3C32786
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723103753;
	bh=UWc1u7v3LnwMLwl4ionsE0IaqdeIN2qX0uJz8q+Bu0Y=;
	h=To:Subject:From:Date:From;
	b=e1OM4aqUfz+stChV+jezrFgJs1oieHzlfuRbfnJDmctOiCsltJokk9BKivzuPgNLQ
	 wcAnnvqI5Uyit5GobECteO4e9XK4C/dCFLbmyD08cR5Z7Pp+33ZQx9hSpf4BZI+i3a
	 YHCUQxfszK/8IbMk88wl3jDgZvHDFJvEIRLO3CpXsloro/resWd9RpKkDE8GpKWECk
	 b3StSWfwoAsHQKa5nDRVWb+/p+PJ6E/6/nc8J6AcUOCoMmMo2sT+exfIwJl5oERAXy
	 Zb0Y6sI6xztR8RNNQExIQMQWlAYAE3Feh25XpEfov5I8RKHTuNZAh1x/7J8VsbWt1l
	 sr5PPfklYpiHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4412C52D7B
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172310375366.20318.7576929611270039337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3db96612b6831d93de91d3ed0e24cffc2f53e0ac96590944713141ddd67b19
Date: Thu, 08 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723103753
