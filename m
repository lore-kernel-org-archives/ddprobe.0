Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAC91DE2AD
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762703394; cv=none; b=tJD0in2ssOGx+s80IOGi+1BHsMPPSpRHOaOaLyg0uX6XEv6t3ob2SyczeRILKcrB9RqL4UZKi45h6eGtE1CxqebDq2Df9DI1rBFN4aBF3dEUVCE0Dr7szb/cYHF0lbGDBzYsvOGALPuqcqB+BkzTJZwkpjmzFSbsmZHxf141K+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762703394; c=relaxed/simple;
	bh=xS88O/IgTsmd97ctH1ySztsbWWiu80UkULaCor+gTzM=;
	h=To:Subject:From:Message-Id:Date; b=TJW+A9/djGQidDDftMhmGJSWb/fNqyTsFQwucJLCRu9DWjYk7Fb3o5wq/CKH+B6m6w9/GjHtikZV4adwvC3SmxkRYhKdhA6ZBUH9eFrqJX8FJ5RmmWRrq1kia75vLZ7yRLHL3o3ki4WW62RSKOVuiMzg+dNTvOMUI4+zV9ZFDNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3EZmqBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3EZmqBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7C8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762703393;
	bh=xS88O/IgTsmd97ctH1ySztsbWWiu80UkULaCor+gTzM=;
	h=To:Subject:From:Date:From;
	b=P3EZmqBQ+A1MmnAsKQWHfc98/AkAdHqlPwUTmnonPbDI7JSiJ3XH/EZnjzSb8Rd4O
	 ARJ3qqHKXfG4WyJ9ftuEPbGR/anxJdVszPi2u1OrP+YpD34UTydongVpYiMpvjZzdd
	 Ms8AD9T8idpPa/xGaDakar3dUvc+vSs02y7meCNraCASAVBE4bhDIrKB23egp/uOWF
	 q1UNZUxlNikKg32nhSP93z2dor6e7PJBW/vADuR9CfpjNgirH+sFffb9u5h7y3xu6a
	 Buw5SdaG8mNBLesJshj1gb1x3DzwSRIdxKaO41p3YeCzhMoBEkcP7H+aVs9PaD0dXc
	 lYfRwXrH0GjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F1CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270339357.23310.7955544620102724738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ab054068ea6057aa9df2484b513c948037870eb0d2b7a4873d1657bc396b10
Date: Sun, 09 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762703393
