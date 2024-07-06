Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626D6757E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720283183; cv=none; b=Lebn72IrKPFAc9zszQCJDRUjeqiMQu+oswK4VMDve4Iuaq3KQ4S4N7bTTHBG7c9B0oRnih//3+fnlzVpiPt8duPuAYaa3jK/e5HPqAUSmgGmdqxTKKp2ZPyBwnGq875ITE31QVa4OskimpM+LgJxvoy5rBb3a/xOk6gLIOF7F3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720283183; c=relaxed/simple;
	bh=CLu9zS8lhdggkCwBv9UT+yMs2tC8AY3wqIMlf9z7iSE=;
	h=To:Subject:From:Message-Id:Date; b=mZaAIJ2nLRIfCbeLp0aW/vtE/5GAtNIFINsGTRsvTiQjxmZvUQ5OLFS9AJ3m1RNpK+wF4bfy7HmSzmnjlG+I3fCAbupk45o4ruNWxyxLvvCfH/roaatB5+BNat97FsN59faSrLkOzCmDI3eObF2vGt89ldTqXNFHVj2iwPiSTn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpUw6FSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpUw6FSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E17C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720283182;
	bh=CLu9zS8lhdggkCwBv9UT+yMs2tC8AY3wqIMlf9z7iSE=;
	h=To:Subject:From:Date:From;
	b=XpUw6FSawEtUFOxrsNTUygc6RjFob0vDbNVpPNHDPoPE2Mz9QjJgwLCQ1QbPaZYWz
	 eeUMPhgajweWMYzt7Qmn1LH0Ho3qhWhts9s93oPoTeYTk8oh5ZB9VgVHgcWUH1g8xg
	 CCtiq7yuJPMt9hivWyTft77bVKTqBbwe3NGEDy1VbBVehXiAtyKIOy4+7YLI/qKxUa
	 zW+C7rL5FOavFtba3D9lVBogihuzzA7TZcOtlUYSQIz9mmhASwfjyXq1lrXBo8I0Q3
	 qZszoTE+F5sKrftKTEuFpb9fS0aoF5KPx76d02U3/fLedMntmV4fGt+71tEy+JnxJ4
	 df/OFNj4CEPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAB8C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028318276.14000.3381795601578529900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd4e9cf30eac3377b8af22e6ae38509675830a6a2926fb2761fd5a5bf29b808
Date: Sat, 06 Jul 2024 16:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720283182
