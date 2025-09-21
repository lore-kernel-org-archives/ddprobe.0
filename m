Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB7218C2C
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758463795; cv=none; b=HfzrDvV/kxJDcJWblhCI8a8w3ld+yOCugCW4+8RRRJjGKlA9QoNnrLx/ZOPq04uFwruSAAECNgIdm68iH5gkaeWsHAZszTIXRXtnNv847b9v/rdqyTh4IHDbzdy1hxBdgeON/binBB9MlE5vMTx9vOWIV+gOvhCMmcC668uu7k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758463795; c=relaxed/simple;
	bh=wAaWncPrDr0dAE7t6uR/CADHmDQzCYDIH67vVkPWz1I=;
	h=To:Subject:From:Message-Id:Date; b=PRZ29P33h0IeZz1Y10//YSeC3vZPNxOSrzUvV1WtXTdWl1qUIxDi4th9/lmwidJf0nCUxnZzm4/Aq1AgXB57wdclTe4Re6mA0E5HA2twXPdgK3pftu2+yTQqELuAR4uaSDdGH1+Vy5V6yMtkgH04FHpdVtuCT5MEfMlHEezZz7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLei2P9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLei2P9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5D7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758463793;
	bh=wAaWncPrDr0dAE7t6uR/CADHmDQzCYDIH67vVkPWz1I=;
	h=To:Subject:From:Date:From;
	b=HLei2P9R3u6qNxK0xXYPvBXrIfQycgWVNylBjufXegMCLGxSvzpQKejM5y19rue4Y
	 udlkmj0yIEqZfW6JHeHPtwsKdNnesMSexcNTgjfymtOWag1wMXT6SUt3OMJi7wHOLp
	 e9ZL3Gf7lokolzOmai6pXQQCXzL/l6q3I7YR8fM6BNkzgCyDkstSDzHPSP3mB1NiTO
	 exr1W9+uAKEeJJBmQRZkq2GnVWkg25wM0D95yemSqzUeM0UDC6TG/a+EmJvgK7S821
	 0DU8OoAHEcRi6apEOo0oF45l6D+O3yeHvSBwHAgxLfYI/29GHQDx7pqSxPqQY1aOLj
	 aNSUnN76Do97w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FDCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846379358.17647.13634171396671994880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2d056d923161f5805e7c28dc750a6f20c4592656c64db61865ce513f1fbf87
Date: Sun, 21 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758463793
