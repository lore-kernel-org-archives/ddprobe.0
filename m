Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB732EFDA4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777487854; cv=none; b=U7Bq0GPbzheNDWfzCCNs51vjdZgls9zT3Fel04/WS7hKxxcDWkjBtbLv+cOzwxGhiM1vYCamBDePUrV60PrrZ0H8Aiw6+tLuKEzpdMj29OY6hvycRkZeKO3TazEnWafMlg10lOv3gNgD09+cXIOMiGBCy+gziR54nS2/a24VGUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777487854; c=relaxed/simple;
	bh=NcbptaSK5+1pQ+c8MEPuAr6X/+rkrUM448H7R+qau7s=;
	h=To:Subject:From:Message-Id:Date; b=apzfBmsJBJiwPJwr5ybb6TcehAzfTOYGOYAG5i2CuQwJPdtTBy5CrwlEre01foV1quproe7RMmImdU6kL11Sdfdu3978LRAiolHBTfH+QtqckkCE/VVo5tah0vTJ3WlsE41XQULP4hU+hlpKk/u2nTw3WVaxNbaLusNenS3tlMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNrFDmI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNrFDmI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8BBC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777487853;
	bh=NcbptaSK5+1pQ+c8MEPuAr6X/+rkrUM448H7R+qau7s=;
	h=To:Subject:From:Date:From;
	b=kNrFDmI0Wv08Vp5m3HCPvE+fIfcGxj2CktdrP1k9kCrwNQ++5lOdbZqI6X6r7vwbd
	 nfrJt1Jas2k9iLSsz3rxyQSwYkPPkop8SKkYNHfjPM/RJXD7hVOWrkGFZxnHAVZPdk
	 UC1wpQbS9fdSlPFdnk+h7vzFOX2B3Mbuw9FLgfzwMmt/QRL5KMRrIwuYmM9iLDhCak
	 T4XeM+hpq1/1kRqn+00HPamV7RYANc8NGGDZrhO++5Nmq3FHPBKXJeOIb5W3kHLtkZ
	 H9jdL1iooBkwEyAeas/36g338GxII/VL+QxvrqqC/2c2M4uUBZcavGKp5Ql8+lBhES
	 tc1MTtU8DTUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3CFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748785368.22009.6472280681895915474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ecb8c3c832e88ac9a6f716ad0c8b376b7f25a2e505a1534817d724e2a6cdd8
Date: Wed, 29 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777487853
