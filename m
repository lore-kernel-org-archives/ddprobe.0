Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330614D43D
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732556154; cv=none; b=kWY+WybuGArRxeXz5uXYkqP9zE+LMTKVH2SNFVhi3tcmCTw+MTNjZxLoSLYYNFIQfwsqiiAqtVVww9v+/ZR9xPi//IuTpzWc8KchRLVHiYAnZHbxBtY3gqYgAoYdi8n3O85A+jucxQOBxXIcrVIeyIVd7wYuGnA7D51qhYps/yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732556154; c=relaxed/simple;
	bh=n60ApyiT243VD2Vy+06yeRzNuJ6wjsolCyHjtoWE1gU=;
	h=To:Subject:From:Message-Id:Date; b=NFttn8h4W/8N8AIoWgpE/prC4Irb6YQUERaQqCEgbqb28huY9EoGl/ODs09aleXVx+9bwsaFwLJZgFlmDdytuAvi99Aw2xTgUBjOxjv5xdppGviU5QQE1mGKMpDaosiaLKJfac6S0+ooKN3sSz/BuGUItBF/m27d9qzqmzvSsIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmnQ1Age; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmnQ1Age"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1837C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732556153;
	bh=n60ApyiT243VD2Vy+06yeRzNuJ6wjsolCyHjtoWE1gU=;
	h=To:Subject:From:Date:From;
	b=UmnQ1Agei9m5WfEs+DTFN+d1Tw4X16wZwtKqkACHXgSfbuO1OgOnLwFrip7mQZZ70
	 LPvpcH7fr1Icl5fAgTyezkS1vmQLQOLC+qzUCvaUA/84i+ovmnLkZRyqCOveXFxKO+
	 cPwi4E1yCJdBSrdsiIOIEwUOUupUNxhQJ+vU/1eC57h12SOUaBaYdK2Z1r0kFDpPDC
	 ZNb/P0GKv20cIyfefN8Eraqi4j7ToaR6adLL+Tv5qhyn3RDjXlm5VjfdSg/ONeXhKQ
	 a0OHtzGQYrwNWrn02/Pn9gcIrcBo1seQOFLa7+b4BPDYPiMS+eBK3927/egAs6MNYe
	 6N4L+Prbb9aig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D9CD58D71
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255615360.3386.1121806849308675970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fdfce3885e521b75f3502cf1f332674e4e7d8fa8c5036eab402428aff85fb63
Date: Mon, 25 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732556153
