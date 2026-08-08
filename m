Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4934435B137
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786165834; cv=none; b=Lj6oeQviljavP0mXxyxUrDiXzN9wOS2xAPWZk5m2luKVSmt9EP2gKyLPcG516/v3JYIHqSD50etLg+q34kWkehogRoZi2nkF3aGgCSwADgIabCKoDptPHfUTzVmYEr9LNWoaJN2sO0Pe0qk2ba7zmgS7UgfCtZGSqQyGRBV1lYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786165834; c=relaxed/simple;
	bh=n7pXNTM9+UUOnmEcRZwn9znGgfF8g864fKVatD7+fnU=;
	h=To:Subject:From:Message-Id:Date; b=n9B7jJRHz/Aw68ykSRJ4btYJujrwzH3B+lolEnclkrpl9BTbE6i2Vnf+mjvbK+nv/mO8EpykBJoXX+6oUTNcs6TcZ2P4id10OckQcRmpvnPHaZyeqZIH5TC5GFHbg0+ul6sNQftaHguSoT6vqFY/3V+d0YW/W35ukQ7x4MAT1O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0Z7p10N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0Z7p10N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D317CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786165833;
	bh=n7pXNTM9+UUOnmEcRZwn9znGgfF8g864fKVatD7+fnU=;
	h=To:Subject:From:Date:From;
	b=N0Z7p10NwZHZnC8geVQou3IEYcwwy8AwETWijAZAqjXm6jW++kwK5RvQL6DXwSnQf
	 n4u9aSave4cDglbAKy1lux5WLsLM4siYXNEkDzSng/GeXXJoJVwnPuPNs7vcY2J4ga
	 Xyx4Wt6G62EXooK0dAa3EM9xlwxnlU6Gt67kiJNBYEb8AO+mihanpRvASshGg2Cmyc
	 l6s2MR0TosrKb0PKeog0wdIsOR9JlPfsb6HlFoSOqj11WLOTJdxng3UoWnU39mYmwk
	 lkEdLvWFO7671WAV3Aekcfjv4/1kB+cuUzZ/RoyvUiKSnDblin6jBTVhzuj10wqv5+
	 YwSe+gVOma0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0850C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616583368.4739.12400810431749294422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d001fd38ed9ea78b1aeaa21f769e9cca7de22692f2da5a69affccebf434b7c
Date: Sat, 08 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786165833
