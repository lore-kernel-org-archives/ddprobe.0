Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156AF4689
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753123194; cv=none; b=L5n0f5jtHJ6ah/5XhDUFu0Mm+rJk/mMaW/fsH4GITV+LxEnm9YldYo6YdiwvM0RQHAp5vp+PFBt3nOskKN74qChxYoc0L62Sc9lEFDD0M8nFOpclj03hcqWINqj1DiJq8WUuFockb02y4eLKDLx0S1CEu7bat3j0oM7xzYu6n0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753123194; c=relaxed/simple;
	bh=WqYeuDMU5mmRjeu3o0M4CHjmw+IodhrTlPRi2sBodZo=;
	h=To:Subject:From:Message-Id:Date; b=jPTjOiIaJSiFY62QxzUbVIGTRafWbyzIjQbtQ6k3wBFyeTN8zw15KeKJSi1FQ6OR4ugDXX2aZuFYJm9Jzx1mQsfwVzMutwJU8OZ+prhMeKHzwceVnm5/YkT1thohbTDKk+oI2UpQZ/jo4VsY1WhQORX12k3zww8Ba8f8LPSIw+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qedVzEza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qedVzEza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0283C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753123193;
	bh=WqYeuDMU5mmRjeu3o0M4CHjmw+IodhrTlPRi2sBodZo=;
	h=To:Subject:From:Date:From;
	b=qedVzEzakKuf8ha0QNzTQD+QHdsF9b8QZdOTUtuP1hmCK4d7Jxyi5hGIIRfc2y2pr
	 m2DAnhYDmUPqEIhtpy2AHNeUWk6z08j8TjxG3W2GZpQpL5Jvo73ZBtA7aQbvhryHOv
	 WKCXl+QNKNuK1CEKAuR/kwVxvO3FrdcUgAIoI3uCen3AE8J9eFoNePmBff9ju/roxi
	 8FrDHFaFoQkZuJ5jCDC5ajZPlA1GuRAOpJQW3AFsvfesmQt01wnhF1zo1c8nXbe3Iy
	 6oPifqzZ+3D+FkPL0ZteKbw+Qmo/UuyOvQxO1JzoeBqGRmDdQrbk3eCtgE37ZEzIlX
	 pjQ4dF7Sz3D0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDFC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312319358.942.5762400612050751517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b798f4ad219af0417b3189705958f84a236bb4aaa039990706c0fb05126372
Date: Mon, 21 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753123193
