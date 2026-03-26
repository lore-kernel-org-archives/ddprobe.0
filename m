Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFFD327C0D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774507494; cv=none; b=V4jtCWbHXfwUkrXUFdMsLks37sYUE+u0CjkT8fptT1qsrjfpeOzU2tSWcY0BG9f+hUfNNwlApa8Y06mbP2TaLlDKE/UdiCE4jDBio4sACHSMIQYbe0nUZuCpQDN1V9xOrzvUBf2G9yGDcob6z9kwRe8E6giP9nBBRiBDVP0FnJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774507494; c=relaxed/simple;
	bh=fhHSj5DMHv6WSII7IKMIDqqzyziCrAYzN498hICNLDU=;
	h=To:Subject:From:Message-Id:Date; b=fjCWOYCke/qpuQk3P2JtypfWnqck1c/MLGbAanDvUKjj0Rupm1CfjyQ73cHSU1+yV+NUXmGnqYeF1K+uHkJyMBFrCS+bHPZpHm3nrpZxhFo0SfMObvRP1lsErAbb+sDm54R6udRMzPif0U/Z5HcCwA2a5G4YiB5nxCdgDqs8XVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZtBqALX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZtBqALX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6302C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774507493;
	bh=fhHSj5DMHv6WSII7IKMIDqqzyziCrAYzN498hICNLDU=;
	h=To:Subject:From:Date:From;
	b=EZtBqALX4vftjwks9BTysFhscmJL0gMM6kWn9WjJW5jVaUHV4h5ka4y4DBoeVlJLc
	 iYGJ4QcWHlGAQbPMozqD+fjqfVAhlV22UblT3Z56EeSVxTCgew1UpRYibLtxchkgAB
	 4Mwpt8j1++TPoOJMYF/qA6F1GuG0ifAWtl3CQE8UJ2eyYgsJQy18Vg3rv1sH5PDLN9
	 SQ4wotO3kb79znaD2tXxlyWBvk+ZPsDSHgK85IGYvgEoVXQ1b33h31UEgDbqrOau46
	 ERYnWmhxbzRdHkRH0P0Id1KCZALs0oUMcXWNwFg7hQ/7NhgCSPzl+52xHYKE2cK7OG
	 NjDTR1KJXNCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272F109E54B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450749359.12020.15824480506493277833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb96e4ecfd16eca896dba2cbc081e97dadf7dcb4805c7ce02b0a6f9cc4eed32
Date: Thu, 26 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774507493
