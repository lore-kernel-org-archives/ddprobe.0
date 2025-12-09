Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4155E2874E1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765303974; cv=none; b=hZMJ0cT8cxxlivZ3XkjUrXZJwg1rz4Tn3XYsrcptqV/xuBscNf5pX46Io5AOsmUEj/BJRf2cTB6uEFLu0sTQZSKBKBdfhy6ds0Bhgk0a7QN1l1rDNCnIJ1z4GuOGAY46aNfMpYkP7Z/9rB/JCq1uArhPb7JjvukzEcJFsy1kShk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765303974; c=relaxed/simple;
	bh=wn4bl4WjnpEbBTYV0nVcz37NO8VimycVjdk/SSW2/3A=;
	h=To:Subject:From:Message-Id:Date; b=PlRDTENHixFlOr2Rta15iwaFL0P4YEsH6ksVptJqvKzoGq0U117ih97pS95NyaxFD28S1adWzswPk95IO0i56+Xuq4IL3q0f95NTmScBvQndB/3kwjBHcB8cNusitWIgAAk/ErrzgKyKV9l7NpduS0KjmOQWdUDDo14+YtwFwr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej1Kff42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej1Kff42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE8FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765303973;
	bh=wn4bl4WjnpEbBTYV0nVcz37NO8VimycVjdk/SSW2/3A=;
	h=To:Subject:From:Date:From;
	b=ej1Kff42hRioMhTop7inE6dcgR4mEj6CRj1LUViOpv10xEo0pREPQu4P29+8HBCG2
	 lYiifENC2i0YKKo17FwquhPLd+Cb1xKTTQepvZNJhcGbz6wJMMYCmCLf2DG9W80wMJ
	 0A+2LuKY+SjHl+/6kCi7CR8/CRmnWdBTQL/xxSsyQfdh+LLOQd3W5rqarX03X6zSf1
	 XejbkZN2jjf/Ab4CfIPePtsiHe3jW0fmdY7eYsyM4HZD5XqBzoaTxVq/NSx8IaErdl
	 Fgmq/fc9z2GLbN0z/TORvQ3jQTx6sgNIYGDNhDIFew6fYkQy+YTsWhqi2WpYtlH217
	 x96fCWBm6x5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E49D3B98C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530397358.14828.12495782561939086576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b54ea0dec67bd2eeb1b7162209ecfb8815b4d6ef9bf42f4c8b2b77051c3d03
Date: Tue, 09 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765303973
