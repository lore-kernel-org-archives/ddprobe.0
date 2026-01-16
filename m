Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8A42517AA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768541034; cv=none; b=NtlO4CoWAtY5dRn0SU9klshZ4Josl9huTsrfZ6DBBmRVXZwkEaUhZ0afn7XIYbY84fyga288JbwpWAgz74X8CD0BmnLG1yxSECOum4k9oxzMkWOMOsG9l9KEnTU3tFZ3KcIrGwPtEey2dGtpDfx6k5bPq3V5N2YxS4zlJnLw4zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768541034; c=relaxed/simple;
	bh=OlMGFPEHOuhatyOnSiAVRyaY2y8U0Q3HHUYjJZRL36E=;
	h=To:Subject:From:Message-Id:Date; b=nGWbt4xmzZmwmFjpOnOYiUNfYvR1gT+JPOiwwgP4Wc5lKJZouQt/9+7LYXgbtoemEC6xVgGvKQjpNTRFmC1wdGBP3ePV/cCIoS4MD5SNy+mgJfifP2KVWSu8c1A0bGxmsTaOyqPeSSAtCvnIpvcFCp2v4pK18be52YDxYJXBggE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpL5X3jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpL5X3jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768541033;
	bh=OlMGFPEHOuhatyOnSiAVRyaY2y8U0Q3HHUYjJZRL36E=;
	h=To:Subject:From:Date:From;
	b=cpL5X3jwkNyHwdRhkY/6gBX6J7jh0XeZ/Y9u1KoplGdXpEyGDjBn6/rm8UojoggtK
	 xa+xs8PhhV27qFuU4Q86N1DbVb9EEwk27LNLPTquoMJAzbxMeBhZ7gcPszhDHmjZsH
	 vF4Oz8+cbuKZPznDGsUFT9QqFxiPkBCUOzgWrdr8ReslvqNe7DICortWO3Wet2uk7j
	 vG+fSdYWIKbmplLDdxIAlUyYJOotPqWaktlQeIC53nsNV6S1UFnNdtd3VUc2aE1+Mn
	 3ur3gXdmKPlY83vUfm8TP7wEZs6RROs1Trb2Cbw+uYSygJScPWIGtqVfdZhetkKgLK
	 vdpKE1BL9JLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91138D4A601
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854103357.23969.15538303176807752963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b71efeb401ee31775d45145deba25e32b8021b14c8296adabe7a28a88af5f4d
Date: Fri, 16 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768541033
