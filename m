Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A8E1925BC
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752776394; cv=none; b=nhowWQ0aafypJMGJ5xZW9zk3Hi0a3BotfTJ/0X1+WAfG5NTVeWPcaXear8NpwadtUjBNuULT+w9mIxeNenv6MJi92B4V0SlNQDoczcbWn6NNnl3ydrkjRUqHHEiwwea7VEM70J7eINswrVjqiRJQ9dwGB68dyOWBCUCK1LzEO3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752776394; c=relaxed/simple;
	bh=dAyPG9J6ipjWd2R/PgkU//vLuefWv0lC6eyfiTD9Fjk=;
	h=To:Subject:From:Message-Id:Date; b=fonOkhmXdbFoy2bJ3iNk8aqNw7EiiT6hvd1VpPQVpyr1gaQ9y0girMpEfwWxPjdN+zBYsy/GbxbHUOKb/FEpn4o7a4rX3bYmwMwRPa3JKKXew5tDZabO2PC42vg6dguXZmIX3993tLBrmHMhmegNW+5i+4RLqRuKnYgjh8WKDcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLPM4Azd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLPM4Azd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2317C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752776393;
	bh=dAyPG9J6ipjWd2R/PgkU//vLuefWv0lC6eyfiTD9Fjk=;
	h=To:Subject:From:Date:From;
	b=bLPM4AzdgdAkRquGWsasknYl++arYpssfc9H7xZF5qweFhIfwT12V4uvYo27/QM2N
	 ECFa7h9zGJYSOyrLTUzE76PFNJxATX0iNx9nV3QKjZOemYy0jN0H1tok7gTchOzhKf
	 rySW0YBtALkVtscRsFrTUvF9Z/c6AY/mtIK8KENF6OsIs212bJUeuRwoJ1haELDyPA
	 RigjqlKmnKuAr/N1lYreVCEV+Wc0KGkDeV4utJWycGfITairk6r15K6nKYyt8ZjBEj
	 qz9TyD6QsV/pPGmVAU9sQ9AB1ccQUj3qvs6TN323XKEiujhHIlX8Vp6pYT9LL+bnx0
	 ysmGqBtx2sZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F399C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277639357.15669.3418440343989199565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d322ab03ac093e36a8eb45b758f7b06451edcb7dac34ac19080e0f89811eb9a
Date: Thu, 17 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752776393
