Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F66440654
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787175034; cv=none; b=Pn674gexQgHhMRYO5qeVx49kydhVzZg4Ke9c6WT63l8xpsx3rUcfvZfS6amgEI5iGZtho8fDral/7VmN4pRCl3TYHq/e4dCtBkjaIMJ2gnoKaF20ylUUJO3zIn9LbwU3vE9OpFZH5V1zWt0fKub6CVbeBZQOelQHz5TEVOJm2bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787175034; c=relaxed/simple;
	bh=ydPTrQixtmQpxZGPDw4O+EUFOjDeTi5Muh6xJaN7VH0=;
	h=To:Subject:From:Message-Id:Date; b=aUGsAaieDId/+QUvDkLbKKYqR2JVqUBd0QCD/DmipsJNpO/F/fX8LPFob243/KPLTpxXqw7/JJWiLSz4rax6jmMMqbf6yswjtr7ELmWWsRUDxrnSXIiqZMhnjn2GyJ6xtkRSQRxK/pf2QQNA2rKvCA71Rxx1jblcUtxXM1Y9zoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAiim+Ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAiim+Ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B26C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787175033;
	bh=ydPTrQixtmQpxZGPDw4O+EUFOjDeTi5Muh6xJaN7VH0=;
	h=To:Subject:From:Date:From;
	b=SAiim+EaVml06AObm2ctYZIniJE+byzHm2lZjn6SieJFrLdrHAov3Pe0WC3zuV5qp
	 jlXJQLVA+AHUGrmSDThkwfzRJ8JoHezxJmssbZ+X16oWA9IWnTNL7R2O7qQly/u4HO
	 YFOpGL+S7rYTXiVtIakhUMxuj4+A38BfGlekwy19FpNu7ULfe8xZ00WrHIFRMLm7jr
	 bj5WfhM/UNK/EO7TZkDVnsyXYGMUrauzDyfTxaHd8M7DJp/VVCSGw1af7PnrzQJQKR
	 FHmDXgQDvm8uAaRLPtIpqgROEZ5JmF6Vlr4ML6DSDh8ogPJ7LYYzjxZGEE1EDwECbR
	 ZBnaAgnOu8c4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29A8C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717503371.30510.12994688124458948307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d833850a56396b3d78737a9d2388ce7df344bd06cad0ac888e3da1ac4e5294
Date: Wed, 19 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787175033
