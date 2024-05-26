Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C98013540D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716754463; cv=none; b=TTR1TUjNui3SM4TTq4VXhNz28RDsSmsBwzS55tSyr2MV/PfB35twPGxdmO/Itn+mnvCYbi/ivRmOwT1WrCZwRfQoTUcAVeHPSyeV8ejzYt+9PNLjBPdTRTUnLlfGzW9PWG3xjtLa8QwVNTB79dwuN7RknU3K/T82bJD8Grhpsqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716754463; c=relaxed/simple;
	bh=RRwJyemkmZBYC2+BiD2VpzwyTTWOBkoRCOIo/52Yak8=;
	h=To:Subject:From:Message-Id:Date; b=CdUnh31BrREvFeKuLXLRmP47NT5GjvdkFezgoTBnKXgJJWcNdvh8PMwp1R41XXUNGmVrp9eu8o5dDDR2jEjSc7aKlHpKiHgGoETDKVOXVvSbyGYZO9hdFVHz9BslPQRP9JneGDTs1am0OHrhNzY6UM2r/aWsC9RpJfJQE/KYD9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9aSwapT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9aSwapT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F07C32786
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716754462;
	bh=RRwJyemkmZBYC2+BiD2VpzwyTTWOBkoRCOIo/52Yak8=;
	h=To:Subject:From:Date:From;
	b=c9aSwapTAzdGe3GOlz/PmA0sxzhJ9g0vhh48cwi5627/DiWUCP1uWXL3YC+nJ1Es1
	 A0u3fAbXhDCYF5P9TWXyqBmgY6BfqEum3o6A4PxiLARx/UPXgj5VSCdmUgDJsMKuPx
	 psdIFML8ifkI6MH/3eLKxi8KX6vKWz3SCAe4BiOAvn3KhgvieAg41tZnOiiMtm+nk5
	 aXq3BYfH5r/QV8kWb1XNGoorBrQKOSSXWy7u5Gk3U+2GnX1wPlN5AW6S3HHq8TS8kD
	 IPgjDj5Jvyq6woHITZ1zKRoBGvrDvASlPpjAjskj2xsrG+dz7WXcM4dnomnLZaaNp2
	 d4wQgkG9mBI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC902C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675446276.24396.14716379814278364246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79ba25e41c14db5903c8239712a2430033c94c35aeb1f58f56b44e0ad634c3b
Date: Sun, 26 May 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716754462
