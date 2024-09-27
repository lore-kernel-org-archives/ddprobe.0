Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529C1C6A5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727445954; cv=none; b=JGS4lsZLigUr1THiHK3FGTq7iVyfUGH8hsIJAKYsRjQErZN7fNqo4gwPZT5ktaspBOlnrX/jVC2kLBPVIE5Pfrmr+NY83i8OlAyUi9vXiGy9rvW5J5XVeSWG8Us1J+OV7SUv0LRuwW0KLuyv6mRTrEiOTpWiYD1UjCaEctB/Cxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727445954; c=relaxed/simple;
	bh=yYR0a7fn4z5kn+Yk+bgGkD56wrbrjHxhWrs1IeCo5Kw=;
	h=To:Subject:From:Message-Id:Date; b=NBMel6+/7SOO5j97MR3BteXmisJvP9MzRmQepVYJwXvUs1H3rYd/MvLH/rs8RCfVemDzImHKJfDpEMSq2VxWGBhe6X7xVwHYrlzvX28xvTHGXQG3aAhE6YKIwwsnj63z+Z39CLG1P8d2RXR1fKyEdCvdPyw2TZBSM/Qam3HSzUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNUn4qay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNUn4qay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C06C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727445953;
	bh=yYR0a7fn4z5kn+Yk+bgGkD56wrbrjHxhWrs1IeCo5Kw=;
	h=To:Subject:From:Date:From;
	b=LNUn4qayJAZaA6nR6pnHMXL3zHIUwImNepV3/Dvbxb7MMbgpnz2rJ2LrtxEXnmZxk
	 9+2/aiGysvZ/XKYmA7ccW4gAQ3dX8BeFlS4gCnoLafWTarUEc9pld5w3FeC0/N/ILk
	 yk27AvQCm88/bPMHAymwDHXXPSwy5vniSmEU2GgpQl1Ott3c5cRzwjxilyW1JaiOXU
	 XFeauWdrgheB6kCeYHMXqjZwm58o4dV0v3Vq6n21G2SQ6m6Kdmnv+zTnINn5vcoDAh
	 /ewkTNB7yz0TYuewzmNWxtz56MWfkxTT47FtdgR2MfHYq4UzobrS4G+17CwozkjPp8
	 o4FhmQPSh7XeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC8CDD1B2
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744595360.31193.3699501453063077193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897ed7d094cfca745e135f77a91f2498d564eaec0288832a8cdc02a1be0ea943
Date: Fri, 27 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727445953
