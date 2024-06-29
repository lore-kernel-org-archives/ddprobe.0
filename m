Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EA61C20
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719653663; cv=none; b=W4+1J/GQ6HWAPgRk+PNn6ILVhaRzUR9AmLT0db/0XOKQ4RT8iWsr3aPvCNFH7qw0V1bE5uA8MqilGC9+orE8u76rcrD6XsE0pHID8zrvnNIjFXmTCMoSSRt3c0YORsJ6Oa8UsC2skUJdhZXad9fmigm+iUpgJZbY+uhtdCuavmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719653663; c=relaxed/simple;
	bh=39kU/bWyxyj5hlLIrwRdYu4hj99Go8GBpHnazcSLLiU=;
	h=To:Subject:From:Message-Id:Date; b=lXy5ZsloWzVZ0M68qf/3c+gyVOdIGJUIlKAurop5R+OW4+o2CkNhwSiqRLXalWaKa6Eb5czG/bgWdXXWZjgHySwydlBuzd0czTFz91CkowzLsh3V7Wf2SrsxVMfOuaVE6SyFQMPmdfxL9VKkYDoJJVYrpTKl6oKXBPcuWUxrj0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArRVojVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArRVojVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D51C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719653662;
	bh=39kU/bWyxyj5hlLIrwRdYu4hj99Go8GBpHnazcSLLiU=;
	h=To:Subject:From:Date:From;
	b=ArRVojVWm1s4X/t9+JvPgaZwSMxlHbFIYz0w5FUQj4ZSqvs3TE47c4UgJqjG3RwS8
	 Uk3NYBW/JvUo8noKQdBzoNzpMMDK0+pglAjBScPZEt1VhB+0TZoVAAAx7lR5szQiYO
	 azhMwuThRYn5/xIizxjfY7xb5R3jEf/y0Exq7CVkCMZu8fEV2bkUFiS++hhRNJFqiT
	 8nbePsVpcEltZO3bhgRUTHgceh38j+O778UQKziepfDVtbcR9vlUiF4ehPPIcajlQu
	 CHfxJqpr22Pnr4V0njpdbiWi6wa5e1mbHBuKkDb98fOUqzG8QS1fFhBGyiphw9fQ5j
	 YhF8ukz25adgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB42C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965366281.1957.2755046979022801374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42acbcd27d3050c28f6e737832abfd0092799b4df1803c61055e309084fb59bc
Date: Sat, 29 Jun 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719653662
