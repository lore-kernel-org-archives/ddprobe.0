Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4836438A606
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755807594; cv=none; b=A4jQaEjmtKejoH7u2GC1Ti9RbrBP1xAEGgY3XRJT7WYwTr0/6IpLEzKjChO2g8nqvet14qjHz9nc9BFjVEL0hrPPphcyaeyKVr/pffTRwVhkKGSIMlag46irDsOdN1jzvTyRiChy65JKS35se493aRnMtlOqf4N+dLv0orvL8fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755807594; c=relaxed/simple;
	bh=4DXNe4WRGZIsWSpKzvcKQhqeHb8KgaJdZI+AWfVYL2o=;
	h=To:Subject:From:Message-Id:Date; b=jAOmFuQgIy944f+HZveUHKHpiixc5Noq326gHGlyQ6SwjKt1aMAa1oWvubrdZgN/1PQehhYEck4BjUqr+swVusCVrqRXRysHG6R1He3QjtYX6jE9iXLrRtpJ+tsudydbSnGCP1zDRBPxMngt0dEhgN9MMfLmIWAtGx0TIMlWDGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVn49d9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVn49d9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755807593;
	bh=4DXNe4WRGZIsWSpKzvcKQhqeHb8KgaJdZI+AWfVYL2o=;
	h=To:Subject:From:Date:From;
	b=pVn49d9dT1PNcpGfEbCfUs4gDJwGyRTPol6xwYTMQtnyaQzd6Wls59X86EYo4E1Wc
	 gOu1k8q7bzXcSYug2YDGTFlMW7O5W8M+uCMsXEPI1P7wy39sIynwik7MnRhbVl96Qn
	 lip9lkfz1dQ8+Ro3lOblJubnR6b5X7XNSM8/A0muTF9rW+jkAw3nWE7iQX0m6xTiId
	 VUv1uD9viWTwmnNCBxjGfaNuNxyeh+8jfDm4DWJzXR5kTpluhpJx0PLkgys1314jXN
	 5KDab1D4diQHxD9cse051aBYaf13//NeeFD86AQBk6D12PWBcjwGnUxAlXFFjK/ZyY
	 eXQhDMLOkl83w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8FACA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580759357.31449.4553681247460469079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62de89e7007f38e4cdb056c5926a85705bb8acf64d08186a470994259bf3709
Date: Thu, 21 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755807593
