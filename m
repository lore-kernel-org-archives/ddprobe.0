Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8A5182D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782670714; cv=none; b=JH0W4ImTQpmyipTl6cqR4siyEvu96RCtqqJtqzi3hV/uVIF6s5b6+G6N/bCX05dC3kW5H538Q8edU9DwVjW/OMnueak0oN55oKKhUxoL7dgejgEN/b6euKsi4Z2nOKnk0llePC+cRbbcxDSwt1hPqWbmB6V0r6KzAGUCnaxNhcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782670714; c=relaxed/simple;
	bh=2rFO4NeGGGR+vE1BlW2lFNC8SK0KFEa9XV7Et79hd70=;
	h=To:Subject:From:Message-Id:Date; b=TxU2BI/25+JVJhd57DMiPefhslhuCs9brB6nuTSHe7yaYvTkvzpTQ47KG8j/6bHc18veFsxGaNvf2l98HCafXkQqUsB3FoYX1yyVEXVDi4vQIen3zeWcqSPiqSVHo1baj1/PThBR0sDN34zMrYV1pKoVfN8EYA5UbHd/IDJKfDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3UcKGe+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3UcKGe+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43D8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782670713;
	bh=2rFO4NeGGGR+vE1BlW2lFNC8SK0KFEa9XV7Et79hd70=;
	h=To:Subject:From:Date:From;
	b=O3UcKGe+5hJ0sboNk1Fp5N4VK0TLz8VIIZJDRsYoh/75K21IImEbM6UPMZtgdZFlp
	 wBKCvLvpGBujvs8coCf+m6ngg3TuwHAJWOEofB1v37xkfvIUe5P2wZpsRTozoCmfIB
	 tF/tC6t5mIHi5/CihCCrwznTrXnBJnw4sH97x2FPT6TF0GVMKxRmPvC7QYn96dZhqk
	 nhcSqPIjJ0cbxwI+gDEFN4krMb8ls7IySmNYSIKeZldXBj51TObJXKQSczYqI8247C
	 W1x/YjPxf7/2+dKtwIHFywIzg+0vhmC2nP1sE60+l2h/9j38J6MDrOfwoQYe2QooXh
	 K6S4epFu1yGEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AADC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267071370.31114.14003562959466264000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c960e9232609fe686646ab2b3bb610d4768b903b5012ebe51c4241b3a49c0ca9
Date: Sun, 28 Jun 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782670713
