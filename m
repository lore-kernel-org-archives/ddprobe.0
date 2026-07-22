Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A58E25D53B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784685514; cv=none; b=dwY7/q+6ADbWSLHJAtqvVqNkSSUiIj13SMBa22gYT0Ar0KSd+/WTjTkL9YjTZlSTAKq3AoueQhKp+/MMYLimeiVs5Cwar3bxAaUTWrD2LPhsUdgFz80tkJ33SbJM/W7aBaboHiwVMFsDDZ86sml+ce6sBT1FI2m9QRysPMQITCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784685514; c=relaxed/simple;
	bh=+DVoZ2APh6bOVEefHdC27hagUQaAhoiH/BS4HR2npak=;
	h=To:Subject:From:Message-Id:Date; b=po/BVQSHPXtS6LGrTYPA3DW3GIP/wPCE3jTSuwNlutBzQPBIYTS3lWipJA5IzCxIblSYXoRuQJ6QVq1I3XcmpKLqb0PgarnvPw9PkbvF044oDn9abw9FOK0VGhnDzwZkXtWNFU496YpH0TySpnagpUqdC7vOpI46w0Yd15gDLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMF/PFY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMF/PFY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63E9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784685513;
	bh=+DVoZ2APh6bOVEefHdC27hagUQaAhoiH/BS4HR2npak=;
	h=To:Subject:From:Date:From;
	b=gMF/PFY6mT2qeoL223mEE4V2tdHt4Z0J/89b52xXWBYILUCMu4cRDhV8Vz5yjqgGM
	 75tY7pMI1CH4yLcBAUgEYzhY9A3tV9EycPHc6hFAf2tRw/DvEduFNSkwgv4iIOpQuq
	 5CWmxjR/WVFF4LeQq3TPN7d+i8otN7VawDz1txXbXmOMGiI+TmMt1RIpGn0/6v70pU
	 KC3oIBkeTgMWeydgbBouVW9a1ebyoO2g6dYLvwkRb4OEE0fuIroHQYRAZdh7BHxu//
	 2BRsLTMlKeZFmfrSp9bbtc8WO2u1ypPKwdRbthrlGkacAzJGQzf9ilumgcQ3IlbuFq
	 IzrF7QEwWdLGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB58C4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468551369.1102.1895910850178894612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0df76f2cce0ac68fa337dd7c9ceea2b1579ee36b0898a6b05ef1d5e21d9791
Date: Wed, 22 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784685513
