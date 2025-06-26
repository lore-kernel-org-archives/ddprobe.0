Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA53211A3C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750955994; cv=none; b=OiT4T06XW0CCSYcDeaYlADmGPjYet98+JEbkBGDUiRPzmYdMDs+K7XLCgTZiQYvTKWcdbg/VWvk5+JGIcu9ZfqPNWIG4y3HaYb5E8S5HkE5OJhIOQ0jYRDsSr883WcF9YV19jlZXADwOilQ0gv6pV9o6SyIqIOuMnVob8vXgPvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750955994; c=relaxed/simple;
	bh=oxmqTGKHBwzH1VbR++cUKmZdvL78b9cFmOC2wmCO8QA=;
	h=To:Subject:From:Message-Id:Date; b=kkZBALB3OghaZGs7dF8PWUDO749rwq/XN9CkfHBIPyTCUMEAT3agk55ClZlrPjzbJ+PoQJAPOcr/nlliHy5d99w2XRPTO474vdZrFna6rDIND4Chqz+z4NYgif3hnmiJjPK6wbwveymXnCGsmXr8UgUVtoH2f/zzJPW7mqwiRNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFRQfP0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFRQfP0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A525CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750955993;
	bh=oxmqTGKHBwzH1VbR++cUKmZdvL78b9cFmOC2wmCO8QA=;
	h=To:Subject:From:Date:From;
	b=MFRQfP0Y1mhB4UtUnAYSgQWaOVI8Ux78dehsf7WC1qtDhVn5lgNCRYCFPLgtggdvu
	 yuUF8FiRm/3N8TPxYv6Pwc6Ov0rDSLSPXKqnszG6jCN+/eD2gCW1/3jGikqQDh13gd
	 StkUiVpUCHlCFPwDJmu9PtRx6cYpqoc8WPhPXQmywn/8ONyteMsmtgRs/fPY3rRiH9
	 BQ5mv5PxUpiTICgCyw1XOH0tQaFeZt7+3dB0ZYQGf9gY7b/CyttZ3kxEoeAaytifmK
	 4x47IkdyG+lBH1Qi5fzoIFpwEuHDPDE/KP3zdbwpEr8xYY91ark+ocRp76RKwJyXXr
	 QDnMXGTfZad4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032DC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095599358.18256.12422766670211536366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e081cebec381eca813085bdd2bf9d4860da113a2d6ad9b881a38c879033c2cdb
Date: Thu, 26 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750955993
