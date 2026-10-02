Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBC427FB1C
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790905234; cv=none; b=jLM2q2MxIb3FzFpxAxKudFPnZb38bSTgSh3auurYTGRqb1Uztp5/84RIM9xVn9oxPAKqp2+pSNaX6Fvgo4jE4JdN/2frT9P/H5jdZYlxFCAIMpHvakgWPjoeYF428cLd9u2WPVAQDUtyrp4nvjWHG3qo9LXD1wi92TBasl88CRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790905234; c=relaxed/simple;
	bh=GjVAEzmxJHiGH85lqBY+YAdDbhIjkMXGB1Q7mxKf4u8=;
	h=To:Subject:From:Message-Id:Date; b=KZ3jhWRPJvQnPG2HhAnjkL+K4HdKJBhGNhGU64vELG6WIGtE6ELfm2dym5cSL46kLgXJc1XU8FnYuBmkFLPaAfMGEDnt19xz4mFp5OTeAT+tkb7KFoYDXyNWwC3qnGixugM9njPX6ajwgOj46u8cyLc1OEmf4jiu+Et1j6liCsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYUH6dYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYUH6dYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B64C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790905233;
	bh=GjVAEzmxJHiGH85lqBY+YAdDbhIjkMXGB1Q7mxKf4u8=;
	h=To:Subject:From:Date:From;
	b=UYUH6dYFUX4R3YLvQSXkgMV5jaf9Y4X4Rz4ByiTG2VU3U7i8VpAyb1f4dbhn50JeI
	 W7oNreUbnBGk/ieZrIKuwiw+Nggavw8BlkyMudb703/Yomgj3NqzWph+oHj5d82wT8
	 JFjYBSZ4Kt4xWS1c4pNKkVJfIhvPss39/WUSoigD3ROW80zft8k9Cr1cU7lBT55T8q
	 34JwxYjDc4bCk+ClnMlMWQ5dBAb6+N4ojkFm4Ya44M05NZDuFnNBK7YhVf1nr7qWRF
	 G6xycr46tvHP+NjeZRSPbwsYtu1XbkB5ju2goIJBI/RjulFEMGStHTHhWZAz9dgPNc
	 pvYMisKa34OIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3669CA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090523370.1169.8134509026574657482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9431a6aa76fea3215b704229e5d583ba2c4a16f64116502e1e1b96425cb2df23
Date: Fri, 02 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790905233
