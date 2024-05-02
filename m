Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DCC1CA80
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714633343; cv=none; b=j/r5PNCd1CBkg/B+hIajapRoNg8jcbHx80tNov3e6ysuoRphuq2KbaU+9usPJ++aMJwn0fk8J/fb6tuSgDt4ap2VsLRMv0O2eap5P86qDGaeXVScX2yJSYoqbw7iaHz8g5smU6T96ql8eYr//1/EIKu5csUZgjH+HZGhx79VUC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714633343; c=relaxed/simple;
	bh=68qLzy/0Rzn1nBhNgc6mKYZ5dnok5B66/0vjz+gQSHc=;
	h=To:Subject:From:Message-Id:Date; b=bD16v36ZFKTTV35LZiS6mTNIfRfqRaKDG608Tmdc2AKzy5PXx2yj/raxvDgS2w3/sdEpHudBKFp/JITfh57ls2nBvla+Kc5bRc+PxtvVZJKPYws8wagC1cfXr1irOE7l5Njn3KUKUewneghKj01nLxi5j6HuyjMbUT15qBUYABg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGdHDpIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGdHDpIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D836CC116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714633342;
	bh=68qLzy/0Rzn1nBhNgc6mKYZ5dnok5B66/0vjz+gQSHc=;
	h=To:Subject:From:Date:From;
	b=OGdHDpINdqMXUkENUk9s7stnv9LyHvkRwI2POI5Hjy9iyjO4csb5rq+Y9uu+0LX8Q
	 SxPl3qv6hW9Hpf50JpdpiiO28so/F8yadDZgn53O/gxM5Uvzygv+s+tqFqpw4Up6SR
	 swKEe3kjapyN4YLDdS1eFcTAUG3raZgogh6Yh9GsJ6YFRExQlPCYVVnnD9tJ5XVzUj
	 LH3UXBKyLrAAbCi7LzIOJ43FB+vL23Kln+vEnyZpInBLGpPM7/e18VB6qnZ8dik+SH
	 t8vivz40mC1FBOAN93eBfgeoo2C/mSnqKEftlPyt9b460DcIY01XTf/jB1Y9OlDKez
	 Zu/cVd83poyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C028EC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463334277.25254.13175265193498593356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b03017946df1fbb1541719e9d7dcb05d9047cae1a0de478c3fa83cb1f78f4d0
Date: Thu, 02 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714633342
