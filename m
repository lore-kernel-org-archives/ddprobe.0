Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5209913A242
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714119743; cv=none; b=FpExHnVMYgNat6evLz+yBLG2WMTjzdweN1PeFeiZ8XNIaWWaRHdFZMKjfVcEht1PHxtQPpvI50gJNlrzjAo0v5yH9V/8+FGuv3x68CCB2Aayiubm9Q8IJ0v6fmntqJnGIoocPj4BxQc366w5qngc8pThnEIhM53+qgVZRTBYq5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714119743; c=relaxed/simple;
	bh=Pmbm2nKboEyYAHXYdYnaItDwfmyU/ZV+dsG8w4qxizE=;
	h=To:Subject:From:Message-Id:Date; b=TmE+6D+lLHaAYMzLOVYvK056lOMCxb37ms7YxdElfYyZom2Wqot/juxM6LupQ2syQzBgWrlfshfb/MVDWw7LzbmXxmGmc0VdiX46+Q6wO/vxA1kTgpTZuy6eHKiLFkO3Ir30hOY/5lHW5HI3+D9UhFTumwAmPuWq2p2QMwyMKVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZOO75k+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZOO75k+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC414C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714119742;
	bh=Pmbm2nKboEyYAHXYdYnaItDwfmyU/ZV+dsG8w4qxizE=;
	h=To:Subject:From:Date:From;
	b=uZOO75k+1GnPavopKApmYDZ7ONlcek7/7TapVADRnY5/02yKHlfmX7msacFfVlK63
	 NrEhD99a/D1j0rx0EgVX+kIePkYCnpj+0KEcyj9Vkd9z98cfgSga76p8pqVy7BRlVL
	 8sCi5bPlZMzdPjWhnNlIXRgtqFN06ZSfIpcYmX2QzqdRVPhV9e/F3RD7v3EzihWn9d
	 swgnhWcZoglp6cVrm6I86RvD3buAMnO6/C/5OK1wZDnKzy+ocF5zNKjORa0TrS2c3G
	 pKN1aasmIApeF+3142pL/nwnvcwUe2+oI4B74varjZUqrK13JW5pKiUj8PckusJ2qC
	 2djTmN86qeqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84C7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411974280.461.417507139879279654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f659e7c9e1eb2a85665254a0d0c9734cf93d672af47d58428d6be8c93f67247
Date: Fri, 26 Apr 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714119742
