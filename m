Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B89D2E7621
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777363654; cv=none; b=mzPQlornEptQkyI8leal7qVyRw1Q6hfYYp16kj1JF7Z0qVPmfMfszglGdF6FL41xrQF2/s/cE+S2h04y6zFTEKyVToObbBLb3NpYrWcyDd3SBISwL85AUo2zmos4Vk6sy8W2/dt5oTXtU+FO4akug48haNNgDfZltFANdeeUz44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777363654; c=relaxed/simple;
	bh=K08uUk0YBHMbbaQbSYkLRyouC/6bGhWkqOWC0TD5Pww=;
	h=To:Subject:From:Message-Id:Date; b=p5gT9WXn1HPM9GxbQcJ9CC6F5Fl4TW0gJhHFqeauR55jK8djAgPlmdIcgAlOJpqxt62+F7zgTxx9EhOYbRZyv5oR79QC07PDhhmQfmfRuNJI9w8bFT5fJWTbvnYHBBbWjGe8pKOl/Ds+e4Of/0YnzjV6/w8f7Fp+C/r1r/Kda2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCoqOtsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCoqOtsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EF5C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777363653;
	bh=K08uUk0YBHMbbaQbSYkLRyouC/6bGhWkqOWC0TD5Pww=;
	h=To:Subject:From:Date:From;
	b=GCoqOtsAGYPIIbQe0aLlvcF1uuA6Ml93wsgmY+1IZ8ZvREErpvR81ZGsrwgVJUG2M
	 LnDw0wqOkXTti7zjW/NoGhFFP4hcctCHXjG9V/0jNWdi7fxF7N8ftFh3ERHt4C/jmd
	 mH2Ey/WMC06gZBnj/9X6gZ8SjeCK1SEV1VEzepQPGdQqzwDETKUmn7KO2KpKhKA9y1
	 cvRlCtzaL/5YfmoFDbeRaPOb8lBIT2cwNqiELgHLrPyJyX+G9vBrdydHh1h9NHZ8rT
	 Y2XYnmMA3J6a3wlkOXQl+ilordHShg8bXqSDnz6LE5XLEz5a3S2v8jPPNG7t8Yxym9
	 i6A05wBoW1VhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A42FF886C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736365373.10217.7741691253821783953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f0b8f441dd159114939580160172d4f18a631ba04f2d3c67ceca9de9deb668
Date: Tue, 28 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777363653
