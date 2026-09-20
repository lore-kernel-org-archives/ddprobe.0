Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CBB282F1E
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789910434; cv=none; b=EwK2Ej3pDIE7I96HoyYjgH7vPC0CHNm7dU6Iyy0gV+i96S2X7l6P7rH4JQjKwUdtIhglOdeYl3w3A1MNKH99JyGiJu6ZV9OrsOyN0+KP4UvaGPsfxxg2TSkwfyqKqD/2p2jLzGke9zZ0ZmnMCgQhILhd8vTAg9EViecuIh2sQzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789910434; c=relaxed/simple;
	bh=GNoVBTKQMiAVwnS77O73ymAD3QU0uZ5k5hl26D9Zptw=;
	h=To:Subject:From:Message-Id:Date; b=YYErGNVWLep2znZ9kNbyipwGuWJz3re3ahNNtTarUCxKgfyDZkHChKF07wbIRoQP1d9NllVlDdXsVlQTVjf6CZianoE7u7IiOjgosMcGmWYn5ZOo6Xi0W2jzR9y1frv0bBY4V8zYrF3vUysNOVA7E0zDsuLf2CEvYRplq1cXk9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CplAr94Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CplAr94Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF1EC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789910433;
	bh=GNoVBTKQMiAVwnS77O73ymAD3QU0uZ5k5hl26D9Zptw=;
	h=To:Subject:From:Date:From;
	b=CplAr94Y3DViC/3KS/mucYpww+p0j3xWkoXmi4AHSMdqOgvs/0v6WobtwLTlMMYh1
	 wwdmWWXfkh9qqhbiJwvF7IU9erlSznofEWz9ucshfvsfRj4fpdfOLrYCN8UiKK3Gyj
	 HXFrjimJdGtfpShkxDZ0kEbfd6ZNpqKvnvprexyzFwFeHgeYHBAqVBEm5Sw8r9hjCu
	 Qxc3FbiN9NHiXrBUEnpxppLqE7BT7M9hTHkD2t3b8p0lOjON+rexNfFuC6AF95wdud
	 pUUsURUHpjELKAYEFzOiHRwHtCNzjUv4GiX0DxGG5/SLxQc6g0c8gQlXJeuVUetKPB
	 TTrqsBW0qZ74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC7C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991043369.20604.11501951145513247193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cda3477195eb3bffe148c0ee1bb9d0a16068ffbd79eafa071afe8a4d3ab7d5
Date: Sun, 20 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789910433
