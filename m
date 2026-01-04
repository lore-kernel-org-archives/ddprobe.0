Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392FA126F0A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767495834; cv=none; b=g3e4YdZ7kKhXFU8Tp/PFLpYl9F0BiZ/DS92No2Bh1xhbQf9oI56zHx2zgVULcmDrZxY+HxHW7wXJtp4p0YVhVUAp5AiyFWiBfgTgotH/rEbyLEXew0YQSHqhWo03C11HnPrF/XdhShuHUDir5efaNNOAfGKUa1GSdKmz1naAEno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767495834; c=relaxed/simple;
	bh=J18ANt4nSy/2jyWMLHiI4Oh1sIME/TyeVRnbB6se0WQ=;
	h=To:Subject:From:Message-Id:Date; b=AeTx8nsURy61P5O3ueSQnmiVhBz6U6cx9UgdcqX9OyPQheb+L2YRw/65Rl2ijwCf9oySxWLoA0OPAA0HQ5a9TolwldGPFbSywmPhm4VIf/cQE+ra8N7hG9n9mHKttz595abwiiLqzUGUSHmjvtwhTPWS5Ss3UhirkNMNEvrKjhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbiMiJYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbiMiJYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C91C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767495833;
	bh=J18ANt4nSy/2jyWMLHiI4Oh1sIME/TyeVRnbB6se0WQ=;
	h=To:Subject:From:Date:From;
	b=FbiMiJYflA6A5y58dmI5QYY+GC8E65uvm5cNw/OHQMHTTYtigwWLqk7AGkgsv4coj
	 pahVU6X+8jtbK4EiEY1sm6f1UFPZ5I1Qd/k+ZdGIYFgO2jru5F1vcSzdHcsF81jx/N
	 /4IxQVU1E8qOAff3/e0TnTwikeCq+vs2d1IByF7tYhKYpOlUD9NSkjy70QvDUTa2OF
	 QpKPtQrwvokZ6ofRKNDID9FsuicPGa+3LFsWUwAOMUVMvdFuUE2L67bGXyPMpljWJO
	 KWvSUfU3BvyYUIZUJAumUwmk4gJn6KURb7TqzoW5+jJs6Hpph0+SQDd0kjLHMHaUml
	 3nMOQQWJiLqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94756C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749583357.22331.9405073085863652045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7968bf9cb40b7f4c8788cf6db747010ae9962e85d0f2aa3f2b4b465d09dc73
Date: Sun, 04 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767495833
