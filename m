Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EA1270EB0
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750543794; cv=none; b=Kltr7IzeSljJF/fDrpF+QACuuCTHayo5K4gbrSYwP2UmERw2ZKxjL3UfLcsa40UmPGmUgkmK7+EsdeoEA1hw7yo+L/N1X+M8pT6J/3cTFY7sT088FFwruMYAfSaJyok1T2IFEOSxgYWgfN5wK2paEmCxMyoXEIApDq3+hG8oHk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750543794; c=relaxed/simple;
	bh=ho6ILG/YFZGpkkt245KtzuBUSiLEp2Hm4PqhMSCxTd0=;
	h=To:Subject:From:Message-Id:Date; b=oOamvrnC5+uGaIxg2xlBX3R84PAfF8mEfWhSHShGglv8ML7AlS+FQXyE+Nok/IshPJkujvG1hPDhIAtBXN6dapbjqIWhmtkGUeFeVqCuXzFAR682rUFhQdgeYfLYJgTuIhQkBZHVJ43vmMtO41vhuq/a2GxjrxXW82gtqeOcxPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxLMgYn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxLMgYn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8652C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750543793;
	bh=ho6ILG/YFZGpkkt245KtzuBUSiLEp2Hm4PqhMSCxTd0=;
	h=To:Subject:From:Date:From;
	b=MxLMgYn+MERxK+97vlwlbcTiDS3p0IqhEImWo7z+/Ji355i8xbFvyohPBvcUkG0TZ
	 jMqjidAbxTY8tQhbAkJsCTd++Bd+C8l4pJk7rDDWeu/1hY2S4YNFSVvCKeuhTrF9mq
	 V1zkVTzPRJ3A7+SDGBIB8yPc4/RCqzNt/3f51Rl4RIZo381FlNDgP3/uxZn/cl7B34
	 Ru62ZQQESsBP8c7WZS01bkRIRe7COYwDZ2atI5Co4U8qEB3IlXHyqks7I3dYqKaDbC
	 vhVAYa1NFCsMGuo5A9bu13I2fiBuKzTPNcxW5D6YsYBLy6R4euWdLDWL5pfR8BmVSV
	 QoW2uTVpiynwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96362C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054379359.27612.3586949010216797863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e9491b1856c5c5b110b3fc7da90598769778f124d6ce2933ef6fc831eb64ba
Date: Sat, 21 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750543793
