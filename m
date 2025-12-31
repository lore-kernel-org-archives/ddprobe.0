Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265351DE4DC
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767198834; cv=none; b=LtRAgJXmGZX14A9cSqTjlVg1qsKoeU2tuFStr1b3T86Dsg9zf1teKKp1aqj86VMdh0griYsoYHtI3ccCoKuyPWdf5S8HSjBFB+6NfI41S7O8S2xiH39dsuLSWThh2mJ6SNQFmxR80G+44os3u+6khZtPGRGXOf/dxeKT8WUqFxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767198834; c=relaxed/simple;
	bh=a+E4av6loUMXKsTeSzSJF6XKzRC/qEJbOiuBNpjIXGA=;
	h=To:Subject:From:Message-Id:Date; b=K2eR4CTC5bDpsQT/uhfmdvh8WmnR/FtVlJGOBDHxlEC4wif7IhMYsDdYyCD2te73NgT+zWJtKVEmSOnQcwqLpDyLR9CsUd9G15aRmQBJL8LgDeLZOWAtTNZXgYHHr0f/pxxt/phUfNxxEgr2hXAETH2ALr0jqm4DctjwoSOLMU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6UTOwqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6UTOwqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767198833;
	bh=a+E4av6loUMXKsTeSzSJF6XKzRC/qEJbOiuBNpjIXGA=;
	h=To:Subject:From:Date:From;
	b=t6UTOwqjCByTeUUxZae1j7wm5M3bZF1tC8MiUl+noc3m5x+vxwuGix2GUKc0ACR08
	 RZbt39qEt+SEmGwcRy6iElTUsuTZ5wvQkpqsAoLIvdjwq6bNKAw5R4NKvAz38B/a57
	 vCK7S05zJH9Xc6AQLsSSO5VIsO0/EVPjitG29YEOr9UZh34zs2mU5ykLqktyjU6SYo
	 /j1DWrHHBeQlvgC2pk4ShbGp2Mg4vLrfu2Qvpzq+Sch2iQZBA4hF8qkWV2Fa5VzGPu
	 KDtJeidjJ7TjgWMJm1pQWa8E4p0P20g8bUbkY1iRJo0Nxq/KhWgrtM12437wQzOA8r
	 BirsovKZCa1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90514EE6458
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719883358.3495.1382726767870795258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c298705b4c53a93d4508cac077e830b066ec68e3bb2a09dcdb18e5ce6d2e398
Date: Wed, 31 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767198833
