Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420A025634
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722123954; cv=none; b=VvemIaLS2POfDdNg9wFX8TqKGeG4Sqv7DryPAhcvffgFWApmwFWmwOBsgjeG7VB9NGbGGvccYkaRptNObn+vMJqhDxmGhbAuaiMUOyESLtofThDg7x5pqY8dsve95phxjATYdkNHBEpXgN5CzUg/y6br3IwEPESz/kLSKAzwBu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722123954; c=relaxed/simple;
	bh=7MqS//seSlOMVnB1zR7do5SC0XpM9HpTHVX/9AhT+cQ=;
	h=To:Subject:From:Message-Id:Date; b=rY2pAgqtz8WsAZ7OnW4XnisN1DZ3gFjgKqbZUy4RuF9OFkjlmSF2LDdm/bv14CbhlEM8WeZNWMQvmnW6WR/jT2qaHreAWLCNE503TtZK60/irLP2DVr4Yki0sIperzHyTUom+j2f+5ky309Cdrm1sBwdj+W69pzDc+WujPhrmBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2dzm4GD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2dzm4GD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0468C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722123953;
	bh=7MqS//seSlOMVnB1zR7do5SC0XpM9HpTHVX/9AhT+cQ=;
	h=To:Subject:From:Date:From;
	b=u2dzm4GDeRbpkZqyZDT1zBb/0V7l/NEEbDjIRJ1xd8a2GB453aOiJAE2E3Xu/k+ki
	 zKfTpPqSff+f3EXhnKK8FPwxZb00MwhvRH50Eh7malj5d6SzBNLfGbkQMdxy2KAMTw
	 /51H/pnrRTQcc0HfKpeuzraia8In271wJLIydVdHk42HPeb7z/Qlu67u2Uzd0SiY6e
	 KlsrTs/RpiKyCETODOecsRs242qYGTtPXnf3WgbXYuTyrHf6AZTc0/CY5MdFVKiCl5
	 0OGyu8fitjFeMOOJv1bAktgskA2Fu6JzifWPuuu7nV42ewIQXG5DjWo2654RFDgddo
	 yEaapWCIUqq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAF2C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212395360.4545.13829171940310643364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947c4f76cf0fcca46d0323e839b96f138e4ddf4990bcf2ae01c416c48a4ed0e3
Date: Sat, 27 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722123953
