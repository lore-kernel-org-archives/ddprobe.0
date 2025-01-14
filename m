Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293622451D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736841954; cv=none; b=kYaezMXg7h3ht5KlDDHt3ZjOxUN6Gu2HxRYmFG/jpt1pshxQ3cIkFWk/R3fkeHCPx++BG6ybihNHXg8lqQIQfnVfXTQNZf4E57x9qUSVInsTQwxOmVTX6lMdQZTiv4KOjxFVLz257bW7X806yP9+d0KKP3ROBQct/A2wdLr5pwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736841954; c=relaxed/simple;
	bh=35ykqVeNQx7DlvnuIB4uPePfbrBByDWqk5ZQoVhfHu0=;
	h=To:Subject:From:Message-Id:Date; b=RjcVYSiWpXYqxQCNo/4UZV6fSY3T1aMQG9TTLa2FABuBqmg4EB44nGBrIGHjsd+hShq6EMd6G7Mnw0wlezUEPBmkBYyE+fHEUas3C3GpNPkXtSYffwAXFR3n2W5tM/1pSOLByed4MzWjkInd7mCs/57JmUrYG7a1P6sDi6/Qp90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/uG+WER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/uG+WER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE76C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736841953;
	bh=35ykqVeNQx7DlvnuIB4uPePfbrBByDWqk5ZQoVhfHu0=;
	h=To:Subject:From:Date:From;
	b=A/uG+WERThyrD/boxr6tmVVLG0c3Ty9QqC3Yfe195kXat9SBlq6D49DbZPCcQBdiI
	 cELGQEEcWlbOb/fi40btVXBD23RcBtMov0T1przrpnWdG15Btk9QQ57gdxk4srGXAH
	 Bzyb3bObsv82CErFb5ImgHG4l7tXCMCs9E1eO16lmkQvrfhQGwJdbV4GGHnkzQe9Rx
	 r5BiNH7PgFmMCNbPqLRApQy0UfNVO/REcqaaq6/oh/XemO9V6H2cY1CUWD7JBMLyrh
	 oVnN9YBC+EmJ/33H66+Bp3Ev6Smprq/oMhUXbCKrXVIR9Nls4PAEO6FDphnHbZnAKL
	 pQmfawpLWjMRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92CE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684195357.1739.1093999689010082283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be229be999a9a0a0dd8a24058048c706f8dc3620deab82da4f5ee47c21bf59fe
Date: Tue, 14 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736841953
