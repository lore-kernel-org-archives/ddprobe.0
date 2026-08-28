Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76F2BE03C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787943034; cv=none; b=plCPmH6I0i6lkUyM+Od5WHVfzXWawda7uT/Bw/19aNuMZYa5vBvDIS+MTQDvjk0tvbe4RXipmFUVFRrHQXxmGsWjyM3H+x+7TBUctKVZQS3rgolACNrhXAMtQ59xnE9XlBtFZOY/uZzIExGobGdZR5gKTGuyIsklUX4CDZKVGPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787943034; c=relaxed/simple;
	bh=EHKL64m0oLDglPLEEgGVGSmtA6NwbXPPymkqcglPq+4=;
	h=To:Subject:From:Message-Id:Date; b=KuShWlcwk3Zp1jaaNK+xdMUNI0FrS0evk+11gnhR39MdqMxv6Jq+unKkNb7YvEKfwZMkOE2zPVySbjTg8N1unVNTbtNUJh2Fz6gfXXp+Qa/Hhz6vBHNaKfq+gaJXsErhHfhTOuhBXTrOYOA2U7Y6FSEzsoICcf3RTPYDvHFWN6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeomfN5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeomfN5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1726C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787943033;
	bh=EHKL64m0oLDglPLEEgGVGSmtA6NwbXPPymkqcglPq+4=;
	h=To:Subject:From:Date:From;
	b=aeomfN5NRaeY4H+UNw4zEO8GUP8AxR1VjLgA4GEG4tfNRJ5+8G8SJgAIFOYQ7pf5J
	 USF8iyluk4yZLnr8PJNOUl7tEHnOBQY6GB2DNBtduRod7gm2zjKKGU6C3aMAE8KXVd
	 /cABkApq72OoQq3cuWEXn2sVp27Ow5aeE2LEScZh2b7Cr6+qgNKPvgmjDToGE2ExAB
	 A3baZvpbs1xj+AN636oXr5apkoHx8W0p7tpzSw538ve5I32I1bzTM76Qef2V0ZR5FR
	 qJY9vg/ZgZMIVtrQZpfPntyFc03uGhJYhtsxTslyy/aEjTwE404VGqgqu3EzxdKPt0
	 QX0hGSN3BsADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE76AC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794303369.26284.14839365197624317732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7234e0ff94303e7335cec14b8cdcf1a55a1d14885a589092ab0e1926cc42f3e
Date: Fri, 28 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787943033
