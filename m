Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B4D261B8C
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761196194; cv=none; b=Au+pyWe7dH8CArwYUbwCcjYOcJ/sKuTFSz5BGwIhg3GK0rvW8VoZfWjPLrRDOdsMmkf/hHJKtRJAmQR/1HULpFn8CfOPk28f/1omRj7Yr8tUe12MwR1DvDNP2O0v6/1PHA3z95lCPPsI1imo+3qbiBd773GkDRinbnIRpKN2T0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761196194; c=relaxed/simple;
	bh=i1z+OVpRLYtcyoV6eF52H0G7CWLMk8STcJqF0PIa93A=;
	h=To:Subject:From:Message-Id:Date; b=TTfsdtMQIPYltK8GOfaZ0YCZXY6arSYLe/LZZAiCie+XAqSyxexA2D36NFl4Efes/+ykx0QcRyJ0u2h8j11OeXV0x463XrwYGzmNRPxnG8tvommVm8ph6bkq5oiQGQVU1zLUNqqebDa0sapGzzfzZ4XUR31+BpOSu/18XmjvxTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDokir8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDokir8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7639C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761196193;
	bh=i1z+OVpRLYtcyoV6eF52H0G7CWLMk8STcJqF0PIa93A=;
	h=To:Subject:From:Date:From;
	b=UDokir8x7ImJvK/gH1GUVF+dypMgp0lS6Vvjkrk6MLsvzAoF6toHEwVgmgJehNnlH
	 lCgUGtEe7vzjdYLe6SBScAUFUpFTAoZDQuEMbSiJSzDY+wjm44OhGappbmh0hMvuIc
	 L/XHa3dD5SdhMAvxrOkYiTn4v7luLSoDDAUB6jqZK63eJE+xGJsYFJfjXVpQNLpUm8
	 ixR7vciRHjWenR4qak95FSqjd0WZTzPJMExEZtYrlFf6sOgLKBGQnVLE0Lb0QnVr9p
	 YJIkMTnbFNZMFcxDE3fiW1XJ8SyWStj4gFuAZm3K4O2fCfRB0UoU4T7Jb+KXOuzk0r
	 6k2Na37uilEVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9790BCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119619359.26170.6146517602231891077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b619a10f0a3223d12d86d7909150a6e22f7d25469dc9eaa095df5c59ce496a
Date: Thu, 23 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761196193
