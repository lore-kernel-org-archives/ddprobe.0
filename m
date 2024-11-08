Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AB5192D66
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731096954; cv=none; b=qEx1jhRXWnIaA2JQ8W3cpiWtUw08XDh2ZUtwb8K2b0l0p9YgvOBhWkRfK9MDM2P2SfBRdcRoM/ojB6Ht0Pjcbe+X05ac0XppLiHlt80c+N3jY8hj7j3YS1WGjSp3wA7Z/CvqbvK+gQUtkl7al/50HDWumgHBFewqredh0SN950k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731096954; c=relaxed/simple;
	bh=kyM43CKXOLRBcjFHuPhgE/sao4n2OAnoGJj7bDyTVgw=;
	h=To:Subject:From:Message-Id:Date; b=hIswQzgrvW2f5MLApgdh3gzGX7oUySxhLXrEojwF3rd64AtjxnTiXjU5T4B99gUaqkYNHOhNbtV5iu71S3Ns+Mzh6q5QpddfPsvPKAibHwTDkTVWZBPlORKxyvMZVP097kUoefycIBZ+x1mJG2yQd+hq996FKCOtpxdT+mGlOWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auyGCb+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auyGCb+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC00C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731096953;
	bh=kyM43CKXOLRBcjFHuPhgE/sao4n2OAnoGJj7bDyTVgw=;
	h=To:Subject:From:Date:From;
	b=auyGCb+BMJB1MIBug27QNkxUpno51wrd8/CDBj6qQb3MeBhbAsrr6JHWIC1DyCpt+
	 63VP84qYBWYY/JUB34MszJZLMP8fPX8lXMcaPGgNKeaSniO2wA4EcJqco9qPGvIGvA
	 xmNa9diIlY5gmrMsFUtNhCNepc5uMw938S5wUdV5Is61rsAbBSdhLgJnZWNpBxBZ3n
	 aNR6bEwFrEzMxE5aOM2GWBA8QiM61WXsoBDj94fwA5O6Evy3aS3mmokVt/YScvzqAo
	 DdB+Ax5loPeWztMEz8pb73jHLhZBTDuWK4iy4kJkF6UvpcuOS9S9pVEoa8letoTBiw
	 sXF0rPQUu/dNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9501DD64084
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109695360.15863.4190002358800360828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ced3094e40e0d150d92d69434211ea889bf80334d4378c0cb1659027c14a9dc
Date: Fri, 08 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731096953
