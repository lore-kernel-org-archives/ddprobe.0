Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A86208D7
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714630343; cv=none; b=iioIJXDMrACCrr9BdswXATlYgTz4Fh/0+1e7JzytL1bAjZvqlhVbK0uLdgDbJ2UFPyeIuGc9vdy0Y8nEA8CfqeVnqiRmuaabsdgkCbT8PScIwv6BCgX6vqa1oA32LygjtgtHPyJg6+eeKwxnyvVPF5UljKVMz9NDoHv2bS1xCfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714630343; c=relaxed/simple;
	bh=8kIBZ/eLAf8iwm/y/7/78SdQd9yrapNhI4evI9lTM78=;
	h=To:Subject:From:Message-Id:Date; b=VcfYk1VzPODnpzQeKs66BGdiIsDmrjN0xEAzOj+ezsSohvGTO/TSuoFl9993TUtAQ+j8czfg76gKLfK/qSkr0niUyBiy21HVqjXVqiozWM2J2ymce5QujAtVX/vygRHk/E2hE13SVMIgwP9XdgAhh46BltKSwJNtpXWSSvk2hnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1Um0DH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1Um0DH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4FFC116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714630342;
	bh=8kIBZ/eLAf8iwm/y/7/78SdQd9yrapNhI4evI9lTM78=;
	h=To:Subject:From:Date:From;
	b=I1Um0DH9NfzXReQFvtEBVh/EVKXaJsf8LDqWhSTUQyS1XzSfoJ80AffEvV6b3DFvc
	 JkEa89QkC3VdZQV/vISUBx3+tOBDrZQlTNNoXeOP35WC5H3m4KZ97MufO8T7CeffU7
	 eG8pwXEm1o70xAcNFOkBwu5nWVLCwXCyQicmf7603msUTDITeWmitsEK8SdbilNjKN
	 4VLFtob1EsASXIzy9xr/sIPrhhvH5ZLIRq4KHogHb7a8rmqKQfAUWCxl5CdpE/3zsj
	 KUrINclYbbqC3bGPla+m5q1l9Ye5jt7KBJuMrfaV8Npb661odHPqOkeQAe/r0w+RvP
	 Gd6PrpeMr6x0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8050C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463034277.21950.7722751607752768149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104ecc980ee903ec219eaed2d0443a69aea1f1f40585484d5880a6d5b56505a3
Date: Thu, 02 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714630342
