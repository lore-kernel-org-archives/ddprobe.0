Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AC338F25E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773782093; cv=none; b=jJTABDcnAaFo4IpEpLLxeJf2q9KWEX00u3xfck2pKNixzrTKn1FUjp+EgcylO/c3qo27tgPylKBd/PXX3LH/RXOKMvVhFktcIhKWurjaKqkCSoXqSvLkC3esGCoSfwyK16Js97RAh67lrPDMtWJwBnaGVaJX2aCbqC7FwAbSpec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773782093; c=relaxed/simple;
	bh=01j8vhBvSBPY6tnVMCImXQ45DDhF1nSDHoAeD3Ft1Ts=;
	h=To:Subject:From:Message-Id:Date; b=RCR3Zh5Y/orLc0Uc9ryQQjlmD4YI0sH8IYDrdG746Ntav4KWbjJP2s/BWa0se4sVTGzoDXsXwf2T4dgmgBSKqbwUBQLlmpaDYlRh5Arl2w1x98i3L9CbqJW2fdKYoXRiTCTeOuRnqtFugTncbCmaPT/UmaT7Lxnjht7p2prIQ04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Jb/9tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Jb/9tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577CC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773782093;
	bh=01j8vhBvSBPY6tnVMCImXQ45DDhF1nSDHoAeD3Ft1Ts=;
	h=To:Subject:From:Date:From;
	b=J7Jb/9tbXmLUpLAlHWwsvZBq16xZR/kiqepHq5fhU/cDkUFKKERVtkoKR8xtCNyQW
	 yYtc32AtVtOuf0DmKi3J5Irc9kpkkLJjHdIDRVo6GFoMmF9MAGgvi8KNralWu7oK7G
	 Q26NOjmq5o/an010jUEukZzqY6fe4hZ9YrZ9VsVTAdSpuvC8ChEI6sOwh/utLcmC4H
	 /4Hw+1SuIHn3P42IeBzOV7kk5+e0+FqtyUbrfDUAUNuKquMm1/4LF8FB0ZVPze4Vig
	 Y3+Lhc+pzKLK8QF6ZhRevRLoUqndKHHn6D+ezr9Yz+nmUf5lmedORlePGEJZO1W5bE
	 HOQdlWw1vvYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C1CFF6E7C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378209358.12546.11187110155933523179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb748dd76d419870c35bfe3ff3c9870a25ae9ec9da9021d5606e13c0dd82582f
Date: Tue, 17 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773782093
