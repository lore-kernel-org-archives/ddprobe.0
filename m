Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253FB2FF150
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766374434; cv=none; b=Hm8gFUSc2AOb6OlSb9fXh9PCzcHSG/tIabVDkO5eN+OI7j4A6o+3hlvTke4WlFUNKfgEWxhq4cm+yAJ3HfbWnX0YLCvV3UJk9q+dESYImg5pF9nAxnTFSN+8nQPnAt32PFj9dl2S+fip2uiLv53BVR3QzOIfAg4s3iW51qSTses=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766374434; c=relaxed/simple;
	bh=0HOGOpTWVWsshCFwBpblPhuamF1LIBCAheyKWoPvo8o=;
	h=To:Subject:From:Message-Id:Date; b=lk74i3gzLp2w6W5lZtpmhOIuo0/SgfW2FaBqgU1HsTBT6l9hKhNKX+66B8SeZciAvcx2ix9ErkOk8McMGLRPz9EdEXNq8Y+8tQzWItBQVanlTHFnSOg0lBz5stnL8u1oXP3qAjKj61JfcEl39zPb94iu/XZ0vvVCwm1LKuSXIes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD0+0R9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD0+0R9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F7C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766374433;
	bh=0HOGOpTWVWsshCFwBpblPhuamF1LIBCAheyKWoPvo8o=;
	h=To:Subject:From:Date:From;
	b=iD0+0R9e8Wq2KpRQ3FluTssENfcLGib0EvZY0dXo5We6ulYGPsExO2xaoFkdZMi2N
	 WbDLysUSkgObaFO3OeIbv+p2wU7ay7+alQvYEdZz2+eGZjNzrbMBcbu68aF1cvd3x7
	 dSgX0H28XD0vONi88980xCdNEQekqdWG/Gh+h48BTTpjNhjR3wrLfSbrY5PA5yHyrC
	 1bcRandox9kjLRLUkk20sbXRF9M60+WR1QHxSOVdOyqh4st5GIass5W22djBkKX56K
	 YWz8B0/yTVjiFhUrlKT/sCYrw1ZUxjzCMQKvrA5WxINEh9BYxYH9KiIQ9IzSyot0pf
	 oIAT/+MClW5Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A02D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637443358.30095.3245758842167188605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68754f5a4a15332b5d34b1d3f37eddad054328d33fbbc3bed488d35b83a5dec8
Date: Mon, 22 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766374433
