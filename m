Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35E9386571
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788616834; cv=none; b=lEVbHKlXUEDQ3gVOOp0yCdAKDKj7X9584j7ODpxHAA00yaekrIrvB1KB3ugW1nHZes5F5iqefV2iJ5hKvf0RRBSAApATIzbXh6PzRGDbnYbTb9LKFBUki55AslEDh25Zf7ly/7qJh0wSr2lG3XBtbEkVUJGf7UiUIlThbCiy2E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788616834; c=relaxed/simple;
	bh=K77qF+BJwkemFJwNqg548JmXw9Pxb+7VJhW6eNitbF4=;
	h=To:Subject:From:Message-Id:Date; b=tJJ8dH88OY+CzQc9ejurUCiomlRI12oiPMfTJyqLhYBIWdUfNOdccXmrh0Fv7vYgZZVhgukGSyY0R76pjYx0Nxzw76teP52gCWkLNbKT+S9jYq2Mo5rWyRzcL0ruNxG542mJq9dsc8qJ29WosJUli3p9zXcEerQ4z9oLEaF3c3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GewTbatm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GewTbatm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC993C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788616833;
	bh=K77qF+BJwkemFJwNqg548JmXw9Pxb+7VJhW6eNitbF4=;
	h=To:Subject:From:Date:From;
	b=GewTbatmiQsHnks2me2ALeweKY4fDDgGRpD78erP9+NiT7P3th+yeu8RC/1NV4wBB
	 MOuf5EDZbuDO+1pcI4Cbi5DO/xDxXvf6Oi8vW7uExe1sQ12E1X7kDMAEEhBkaORt4f
	 08nZ4L02igAXxDmHLtapEiHHp3vkSstRva7+A3uFPwYAFrahPvIk6ORaln1m3b033y
	 gDKZdDeE/od8gma6EbK7mMIzxklKIxcwMlxkhy2o5qv7wNHVEANxTESVztQXo4COqr
	 GkA+uJa7wTL081oYRoRMcLoEq7eZMVK4RSzzd7tCyDrVujvjQwm5nHE9b8xh7VY9wS
	 0zmf/HHO1lmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C6C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861683369.17930.8394731451528472206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305f2bbc07bce332a06e0df5ef128747e633c0a3dfce4c65da6626595fbecfb2
Date: Sat, 05 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788616833
