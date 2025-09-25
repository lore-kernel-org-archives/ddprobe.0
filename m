Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332F0239562
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758774595; cv=none; b=iNUwV5PkXcCFPtlivBkF0TuY1y91c/Yf2qmsCyBYOjjN6uTUd8zxsjT1DoU3g3xLFQdvB+WQYRC+IBd3SbjzwkivydULS+iEb/LbuuMwPQ4v3+7l500v0Dg8/fYTbPwQgPMpD4z8/Aq6aWwtMeKTuutgDp81WQI9N16GeSlc0Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758774595; c=relaxed/simple;
	bh=09H6RRuCMAIRltJLww5BUmMfw14XRNEbcPW7J03/QbI=;
	h=To:Subject:From:Message-Id:Date; b=HkKfRG3siXD2T7Hfw5vwSNZeME1ACmqzfoQedP1MqYQ+LXoj75PcoW4FvnMy1MQ5s8KYFHXCiOWBwPzPDNHGdXdV3PbatFlFuyvxpTuVlDQdh5qzARPmf4MYAeygBW7P6lCNYIZlJsKRqmNGIjHGFDvg1hlK5BHthJWXW6OR/9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObHO3M3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObHO3M3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9190C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758774593;
	bh=09H6RRuCMAIRltJLww5BUmMfw14XRNEbcPW7J03/QbI=;
	h=To:Subject:From:Date:From;
	b=ObHO3M3DJqnAnhkfz63d770j39eYfpRh3JFsE4xpd/8L86V5pAE9rsBLoyxVwPhSC
	 0JmqWwQ2bzJQf9aE8qw5lrYANKGJcIx3UIj27utl+aDNJ3gmBnkjuhRrbWauFanA2x
	 UyiKxXwFJ9/7dNhl3Q2zgSjZ7uL4Ix9Y9ZI5GNYGHy7TJWJRjzkPPIpnfPHUerHP0x
	 EJvm30yREXEv7KIN8Xm58MFv+UxIig+Qnko2l/UM5wZtTkDVD5pV+KoCfT11Bxd9+g
	 DJdSa4dUzFdnBCvMq2OHHbPiGiBwwPCwzB5jZSSM2OXDRXvA9jIt/nf8wWv1th7biW
	 243gQ46lCw79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95221CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877459360.23653.17750268437594110042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a05536887e4e743b9cf67d65c98e5d783b6f08dc9ee71f2fdf2c75ed21d9475
Date: Thu, 25 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758774593
