Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DDF445AD6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792101034; cv=none; b=YO+GSMLGpUERCNFZ+JCJSO2dlaE5xw2S4FlnUNgZhfIaTggWmHLInQrxFVNErMIddefPd3M1xga2Ks8P5kKZRQjWdxI+56ddfvV95xkaA0tvFDQhjyQR80sljIM6CMnRwKyVxOGEU3ZBpvlliHEdbfYu/vkVepYnTqIGynAh1Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792101034; c=relaxed/simple;
	bh=3RP6UdFOgjeMnuhmbkS9vlL4ijp2HTAMelepIyckA2A=;
	h=To:Subject:From:Message-Id:Date; b=sTZWvtJY5nK55pVozNlFAJcD4Lz+iRjTSnWuH190J7UFN973hniDvUDr/rwGHf0f5hIdRPzSnB+f5lWZ0gw7l2ZWI4OdGYwDtWEsABNp3U2MgyH/fEViYDhmbDrfKbYz9qq/Ue9/5sMQHlNB8RluIaH2mZM7n6p/vyZjB+FhUlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR8YnbbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR8YnbbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA30C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792101033;
	bh=3RP6UdFOgjeMnuhmbkS9vlL4ijp2HTAMelepIyckA2A=;
	h=To:Subject:From:Date:From;
	b=tR8YnbbQrI5zBhrP24q3y6KHCc2rUYZDxa4B5mJk/cjawz86K1WPAfgxqmvXaVwuq
	 NVuqvQWBo+92ulHjt/Q0KjDcZWah0J8+ffdBUwhsuNwrhDZBikTACTrqQot1BWGoDW
	 1iNp8gpoaxq5DQShf++KjBAhP3xHkguGKOq17P8z8uQpi1O7sl0aKLEkH7N9hlbnLl
	 g/OmsxRUBRGNEJ4lO3CvGxGkPtp3TrP2QZ7nrAKm2cPKH0bbrjEP8YcQbdGed/aCeB
	 Sp7/oGDQSTw0Pag4k2WkNrPggJlvONvZO6jJ47DDoJV3Sd4KAHPYSj8l9njEwqHvrZ
	 oyMfEtXtXBBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF5CCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210103368.17555.1937053612277874322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ffcfa0658d74962da6762bef7e111f12085289a657af1cbe40339e696e3e27
Date: Thu, 15 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792101033
