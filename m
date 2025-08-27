Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304EC3431E7
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756286996; cv=none; b=A2ed/9qAyUsovDFpo5MBY0SLMjIbdQKRurEQa9BnXiVlovf/NrIsfaqj5z6jX5Bt5ZmSTbZT0NWmikIcPSw1DKEmpzFtlPI9T64LJ84vhoHB7J1m5BhWOHejSziSXLamQQzP+lJtOM25swRxIpecUEFvDC4a2MxTgjIzYJ5w+z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756286996; c=relaxed/simple;
	bh=7LZ4NMDkuJht+b08WYThReevAO75VBbi/nAEO8+ixQ0=;
	h=To:Subject:From:Message-Id:Date; b=q5KnB4mO2EuopOz38ETmQGM+wUztjx95mqrNWWfY7M2miR1YDFHEVZtm0kaqCX+AMuilWc+npJl45JUYE8nrBpmTdkuR7hnuhVBXWlOqkeaR0nIVifP+rBJ0ilVKuLQWJfwtZt2FhKbIAgo5Pfg7hKb+jkhB9VFvijTdrRpLQ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6/aGpNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6/aGpNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756286993;
	bh=7LZ4NMDkuJht+b08WYThReevAO75VBbi/nAEO8+ixQ0=;
	h=To:Subject:From:Date:From;
	b=N6/aGpNN73YGzm7uv5a6d+56ttkEMZhPWJGU3ic7lL381USJYXiCyMZ/cKeA2vasr
	 kFXCBYDabRyoQ6pe/LAP4FxdpiyFxgAQZzMMNoLMh6+C/NXQqrD5EAFxzqFAZUEiSl
	 uojUCVUCt4r7FAYtJUHM6IUWY81e9K07oGwbi5nAmKfmTBZ1fPeKsMX8fXKXteySwS
	 qy/Scs805tiZ29xR7n2YO6Qt3TN2U5jLgPD+BnuEkASthORyDg1pygqnc9ZYhGE0DS
	 LeboFvVG2sOuDUkJQoKXbWAGOFDlL9PdaQyCim3BhLkVOH+32LmyEnT/rBGePsKMEL
	 /YKHL+jDfyYOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E02CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628699357.22644.11748887765726660398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfd8f7e5e7032d568cd59ce5ced08bd45d2bd7e9153cfce044581339986ef20
Date: Wed, 27 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756286993
