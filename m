Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EB824B5B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 08:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721031803; cv=none; b=KUNy03D4oYV0Fx3QkPcDd+gLLd5glREGFazy21c/kp3JeTZVdGEf2NAvYbWpl/ME/MmXNoPCHKdUBMKke+ZBS9k6s3e9hRoL6rVCxW52Gr8MtAsOdBVJP+6nZBBk56y06VLrxy/Bd9npJlE5OIFz0Iz9VWR/afC7Mp6VB0dcoxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721031803; c=relaxed/simple;
	bh=I64Xpsot1R5rf1F/gqbStWTebOSNg3aJYScOWfM0i0U=;
	h=To:Subject:From:Message-Id:Date; b=IDYlh5akBep2/dm6IMXKq65ObWyBG35UTk0PSc2kg8z1Fmdm7BBHzTRlEXQRP9lYPOVmsPrkdz050Kt0jurpFYYLQh9XME9gZ3pASfzxn4N3EOz2P/P4/RSN0J6RJOBhCQxvA/3QFRSX48p5vKjg/z16+qPdxryDAao3XK4RAzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiuQutkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiuQutkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B92C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 08:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721031802;
	bh=I64Xpsot1R5rf1F/gqbStWTebOSNg3aJYScOWfM0i0U=;
	h=To:Subject:From:Date:From;
	b=kiuQutkWPUAJnNZAG/rQe+jZeXQZpIEfHW5EbMxzikghKNKsqVKHoewvDWhkP68aV
	 ZYAm5QLiZv9nqX2hSsRulphC9FOfSjGgdstWkhg8AVWLd2OlBzCSe2mQDYkmYsoB0O
	 adktIssWj/FR5fVKyrlaWflo6E2QwQvPjb8vWCltNodiGJmn1vrNFZUPD50Yj2DBsW
	 tFRGmqlqMHoouGS1fnGqkz2Hr0DC3UMwilY0edwAFaQ2J6kcOWH0Z8QcpojuIEJp3P
	 xTs6ABVJ6Ipy9uQL8Y4WlDdfFXe6Ro8qde7Vym6KbbLGYkgWoub19I42yqFxoDjM/4
	 NjV0MskRPEI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE16AC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 08:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103180276.21209.74876558814431388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6989228c2641b79efcbefb28c04025f611aa5786446f3177d1f2b23ffae2e7d
Date: Mon, 15 Jul 2024 08:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721031802
