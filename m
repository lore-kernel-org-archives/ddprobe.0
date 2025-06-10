Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299E028DF30
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749553794; cv=none; b=LHl08UiWJ+2uOgg6v6gcc5R5/WZg657LVMKrMQaJbjcfQ+djlgTPxXocgQbXWr5XpMzph/ohRyv2h8tiqO7BesdWLGRn1cXWgh/5ur3Za7jMFx39LbW3+IhIjf8MKXDdwpBZFhjB7cPD5CptsJTgX4qUPBSMn6xIkUlT0T75ht0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749553794; c=relaxed/simple;
	bh=QEnGRLcBVoIIrDfYy8/ElWC9pbER+6TOKQvalshLMxk=;
	h=To:Subject:From:Message-Id:Date; b=CVg1K4QNJFfTry8OyxXEhmi+VeEOc9mlbVFwIhjGoAhrIapqoMQusL2SCNxXSe2vVFDOjEw/1h3aq905X2I5irLFvXv+HlNgYx8YkIg0itkIPg510EUx0QNhxOAxiUiNKs+zBXlQ+P+acP5cbpWX/uV84938swpxPeDuNSQ1TeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YembaPb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YembaPb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC04CC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749553793;
	bh=QEnGRLcBVoIIrDfYy8/ElWC9pbER+6TOKQvalshLMxk=;
	h=To:Subject:From:Date:From;
	b=YembaPb2Kcva3gW23Pz7TayUpJky3IJ9nCyTC9sgSaILRXJe4lSza3FIecHsdJDpF
	 xxTcL6ge+0rjqkz1+kViOkLXjgXl5ipLBC7LSr0oQEvFtYJ8RA0L3xGYE/n2e1sV9R
	 z0aJUAyPxP3o8mmB+lyLY6aAMngQGQwGbaX3mm+m3FWpNyc6haXBztzecXYd8ChE9u
	 BSHZ8LtHkg1Lh1N3M3Mr2adWR2JNRrV1GGhNyLUU0PuniVMrKLx+bVnfW3ENYsqd3f
	 IlE1SfNozPhcau816WOJfgdwymV+QLuYQiaibivQSHrCIXFN87cKzk1h9aPzMiN4Jy
	 J0486yFZDtT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF6AC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955379362.18261.4850250467701021694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421b72b7a168ba4f20e973637368ad929127bc470781319be9e6f5e24e19d4cc
Date: Tue, 10 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749553793
