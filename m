Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C0614A09C
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750135794; cv=none; b=Fsmf4q3AeBFPxxS44NcwsIi7IAmfJrPzJH0Ogg5ls5ng3vj/IqWkp1S6bwEhmZroYvx/GNWbqV6ZKazQhs0KFzxaS2d7Z8+JvEKRWWsguhY1LRAV4vRRJ5mC19JpYzQazh1EASXy73k3yaz2jvXebyrBevxU986VWIl9/UjlQuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750135794; c=relaxed/simple;
	bh=4GOYq/brG0yc/nniK0fbA1z9wN+HZlt1V7N1fw4DpRk=;
	h=To:Subject:From:Message-Id:Date; b=oEw0ryfQBY2VEt4BMnABglc8w09uvsWjaKp4X45oRyMxhoD/lsBNky35YTFFhKgJ+FHcSL40ADn3JdrNq9qG/1qYyane1rr77DuY/Mid9kch8vcFWh3HbOi13pgU03UcxkAUPHi0TEmtBFG7JKkMawxi+bb5x7IlcbpR/+fsqJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfntHUzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfntHUzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE698C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750135793;
	bh=4GOYq/brG0yc/nniK0fbA1z9wN+HZlt1V7N1fw4DpRk=;
	h=To:Subject:From:Date:From;
	b=rfntHUzvzkzhc76PKZ0tng0Bpdi971n/FIsVq2PemaIFDq87hAEMqvxzpfbid5v50
	 +domWzDrnrv+CyAZOKGjRgj+PSz282MQ1c0o4uKjWq07j7+JoJIofVQ+zOU6Nar+Ru
	 AhnbYesNOanTwQzBhCIGPrevc3OPhWGwgIczdGMq+z2tEAtYhTb4JmY0VAR6oOmF5/
	 g5zJ2zp6YhYxd8fy+HcoxWO8PEnKPSBaeCvdiiP3qp2BMFz25yoALs8YQ5hdrYByBh
	 0DcU0/JEX84zcL796B0nqQukR6MHDkEW0xWPA7DJEKtNne9HUpDr9/ZChO59ADl9AA
	 8sohFaCAFvl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982ABC71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013579358.17574.4564319523309507997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7af1e475d3d585a7525db78b061468abd3f03e56103c81eb487a110b9ac381
Date: Tue, 17 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750135793
