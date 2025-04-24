Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E91481DD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745472594; cv=none; b=Jcfr2jlKGnRgdzBUPr/cz/bq+puAUofEBpCMvhfFUrZuMzFHJwytSjJ1POWVgJhMeE8XuCMQ5etut8g0ixo7MQP2wrbGsJEgqEOgBYjwS1oJp0aj8TLfW7J0JZJ440zaT7aR43QFb27HQHLq73Rst7E1MLy15HO9nhdHp2LZSkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745472594; c=relaxed/simple;
	bh=oMHnziMbeBhlPBmb7Qhw6UmzmWtbRrEIBYE5wfRxLb8=;
	h=To:Subject:From:Message-Id:Date; b=CERC2zp6+fFyZ0DVdTg4ZRgygmlQs/y25fk04AwEfM6YZwOGuOQXWPAaTnylsLa+YtMLzN9jg1YBquTrgqFfbNk7qV+e0Ysn3XiJnbt+BSgEw3RJtmm7WEu34DUSf0+u7sED8Fzf1swkAxgJugeEjMMkOJSEgt4cj/9ns3qUkYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k65TBr66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k65TBr66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3086C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745472593;
	bh=oMHnziMbeBhlPBmb7Qhw6UmzmWtbRrEIBYE5wfRxLb8=;
	h=To:Subject:From:Date:From;
	b=k65TBr66btiAPnsHKJY8w8XhLMO5tcgfr58kTAe+JO77Q0prQBoSVQvPaS9YSrFc6
	 3p0L7EW6AbGr6Hx1fNDvZ+vv6YCR4oJQp4G2Dd/J23kARCCievRG2+X8tvnMiqVUve
	 GciCAmFThMJcmKJzGFR8VWP+nB4IBWfYiiJNT0K5Qtn7d0NZDslwArtncMEtbZ3D67
	 B5lopqAOoAt+gPjJtEhu/ZI9odhbsEpAE+bw/piRfHJcxKb0DdPxkqkUrpYM5ukZ1R
	 WvUMoNfztW75fseUmQqCsunjfjYq3BUf64E2V/aX9FbnFCrsX/uTVCLYpcjlRQsfq6
	 CCXQHUf2BkfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA2C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547259358.3180.9195419913175848191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732a46afa69d38c1596c683ecc132c2a6f17f6ae3077b2f916655bb8551632ce
Date: Thu, 24 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745472593
