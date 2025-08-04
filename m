Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34918634
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754344194; cv=none; b=ORu1r5FPbPEeG5V83aNoJWVlUkYLJq8tUmsE+/v8rtZBC8Ptazd05n40E5ASQAUH1Go/zzw213ybSqPU+7/Ab3ml2nGm6jsRBKNvnJ8SKm7AOubcpVEgn6HBFDhTuZHLieAy3AdD3csH4WuagIIHehW3l5n3CCShseQx3/bAezk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754344194; c=relaxed/simple;
	bh=lEjm0da15S2SPvJVHmmfzZKAdLq20+aNJXRH6Hs+MYY=;
	h=To:Subject:From:Message-Id:Date; b=mgckXEeO2S0neQaxehlA6x0PvevWZSoSvxXsCYwaW6Pis+UxbViqEBit8N8SOjJ6YOb3Hl7ReDpsxvmuvpSbpYkEID/vMRYPmHdQ1UnBNViJApCAGqclFjMAq+LuQTakamDBasv0Ibnnj5J6KQmMj/OY+sbf6d1k3euYyf857Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SV+pRTbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV+pRTbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14AAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754344193;
	bh=lEjm0da15S2SPvJVHmmfzZKAdLq20+aNJXRH6Hs+MYY=;
	h=To:Subject:From:Date:From;
	b=SV+pRTbL1oEQjmxXhlvZoWFWBVYJx3f0qq0UtxoIObZurYe7kp8yNnVpW0Dhis3FC
	 9Ooc+iQndHE8uHJTNmkKsO10LCjHxJ7aTkxzFnbooDzMjb5y02EpV+p0RingifNwGj
	 EwKnkJAQ2JrT+sXtg8AXIRKXW5jvltbwLkAgcj+01M3iUVy5E7gzlN4cNLHYR25SzL
	 ETtB7TF8v34QoJHV6Ahyy09S6zEGW7HJwMJ+QhsWJg4OsdBKhMRvX0gRwNAQ/THdcy
	 il+baobFQrKsKl4bVnib2/kT5lRcCdO2qMcaN7Uz11hksWWhF/lT2U0wsZmsWT2BXS
	 rtPT2+3FGftmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8EC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434419357.28364.11484837598817432892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99eb728e290701cecbb0d828672c53622b4c52acf386b4edc222c9c9278942b8
Date: Mon, 04 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754344193
