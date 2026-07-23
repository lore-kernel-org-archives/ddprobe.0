Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505661D555
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784765974; cv=none; b=RhYdazTLGVYLK9854wJMSqi16vZG7I5nhcN7IGOBys0zRR/0Zo1PcwEV6EZnFTbbCWLVGz+v5QP7xX9hczxfWqk5ZNkfH6hLJYoCXqBWSZIfoUTA8NZpLpKVxyvnyMjhwvyatbno+xEGK5HWOcXpEDNnP9QTTQPNQksOOI92/II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784765974; c=relaxed/simple;
	bh=jXF4dJcIHFDBRm+2cmwekikkrtbun9PQXSd6bY2s5eQ=;
	h=To:Subject:From:Message-Id:Date; b=RP/+stHLexz/Mp/6tZ7xVs70mu/R95UekVGswdl4jc9spp9AKkvhJJjQE2E3pol9cY2GIWgZikqwWh6IVjYUx95DJ+Xe4/5BPBavvEBQptjd4O4eVTqkpizPWpI974ZLMPuBK/wb358IbQ/IaybDiDnSdjdeqeCBBmhSDguuRh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTo97HH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTo97HH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF85CC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784765973;
	bh=jXF4dJcIHFDBRm+2cmwekikkrtbun9PQXSd6bY2s5eQ=;
	h=To:Subject:From:Date:From;
	b=gTo97HH0R3990YajSWUO7IaDRelITsSDJSIAs6hvBj7q+Dn7ahUlbIJpvuaNJrmDX
	 qVsRyUJkOJiRsNskbUSLjRFP4bravXOMR62RQlLnrFoMyjfwWv/TdO1iH7iW4xmBsZ
	 IBZYaHx0sef7szWKeOCnTd+4QIpjrK3gKjHMp7ysnxDf20uEe9c9oQJCYOKhiT3xx3
	 O4vd55jsaIjwDHoptuAU8az9wlE/N/e91wq62ViHESm0d9LeC9KXFn8aBTys+ev0zW
	 Zu18cF+uV8DBAdYaoyYOuBSZoeUkO9uRKktxx/DrAnLyFZBX1SWklM1hQqRXNoqOq2
	 GQyx4FKGVxicQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99AAC4453D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476597368.1389.9228023878882558800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f245684530d16ed8d86fba43f8f6a202aae821116a24bdcf88aa117e2814b7
Date: Thu, 23 Jul 2026 00:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784765973
