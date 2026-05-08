Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D698F3E2747
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778246253; cv=none; b=coofMmzzCZRxTKLwISWX9PDLPS4G0ntXt+/nR9F04H2MqU6OqPBtX1+uCZx99UFn/5goyemeTeADpV2MNU3zGSHzitrJaUiHggFInC9xluSKNi4MSZ2CHC1dadH4X/2C4/9s+UuvLBNeBNGPQPZCaDHK1nFGOs6GwpBTZ5moeZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778246253; c=relaxed/simple;
	bh=QbA2ImUgoKYXZtwrSnp1xdilmKYUuY97ZxAykYZzX8I=;
	h=To:Subject:From:Message-Id:Date; b=jl8T2iIbRQ+K8FzihQZwLBmTmn+F/YpZVGjkp3q4l6MgXSuazbUJyeWi7JtmDq6bfoEEa+sQRT30hTMPUT/mgYxG4d1g5/TACkGlkyyZ3LukwUjSVuwO5qzi8H12EJDwy7f0W5ZajnPYfAehb/HfZwaOhA4eqVDwZHh1ee2E4/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcYUJkeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcYUJkeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA35DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778246253;
	bh=QbA2ImUgoKYXZtwrSnp1xdilmKYUuY97ZxAykYZzX8I=;
	h=To:Subject:From:Date:From;
	b=KcYUJkeXBGFj+k0JUE627tC1oDOxf6Z4dZYEfQYA9wBhIWWiSbOGNjAtMibSm5hzu
	 ZNCrukfS5tzAGNwnUqVQzLdDJDf/Kbrong9UaQnpYSjPSAJkqipCYR2YyGMe4JfWmr
	 j4A+4gAeHMegobQ5h+4zTJIFSWUUYUv1HcoA2APCQ/VQ6oB9fpknLm43a245OErkBW
	 uz11tvLQiTOFcvLEKo0lNla4GmtmQqHo4o79xP1ritPocm3aeU57963iIf/Q2syFqB
	 5JWJIryceu7saogEROHhv5a9kFt7Jpjksb19Zmh+Mnw/i6jy3GEapww+7yKvNheyo9
	 j6aO7sCm6C6jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB14CCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824625369.29253.16902375512152678429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69edae6a53a000fdbea110e43bb9080c8e966392297eca222d202181cadc1c3b
Date: Fri, 08 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778246253
