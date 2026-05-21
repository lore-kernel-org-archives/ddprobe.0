Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275B360ED5
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779345034; cv=none; b=Yurq52DqTjnW21Z2LUmMX7ofcElrdrHwmDZRsme51Zsi5wfEaCZK9TUrUf+l+QuTm61kul+TCVh/ykbq1OI8LGVOyCRV2c7XIcC9818efIskVEa6Lyhq8ZRxc0XSS+32thDv351g8MHzaGFVqmNrMhL3FRh35Cxic9Btyly4Jtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779345034; c=relaxed/simple;
	bh=TKWZu9YDX5dBNG7oVa3Dw7GYiC/ztm6QODdzepr9/JA=;
	h=To:Subject:From:Message-Id:Date; b=pt0DMqm6/zelhtI0ypdwMcoMRkSUFqb+HAowxEbGjrFXIQ5Dfc5fk7Es3ijP7VWH3htpD7oUyqTUqQ/sFXI59IyHcP0CbQhTHtc96vBN/Oi1tpMCnX8DdLHBDglwWN4mRpIiPyC2dBO/az8/U3ZGZVnNDBiRrTUkfcwD8KT3Q6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbHXfXU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbHXfXU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51FBC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779345033;
	bh=TKWZu9YDX5dBNG7oVa3Dw7GYiC/ztm6QODdzepr9/JA=;
	h=To:Subject:From:Date:From;
	b=kbHXfXU94iBGbhGPMXNMaVCRnVYdtcupDGazn4SlFim35US7uvJz+Tbg0YIPuK38X
	 SHOoVy3vaxQxZoN3SRNOQH0J32nnGM65Qf81UYSqmbvXXeBVan8yXD6phcGRDJafwD
	 kX7XZNU3vkBhrq0eP1XyFpaJvx9/j27rZUD+x/krJ5hNojACgq35n+pMWZkyxNbFZR
	 kY0ud90PW7XiL8XRJRsMMsHnudQy/JlG9y7OACWELq45q13bdgreFHfJX0R3krRiSt
	 32CEawIwihI7Stw7woJozUQ9u9L6zaDGndcWOz5xnvFmMkbIycHg/T/2SjR2hCNhuG
	 FO1QbYZa9Nz4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC95CCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934503369.23719.1733904618159010596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c925ebf27f316aad32f72a7dfa268f0af43a4846c78702ef5ab701ea051b90
Date: Thu, 21 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779345033
