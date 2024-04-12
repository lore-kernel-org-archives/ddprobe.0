Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4DF13DDAC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712949563; cv=none; b=HuVr8S0evu1GtjEujUSri0MjKUAAJfbt0nZLPbAxaUwD/fl/+O5rKEoT3LTrNrLUH6Vke5xCUEZGwiWklUG7zZeN16BhV+uzPvAlclka40NtXoWH8wsz1Z2fqgmpZg4fvOlp4PeUA5WoBsD4kpc+Ml/7XwFQRQE7BZW3BCS+uOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712949563; c=relaxed/simple;
	bh=U6PIl8IqufchiWxKmAHuI7I2HrLY7wQgD8ny2/niJmc=;
	h=To:Subject:From:Message-Id:Date; b=JoQdhMbCmU/wBdXjSC52NnSaisvkcOscBXjfqsJPVfRQWa6GYXZql3l+f5Wx1hrTC/vE+GfFt7KPJ9OrGvfkhEqcRRZxVZJJ5SrS51dZXwp0l0lyHS9L+KW+lywt3Smyfla+yMq+5F0TsdpfUic9n+IWDie6/PpTUvr82CfGNr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQ0Vv3Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQ0Vv3Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4621C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712949562;
	bh=U6PIl8IqufchiWxKmAHuI7I2HrLY7wQgD8ny2/niJmc=;
	h=To:Subject:From:Date:From;
	b=nQ0Vv3IqGDnMBVWhdgpEXNmO/UIkRYD6pziIdeR5EXf9cHZSd2kaltzzlrxIdaKsS
	 40emacaSQtr/EZNCJQ5THmZJn6mnOZo8nvPb1Fle2u65kcTxZDZSNVGMC2D+pfNDSq
	 56cIKbOhVw5USxTtiPy7kfTQpeuNo/5gsn7q2hmcHpH2PYULFR/irHHzQTlpVi8jXh
	 krGgsTiEjdH2KTocHYJ3NU6+Zb9Pi15VaMUYUWOM3NeJWjRlpArtfkKsoHewc4NEZ+
	 TdHUHebpF6wHMIeOcBcnWnA3EnOV1IzozCUDz95tjQNv6bsVwIll8h/BcsWyWOOkcT
	 zVVOYmWFut27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30B1C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294956276.29223.4021195145863020849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7e9377faeb8a970ab0d616de2a143f736a1e9ab7e482f511049922dc1c600d
Date: Fri, 12 Apr 2024 19:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712949562
