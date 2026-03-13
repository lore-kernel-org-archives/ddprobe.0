Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA0C1DED4C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773368694; cv=none; b=WXzPONNyRv5tKmrnfBwP4HF0nUy9Kh0PwTG0gnba3F+uD/NgqGSwm2FGrVA+1Wx5jMAAHGD7XVzwxtMprjSPTsnVyqejCsipWC0NbYPI3F4tdX9udT9YlJdQwgdEaUGUI7P8+DOX28dUE/52FuwInPTwV37VppAw5F3UiTgI+Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773368694; c=relaxed/simple;
	bh=ZS2Ta+JzED5Tfv+vxMbl/LXt+KnUbMIjrV6uImPSzAQ=;
	h=To:Subject:From:Message-Id:Date; b=EafZAYa44eFHfiMzyDsmnjofrRrMbzxn8lH4wKMnSq1J6233POWZ3zSTO4FP7S2dFMgm1/LLUemHJwHXRH15N4O0BoX1EQq6Jw0nu7sscP5UGzTV0pWIfc0VOkoQVkgpIjwwghE1o85OYXQNbhSZQwgB5w+58GQqCv4dY/X6Arw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2eoSoT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2eoSoT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773368693;
	bh=ZS2Ta+JzED5Tfv+vxMbl/LXt+KnUbMIjrV6uImPSzAQ=;
	h=To:Subject:From:Date:From;
	b=a2eoSoT0GOrruiA/sfywn4Ir8Il7tNwYU81DHTaQG/KwgJq2OqJbH5awgFKOAbxH5
	 rB2iE5Egi/vycW9tMju4taydtFKq/ZJ/bHZYgAYHCLrK0IdbPQFnPCGdQ/Gk0h8bsO
	 wmff6lWz6Kakwi66Z3V3hlNTKot9jPZx30Q5QWSfwoFqAtIBfky/72XzLGisZZLDlZ
	 V6RSzONHhXJuuSLEg8W9aNOIfeptJfoRwvLaqdHNoQAqS6KdcaROYWA4Gq9Zy43vkR
	 YNg8s5ULS6JwmIesrOiOzS2Y/p+UzJ7qu6jNt3WRh7SQhXEQsb1jYp0HQUgOCmyIGl
	 SlsU/thvCIJAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92647106FD69
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336869358.14063.6050195297235566363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f383e94397104efa83149bb15c15d97c78068b9ffeb26734f75f1accb55b19
Date: Fri, 13 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773368693
