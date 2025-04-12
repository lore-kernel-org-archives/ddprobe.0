Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397E01EB180
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744478394; cv=none; b=mfafA3vPLz1ATKRlVYklG0alwJmbZAyjuLlKKKyM0KelS8TDNiN+ctOTzgD3HtCzcxi5b5mOUoJdrgyArmwreG9zuxLCFDbul6ULISvIdvlk1KsIEk2FwzGR0JbURtRuDZS8NwJ1IXvBRT1arwA6FxJOgHONFkYTuETE5NEqHTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744478394; c=relaxed/simple;
	bh=NnaLK8tBzWcn0oLZpLLwaBTFxHkiXoPAFQSFvwdFXbA=;
	h=To:Subject:From:Message-Id:Date; b=aDj0jTZ9oeSEb90BUx3ckPnzjTXDpmoTFAd7CzSPKzCYBytY83EJtmLG9oCTHVBb54zPsIswqw9S+4yLQwRlNySVtf/dt9mMPf7Yz+o8ylIkZUOa7xHIUBzHIBF1MGs6r6aqDE3EyteikqdZ66TGxiR2uo9kDBNSaOOhTbGK5Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYR9jD+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYR9jD+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744478393;
	bh=NnaLK8tBzWcn0oLZpLLwaBTFxHkiXoPAFQSFvwdFXbA=;
	h=To:Subject:From:Date:From;
	b=sYR9jD+Us71oZOsZj4W+Q4UpE2HBEGnCD4L195+5OzHNyFko0TIJSFsOb2WDV5j6j
	 M7zUvUpNjBOeqaUyV4vk8OioX1zUaJ8H6SQzwbda/DzAvLtzx0Vhy/juUaZbw+IzKM
	 HTOA2G75ckeLkidonKZwrTUYZIna9eFrXeh/bBX8B8rltpHQr6+q0NbaU1Qnu6RYym
	 nNMlf9s+9gEWr+W5uw+cSwOCj/xON4e2miK9iJfvd4lCXewNJTOOAqnNhi5rCw1JlN
	 hUWmaDqbEVVnjxAzD1HEQVh7wO9b4GwnOW5iDvqsC32e2mn1hNcXcKarOWx2DiXVuo
	 nS6djaz+2UD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D5C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447839359.20094.14436592443015182872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ee791a1a8957d7ad261198dfa03bb564e61ea8d7100a7604f271ed9f654466
Date: Sat, 12 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744478393
