Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAF2119
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728444354; cv=none; b=WcvuqCQZghe0L5Gg+Ibv1i+9QjxY+qgSCf0YdnmvEJICd8sdWdpdVridgbX2g0bg/LlKxbplBULkRVjOq72QJg2NhtUhYS2SZR/NyZZbMr95P6Wntp4eFkqt8z9R3r7vhLVytrjnFaVnUFvCovk+LYVo9WpFsqBQz42N0pr1DMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728444354; c=relaxed/simple;
	bh=utMD1LLH3iwnBxB7FbUE+lBMsMW5tkTRr0yJ1QtfMIg=;
	h=To:Subject:From:Message-Id:Date; b=Zi7vNHdIklOqHTFe8rIfO5uNNoNeimA29O7jaH3LpRoR4DyzMVWIaExvEzqv0n+fTYYypFSKdVAROF600VnyrABQz0hcWWFmlphdLDyV59r6zTb+FH8T8kPDkma5yj8G0GbplOV2xQOZ3OearEaVTIFBAREq+dE2/f8e+RmwCPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpHnDz8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpHnDz8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC20CC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728444353;
	bh=utMD1LLH3iwnBxB7FbUE+lBMsMW5tkTRr0yJ1QtfMIg=;
	h=To:Subject:From:Date:From;
	b=VpHnDz8b+hl1zRL0xeElwbT+NchXTPclDbhXORGZDguIafDuM2bTfxe/Ph0wSjhRA
	 YwwNuYmlgFa28/eWK/gGVc0BXcG4eInmzoRJ0vJmYRYJysNzcXmNQeDYXR90BkvJKD
	 hx3YLabG+C5SvNYxtACtFfGr2BIIneCLDySe6ElBUJkDKsjjs3QXygdKxTJAPYz5dc
	 wSHhwp853TzX5fpMmrmhwaPgLCfukd5cWRzJ8REg6RNfD9j4ibfFfAiXEWFD1BdJN/
	 smp/aiXici4tDSxn/10puLOoJ4OumPh6wX7D4/LLx06VfJwYucRwMyc5kZHedVNBx1
	 +GLOmxn/DFexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95896CF043B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844435360.24564.9323678070328510188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2626f88554f5c560d54e8211ba36516e11ad13ff0647ee9e9078e1666c5dc92
Date: Wed, 09 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728444353
