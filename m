Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5466F32AADE
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775378134; cv=none; b=B+HXWfs5+S3GWuth8M8tMMDM5BOWFcNOlQof8+5+QRQ76FhtwzX6Uw3+wLKmMrLgq6mKHdviamAh10cwrWX6H8OkbpmO2T80vopoJj/aY4EZEg0hk7T0H2FmEdSN1X4tBhyRpajf9qbBWD6J4jndP2a8djf1IbFqvv8iEyTqlIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775378134; c=relaxed/simple;
	bh=+IMhcHOLUb3qTitSmTCMCHMGlTFk+3hejeHx2A2taJI=;
	h=To:Subject:From:Message-Id:Date; b=OPM/OMo6SUxh/l4Y5D+CFcxvrj8OjAukul9C+oJmlVGIRdD0Q1s5k1604DQ+GPsoQDKVsfqphCabpk2h9XB1XEMmjjq9jBZMulwIN+T3ovIW9obxnu5K1xqbPfKUs99sR0Xh6K804KDcnrKd3bxH+fH08ZMxpXiagbfwfyw44Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4Ma/Npo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4Ma/Npo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE24C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775378133;
	bh=+IMhcHOLUb3qTitSmTCMCHMGlTFk+3hejeHx2A2taJI=;
	h=To:Subject:From:Date:From;
	b=N4Ma/NpoIFG4OMQ8g5i+ufQ5SaggBMvw2M9etstqw5f7PUHJOpQ6RxVrajhe7GSWC
	 XtgsB8kiYIaQO5CbkcRQwqa3rrGyBBI9xh09oHJfwt6I5angUQiEM6Df4ZsGDt7B3M
	 M6S+L44NXIyS4haeLb9WTRCv5+AFa1AKljQBC0mhoKHUR8jU/T/0WxHlbRHfNACUE8
	 2KXc0qEUMGNkwUDRTxjThvUH8pX2hDxOLAgBpWXFoCwd3AXKGfzkayPKirVAtOUDb5
	 lmb/ZWX1Qn/VvaMMa/NOPMqCGQL3yRIV4pOo0tGY22oQ+flA3JqBeY0bz/eIiezdUM
	 f975UL7WDOwUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA159E64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537813379.23354.14179713618260258706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ca6e1f0553e231606263c250a64ce633de987f368d41919b53d7a14f12b7e0
Date: Sun, 05 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775378133
