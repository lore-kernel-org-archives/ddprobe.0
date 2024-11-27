Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325062EB00
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732729554; cv=none; b=kdk3tcQng5poKFRwrRtO0NGgNOh21dwqNqgzdZc5+/vgFcd61egb01Lww8CCMzShftO6uGkvTsOgivca5Xa+mjm7q1YA2MYxuDgzFZLNwaHsYtHQk9cIzbNRbpO91qy+mgPGhC9CPIyFshBqluje/W4DSqGPjJBKuvEHGe+Gq5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732729554; c=relaxed/simple;
	bh=2TSTxyX3ZBrAKr0p8qzvGTjUsZ5zVrYA6+eOOqAqTF0=;
	h=To:Subject:From:Message-Id:Date; b=niW3LsLmElKGGaVLlXCqutXSkYdULuYENY8BZZXczwXrKuhevJnOysS6LuxNMUIdiB1P2v+73102C+R5rdWbIj1XKlNJB5HNM/oj9dVXYbNIsMaiAhVvYrOqvjDUQxXgYhUxC+zzUw52Shn2449QrPEleazsrF9CqgaHyVH3jic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIx+g25d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIx+g25d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2870C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732729553;
	bh=2TSTxyX3ZBrAKr0p8qzvGTjUsZ5zVrYA6+eOOqAqTF0=;
	h=To:Subject:From:Date:From;
	b=EIx+g25dAsrlAZhNSKpi/c8chVNQTzStX8pGk9i5FwHe86N6F+rt7bmRr0C38/qHd
	 g3g1Uo6HgdL5/sKVejq/djO0ggTYrCHtBJS8bjACvG/Cw5mOC5TeSvOenZ9t/DFTxl
	 eg3Z5WaN3HgbdL3jbPadkg41ke8MQrfs6v0VO8e5ovNWQvGk/CdPB5AH9KGEil6QBc
	 Wqu3dQTFeZPJc/WByiZqc9GqarUUg32F3zpdlq1KvEn4JxJCJmjXvOGgy3l2k19vXO
	 5pv2INd/imoiex3vKd+ABCp7ZJ1+jTQjyyLaq8Wuqo+QntjNjAbrgQ3JcsmmR3zXPK
	 FzEbL8XBBXGpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A92D6ACFA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272955358.31561.14856225075301248387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbad17aff726f81535c3229692b428a2f1a71c2cc5f16b653216bc0c3b99026b
Date: Wed, 27 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732729553
