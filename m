Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B46B36C0DA
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770101034; cv=none; b=t0UVY0aR8C4pVGcz1I0pIiRX3E6es14cqfRdy3TsbsVrcAn/IeKlNnGshgYTpejfGlYw7l5TQyzyXEQkT+CAqzT5Vso/xNi6CdJkxN4huCnBsjxdvh6jxaCHquf0xeid2Tvxtpk0+THMHZSkLek3/ZzL9brTIXfs6LgbvRU6Kn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770101034; c=relaxed/simple;
	bh=AoZhdi13ApXufjeT6vAUHTSqQxBDqYMPk3Ks0PSsv9E=;
	h=To:Subject:From:Message-Id:Date; b=saeHIuu2eh1GK49lZFND6++sc4EqNW1Rh9By91lf1ifoRXoc6lcNrC7A46YbY1h4i987x1OF5kAnWsvR2oQFZZYfHLpMj8GYLJ/NWbL/lAcoFQSu3nuv8iwNPakU9MXnusaM2P4h4XKAdjF2XbgIXWZYllI82KMZDg73A/8rgvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWRcY32f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWRcY32f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA80C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770101033;
	bh=AoZhdi13ApXufjeT6vAUHTSqQxBDqYMPk3Ks0PSsv9E=;
	h=To:Subject:From:Date:From;
	b=FWRcY32f9x+32gwFW1w9g5PpRKzJREWz75t80KhuxywUL7b2ZJ9A+RoitbsjZ5TfZ
	 yP0jMpbmc/UiHNgxUQQ1ohWsbFJcJslsrmbyiteHfWJmsuaGqrd3svdMpxfiiU39r3
	 OArFPMn/rJbEceQex5slClx3/taXQDUYbNkKP8Vef9VOTOOmHm0wDx7tKyM1qvGHpS
	 2nEkVL2l8I2iFDVGC3oMDxBHt4/PqrlxCbeGKG3UvXj24L7PrdhRg3pH7fJ4iBj3Yb
	 nzPBn1EJa2lH1eWgRFBPwt+o7KIqKJks9WCea7gJ26elWxUmdBcqhMH6smGKtwF3MO
	 Gro3IjP3SU/7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EEBE8305A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010103360.11740.4003203685909724263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3ff57c9eaea18389de3f3c4d87c9e04634ee49ef55cf3cf41cddd05605b06f
Date: Tue, 03 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770101033
