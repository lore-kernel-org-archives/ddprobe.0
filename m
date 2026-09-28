Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DF83A1689
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790616034; cv=none; b=sppxUf1annrpsVy5jokqGYsKbCd8kskaGTKlCZ4Go+TJUzT6mN3N0CCjy9uCUtLZ0deMIRfFcvCtTUwB7QZbS2uYHSR1ctvxHzMq8yWrx+kxRtCdhr5jhL6726l5mawdBKU9lUjRe86oZXSwq0QG6viuxnfe0Lhsgu7rpvd6lYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790616034; c=relaxed/simple;
	bh=vm35WZTA9vtZfSskXP+dLZXAgVcYrFRIQuk+IVTT5dM=;
	h=To:Subject:From:Message-Id:Date; b=FWbP8ijX0eameY3NI24+lZzuiudCHx1z+B0cwTsMjmFm1HUU3kX9iOupIO4h1QVOt/mtFv9+BION8ltjCfW7lEqERUgdtA3KjHEi1aYVQ3gTV7XPj6yCZuBy9MHaCASxuURqZo59M8TDA9ckxpuNP5KeWX/nS4rZXozew8WF5ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0dBSDaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0dBSDaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F61C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790616033;
	bh=vm35WZTA9vtZfSskXP+dLZXAgVcYrFRIQuk+IVTT5dM=;
	h=To:Subject:From:Date:From;
	b=l0dBSDaPfnU0xuXWbirvP2Edx9ksoOQuQ6hhtUgRdaKGDNo2p+QsY5n0D2bySDT6P
	 aR3nzWarmnY6O5seXs+2KlvRmhlC6Ek+FGRrgDR1VFAAeL3+eWn+8+ID675PyF2NKu
	 FdW2Fa3ymABRGFPfpz1s8TisVeRyqAn3sMgzA84j3rA7beOuHOYpkz+4NgSZB2c7dT
	 Dz3S5jYkYWP4OgeMRDkTMLgDstKrRx1yrS1nCS3S4JDxC2T7HVRIimnCk9YYicpmth
	 wGmAh7UMXW0oXGIwFk4yXwqy5vCQUfi93X61051kEIdbjlIAEdYQayBuEf6ZZgYfX1
	 C6DqM/6uXmkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD8CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061603369.29723.6565290595964526045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6ed9b4ebdc1933d5226660c1302e572ff1fc20c18619c5253419b0f2d2a399
Date: Mon, 28 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790616033
