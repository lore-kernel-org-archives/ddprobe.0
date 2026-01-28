Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F3026CE2C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769577233; cv=none; b=jObbQbGb8rcXQky/i8wb8+UCM1dguzJgxWitfu9b8DC5/HFRCxhF9AndGjQyUOJLOhzCJH1n+Pb3gSFCozHqOrAsjLa0jPXRclgwYAKRKsn4XKPNUFtUcGfBNzrNJt+A3JJUSp/yVC/DE6YdhyulD2pJ2NmltteYtPBIEWGcimI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769577233; c=relaxed/simple;
	bh=1X8qRBpCs/eXZKhmTJI8YrY6TG6BfhZtbikDqMUd6wg=;
	h=To:Subject:From:Message-Id:Date; b=R1eOK/Mg1bFUCWmLmSN7lf3BweAhljioFAP76s3q/ZspgUSss24Vox3w9hOhJWFXTFlILkkFOlX9r5MWc4exos6i0Y5Zcy+WpnqYUqe+u08qVU0dsJXA3md8wbNzjv98/in/18SumSaQxgGPsO5xaiJDNtvQ35z+3vj7lX3mxAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB2pGVuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB2pGVuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D82C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769577233;
	bh=1X8qRBpCs/eXZKhmTJI8YrY6TG6BfhZtbikDqMUd6wg=;
	h=To:Subject:From:Date:From;
	b=GB2pGVuKD8GcfJSiInQ1yK5bgEKObxlaaAz+lnO4eynkrGK77HwPHj6f3y24LJQqs
	 KXZyXe0d7hMSlEEa2r6YKH7RPi71jCpZCKbwNcQMIiZ6hKyXDI3kyMrOQ98IO11ZdQ
	 n2VPtqbee4VfbH7CY9GXlMfNMr6bL/cKQ/saoR+aI3DOT3YI85qzhMVRb+cnqN3kl3
	 jHGnA/sr3udhobS5bfMv5NPOJHObCZjBJ1yjGKVo/UMaE7j1Q5tD10Pb1wRBK9ou8r
	 WMTiXuzhWAra2GE2KP4LcJFiRsEc7Lu5HZk8t0alNrt2+p6cG7JieNToJzYAvM8ncy
	 rf0H1+RC6WbXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECA8D35676
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957723362.6250.12442057421455533834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfd15deb47afe437efa98596a65fc1ab978f4613b7340e3e2b1b1f6f8d68aeb
Date: Wed, 28 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769577233
