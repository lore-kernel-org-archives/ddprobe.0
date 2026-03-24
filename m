Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FA83624BC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774363494; cv=none; b=o6NV6OHH+9CV1sy3d5J2kl+LQ2OW4U7Mjrxjq3Jdcg2HwPYGM79Fuv3VTdHK355hJ/+QukCPtCvu6ul+VTRxE4eSAVc2g8W5ToB86rd0PhmOktJjBSSR7GJJ9ey64h1VHbSIVzkub/04luZqSBl6zu5EQnV55bsk9LA/oIYJ2DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774363494; c=relaxed/simple;
	bh=xlS/OyImP9iPGmkoYJ6ROxVOnuzTfzuqY2Q5JB7k5CA=;
	h=To:Subject:From:Message-Id:Date; b=Ew5dpBuxg1IIfooiO3UzyPOcWw4OiIYvJc9EGoy0bXb5jBljmy17z4/2f6xrPLHSM+PSr1L/cruCuCS/GhCg2rUS2xR+zXuxxt7cjDN6pTGhBFm61sAT80FXN87vP7lKKNQWmTHRf17loeCUp5Fe3uo0bBsi8JdGdYajxvuCQGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npVpKUkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npVpKUkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE9C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774363493;
	bh=xlS/OyImP9iPGmkoYJ6ROxVOnuzTfzuqY2Q5JB7k5CA=;
	h=To:Subject:From:Date:From;
	b=npVpKUkFhyvYSGkPttubB4hpC/OAa6SvOJMtCFO1kMXQO+LbQEuFeZyfsI/q3eP6m
	 CIP8L+W9LFAZh9rTky6RWEurZMFo5z/spYVlg1iKNlRU133LsiLOVF79mEQpKqBVuz
	 v/8G0Eqbn7/VIrzV0npn/OzUFx0QNkM4Q2gV/cjevdiS1o99N104i/Q/+QogjLCYi1
	 +tbQxt5CI4IyqAqzbdA85cmWxiBQGbPHG45SjsH4P4gamoXpGyyDCYmr3ZP6g8ucmn
	 vUqRPOheGn1r9BG6IwJyNjBy1cwm3SMUMhv2fwVV4DzHh5NT7Lx/CGQabPGN8T/YP7
	 iSprUAsvVmKuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F2F54AC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436349358.972.173370705407059305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec3529790077172e61838a06628584e0e6f8df16cce4ce4bbf8bb9aa084e9da
Date: Tue, 24 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774363493
