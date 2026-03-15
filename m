Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71663375AA7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773595494; cv=none; b=tTXhQip9ZN5BG1G+ww8Q1AtFgfAdDR+Lmm4Qb9TrsXN3vD/34HJ8KVEK7qo++LI8j0uqk3j3mLkflqso4NgKVe+5q3h98yh2yhDONREizmjckkXP42PPZBJv4N6O7E4eBn+xKFbVds+1SX1bFGfsWmCDm7w8BserS8iHQj7/ZaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773595494; c=relaxed/simple;
	bh=uSgOn5PoSddDwq18+PnYezLgAclDEZEv7WUidD87JiA=;
	h=To:Subject:From:Message-Id:Date; b=mVwUz7hpSHkBhKWosesIO7o4STkrVH0oiGzj/WenDE5UtW5kMFrztp8vr/7Snn9n0AsM6A2ZLsoCzzbaBLbxQzQIXaFZtgVQEtEsvfUbwL20vzQNMeUY+0DuHVmYLXfV3e/CujeTAEXJuHNESYE4KIus6sfuV26eACqi4bq1Nbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/91A8OE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/91A8OE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEF4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773595493;
	bh=uSgOn5PoSddDwq18+PnYezLgAclDEZEv7WUidD87JiA=;
	h=To:Subject:From:Date:From;
	b=Q/91A8OEle87amg5+Q96dSYNWQ4BP9QjA03bpPFyA9bw5vu2Su+5XmpCeO1G83XE0
	 q8eabW2F33fDHLQOVssneCREGH9yDocyASmTvfMYQ6N1fV0SJVBtGcLcf/Hidth7hB
	 HLiv0weiMAUjZ3a8BdMxRJN6yPeXzrMGHTP3B0fh1ud47yxing55jy5BNtoiI8SfRb
	 +0JGT2OgBwpalgFh6Vk5J7ZrWHQNFox5lUUQ/LGbsPiaSEG6iUEInVUqdslRGKdXDZ
	 oN/1VFspmuEdofk2qQgsdJEQtDynKDNSgB1X8B3gWzbCofoDvG4fjHzNfuJTKYctMW
	 37bvbdl7OCcUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99366F3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359549361.19928.9647806624814541928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431833e35878546ace2197f2ebbdf9c1b2e815d18d48889310371b4bf79a0fd7
Date: Sun, 15 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773595493
