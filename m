Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225C11DFE0B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755052194; cv=none; b=ao32eCRtE8jAB66kEInu6QhcUdntU3DIm7cgupZwuAYQFGzQzsMpaOwepcSQFjlqz2A/lmFTDPzRxgm6wub1IMMmLX1MMHGlZ3SLs7d33BZrLTdZwlNbghbFrmER5KUmYMIVOI7yZ2Avnn6BdPsV1pyOPmi2ACVqPWhJhiAevy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755052194; c=relaxed/simple;
	bh=scesrxJpj3QVESwkacxMQ23vWbom5LhbpByfLfByAVw=;
	h=To:Subject:From:Message-Id:Date; b=HbzO0DHv7Y/ILYXl0vMtY1QaCAjGIF3cZ9c02vpETUi3df0IlrOaTKaQCdaGtzVvFM2yZy5EQ5OMqsGoa2v6nufOOdIjqoSuToYxYsm3qlZppfRpqNvsDUKwatsQJ6B2UleZig9Y7m9BpsglLH7c5Vdpw1kfk62BtunECuVLeoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMNy3jd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMNy3jd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3233C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755052193;
	bh=scesrxJpj3QVESwkacxMQ23vWbom5LhbpByfLfByAVw=;
	h=To:Subject:From:Date:From;
	b=aMNy3jd3fgD+m7oIQjYTSJZ5jmkMUEMszd3KP2jmSSnL/fGrSG/77GoYOK/9HRivJ
	 z3fgNsBzEn80B86HWz5dWLghD0fTsb5wvYksA2wo8u1wUXBm99bSgkQPBVu8X0jQpP
	 dcoR3dw4mWreuVf3Jq3vibgD+umEGFsjTj0ityfqL0Tf6RCSXOvwgjvtVzN0IeXeTv
	 6EcIz1DCTORfyi5d0tivvxvTaPwwBuyT9xnAmBFFl7TGrG10as56aeSLZmdbjWtz45
	 mAoQenp/JDiyItxrYc7mm+AIoxXK9vjqQY7Oz1otNVjTjnIjbhWCZAZhk1um0OpLcc
	 B9ZI3aDSjukoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA64CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505219357.7634.3153891297853326057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8811b4e0013095905eaba0893511a4e33fd50e44fb41223c3b99cdcba40b8da
Date: Wed, 13 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755052193
