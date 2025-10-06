Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D142D6409
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759763994; cv=none; b=aK6bWtglNEOrN1BJTSq6nlH9rzOxdXdeGjzLET3QEMwVhnC7xXxrcdigODLLk15jms0F12KygGHtdihvN8ufDyZbZk12XdrHoegdABUrcg1hVHFW9bUJnUaWj/f0oMP56KZelFr++FOvdoM/r+foNCh86S5OTMqsC7oA67d/OFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759763994; c=relaxed/simple;
	bh=ntjw6exZp7V+uL1tCzTk5fEaQ9W8nY+P/+yW/XxVD9I=;
	h=To:Subject:From:Message-Id:Date; b=BzRd7if6Y1e6ksDWr+brzzHqXWs4xpc4DrEifnpn+OPi8zT6WRzXbWOeufWk5MbfIlJ3/j5yfmJslULtyPt4PtfSPEMx5wPf/pMhOo281DPIG/nVjR7UkQ//O5wYuswTjS0OhXtEE/hVAVe2PnWQ/Y321IuEx48H6TN2tbcubg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVMrD/y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVMrD/y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C3EC4CEFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759763993;
	bh=ntjw6exZp7V+uL1tCzTk5fEaQ9W8nY+P/+yW/XxVD9I=;
	h=To:Subject:From:Date:From;
	b=jVMrD/y/1es2nOGrbDvCHZH6lmVGBdRPCasxEfuTdjq23OrPa0kRYGzCjcLuERCPi
	 I1KVdOgF94NxiZoxAn5QULbsb1ryMNHtlMeXt8Ye0uhAUdwE4O5kcLtKYllXQsYxyg
	 Bx++p5UnJ1r6ZK+7MLtkcNcdekiVsVvSsJa9l0rxkP3S0QipqcmF2w6orpKI5YAroH
	 2kM2JDZQ0yQI2MLTU6MHUUvUfFTP2ObfopDLGStqQTcdZlyf8rDxbx+DELu7vcDyfz
	 Gx5UDh8b7slVHAMGdIkhuvdKLdlrg4F5eVQyIBg9Yqxc3y1+G28zLIw1TlzFkJizFA
	 RKpRl2+JwYs+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D94CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175976399357.1321.12693114790470565410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2742273564d5831c6d621f5e92db4cad26587e0770730497a3141abba5af61
Date: Mon, 06 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759763993
