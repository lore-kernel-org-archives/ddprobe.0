Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487F3EEAA
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743370194; cv=none; b=RJiu6eHMMeMB1immRZNmEM+T8mApJIrRsfFPdpzWDoSN6khsrEwAW+Se1V7UlnUK1TxbmZtOvidUqO7FNlCu6DtVRqoe6obCkIZUpBh1CJo7weyHFYfKT78t+69l7QtflPPxjr7sGaPrgKoZYaFucZC1trmoAfOmIDSH4YaNkwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743370194; c=relaxed/simple;
	bh=tP46FoK4UksSLsL/TNW1Jpy77PwWQl0Q18qJsPPzy2I=;
	h=To:Subject:From:Message-Id:Date; b=guoKYRfh6PcFyawzq+ip6BLpEVF4lf+rrXNwNmvUiwoq1vF4s9pEHRvUo9UNTMmkql4IgTt0bGkGIPUng0EvqBRslSPrYIcfEeINvrYrDixdlDW519T/Rl+ziWUo8El4iSn9c3Xxu7hxxxzcsxWY2CIILCLAf54EuU/eCBQjE6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eETr54Ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eETr54Ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6D5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743370193;
	bh=tP46FoK4UksSLsL/TNW1Jpy77PwWQl0Q18qJsPPzy2I=;
	h=To:Subject:From:Date:From;
	b=eETr54TsRC5fLxLAre4RhKFXqBI5HV+SCQq47cx2NoYlitHn1Qsyo+Wv53CnvMQn5
	 i8r/cEsqhjIu6xVl/ehEeDSOnocybg4ByzQoyU4/S9TLQQrGLNnd0JnO9D+CntK2Ok
	 b6KJTNUHqVz/jshnDdH8/CC7kNZczZGab5CxkZvco2J/bmO65KzuF8HYlaTvp8pQHU
	 rOVXyzp3TVzBnrESBySmu4BVKgXlqbr776cgogxRPEqClQkb5DN1r3vZIkiZYXzN2l
	 iFyrmSaLqYkqNj5e1oBO1KGMXDeFIZmDLRi6mn4YUtJA+9T/tEBQayscqIzG7ozQ3x
	 I+yl997CZ906w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9060C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337019367.19006.16371995415275997993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febe95fe9ebc70beadf90f0044da53b1560dccce4d3f248174b7714633ebbef0
Date: Sun, 30 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743370193
