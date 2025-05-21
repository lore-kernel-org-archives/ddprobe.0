Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5720325A2A4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747823394; cv=none; b=bX2b52LywjvUPXBTR+t6gS5CyPiqZgqLhdT+1Z4SnTvmThvQyr9ncbF8PQJLTj0gc1lWWjYXiF4o4ZyXA36d2PT9xWxU/dctNgIUpDMwJNth+z+y0p1LpNMBsicoLfp5meTQQ/BoPe7acyXRQQj+bKIv6yupIOl1m+l/+GsKyzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747823394; c=relaxed/simple;
	bh=XDHDEQCdLvJAC5CeG2LC+/0M5N6D5DQNF9EiD+6iefo=;
	h=To:Subject:From:Message-Id:Date; b=Y6NboshPBw0jSU+Q7118xkzBvhswJtbvfL3Z6y0oKnaXXWIDVSetbEs4Mj4ciWFOnZffaka+XqotzudfEb6mq1zbdoq0sme4HpvzmKdRjNo+Afty05r7zsmWHwVfvOAZWEcJ0zp6oEB06ByYGnzjkXvG9Eb2Lzizy89pEmFBXYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYbkdkNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYbkdkNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3560C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747823393;
	bh=XDHDEQCdLvJAC5CeG2LC+/0M5N6D5DQNF9EiD+6iefo=;
	h=To:Subject:From:Date:From;
	b=cYbkdkNIfsDRuObq0flg4bQHjQrOlfxEXAotJFtl+QDKpVK4otj5o5CMMS7m97Lih
	 StmIu1GqPvQqjmgJ+FXkUBzGGnbf4wwnBWL0X9hdByBAhqF3jAk/QFmqGLaMfw+iWT
	 av/Z65J31hZahErN3a64BGGAwZz6RF4mAiJ/Ns2DzOBAvdXVPNK9IERzMPQQWlRLkQ
	 3zF1h4gR3RgMsI0cP7+7LSU3kzCP241TVcOeMab0KIcepJXM901aYUr+qrR7ivs4Rh
	 mq1DprVMbo37YNMYD8JL9pDLrydoBwMHjDVcT3TL24dZM3XS566bRjRFc/Hu0FHqCW
	 t1oOqKSyfgEdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A8EC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782339358.16534.9368368992858348691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7f9f8169205aae450c1baa0e417d5af7e94587e609acb127599b96c74d3ac9
Date: Wed, 21 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747823393
