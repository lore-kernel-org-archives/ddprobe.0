Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A7B2580D7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778343454; cv=none; b=H4yP1X5mYp0Bs8aAbvsF43I8tNo9Vzu9Ba3Pw8Io/A/vbsy805IkA7F7Bzs3LQ2rJbhXOEmnv28xyo0WqY12vQKJzwq/i3KYMUWHWVMJKzBnpTNnMw6IO+HkNU3HwmU2A+TfDkrone3dWASaoff4Oy8C889FOfh3eELUHWuyd50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778343454; c=relaxed/simple;
	bh=xnJrXady+kXypLPzoXofp6ctJK6A/p8SFT85CQOuqJM=;
	h=To:Subject:From:Message-Id:Date; b=DAKEKKyAbg4vp/SEXvIpu+PuwkP+Vah+QStMD3Prff9G3jn7R1Yp4RQWdNWGIhxpFmfuyw1e5lgEZA/VQXlmf+V1OmU+Eksm/Y+5tmWU8DqVTVTGdDSOUKw+ImwBXEwYd9/MxWzM9jSfugUUPeCnCMV26/XM/V+jPDInX+roqp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvIejRoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvIejRoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 466BDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778343454;
	bh=xnJrXady+kXypLPzoXofp6ctJK6A/p8SFT85CQOuqJM=;
	h=To:Subject:From:Date:From;
	b=OvIejRoAkoHBwUTIvVHZPL0CqxdVyaqyxineiBlgj/ADiLSI0foo3Ow8iJO1NkqLO
	 yUFEmytJfXcaqj/Cd/hLwQsIUSwJ4+SO2p/rd1iQd86vuc2UfcYPqBzauLJ49la0vG
	 xA1OZv473P7kGI1uT9Gjl5X5lvBxDJTcjDHv0LrBAOTgKhNMHmLXvOGyQW8zU1lFEQ
	 GHHnLb3txtd9echtunhKhnNJP3WOeqiGOM6twYTdkVl37WbHsNO7DTen4PgupU4FjJ
	 CWRgvZOOmIuB0mpxHqUB4GZLlMfA4p1MRVsnUdL9Aasm5tQqInnbPClS/wleqMxTl1
	 zs77ELjiDm2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08546CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834345391.12218.16025575705455662884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3390d022889131a2e8f1a551e0807410e3129b552f891a4501c8150d75e082
Date: Sat, 09 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778343453
