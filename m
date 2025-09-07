Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056CF1C28E
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757281194; cv=none; b=nHnzIjrJZqKXQGfvxASBjDq/lExJ/vXSdQ5Tbcne7rsSmkir9sNt2daV99AGOvSL8d67eVkEqxbmb9WoEaAkUqW6qCpz9u0d+z4mfSwagSyVMFtGYPrydn3k+AQ5y1XZ2KJYe7HfRh3p7h1gmhcMQI5+dzyZeieLLs8o+TKK5do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757281194; c=relaxed/simple;
	bh=U9M1TQyWO6e3ds5JYigxbUC9AsOdkaCbjVrVUJes6i4=;
	h=To:Subject:From:Message-Id:Date; b=HV8mT5LbXvea4m7JLZ3HJ/+4/ZcjwQflwHMze5tXcNHpnYZM7hrmYEHp6aQohV16OzVn+rijAYO5vXn22AyK7+p3KmX3E7LEKdvtGgGtBMzbw3C3CQH2dbLXf/KHx2dpBqsh1Dzl6NB0m6iqRsZgJddeOvwjWn+1O/VMhYP0s60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRmwAA+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRmwAA+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757281193;
	bh=U9M1TQyWO6e3ds5JYigxbUC9AsOdkaCbjVrVUJes6i4=;
	h=To:Subject:From:Date:From;
	b=mRmwAA+IGrM3YDA+J0+vBiKQ9w/kITL6CJjWzEvzNgUV+AutlTz+Aa73bp0u+duL9
	 8rC1oPw+HtKKEWdjavreoKnjIFI8CAr28KdgBmAM5IqpIoUcbelbBCDjpZ0VjclU8x
	 FOqAkeDXLLNQP+XeWmwLZ9pf1oP9YzP3z6WJtQAYQoKHnPfihQYN2PXKNmuta5//6q
	 iOXZdoZSfLouhK+tD74+XcVNu6Epjui69Ig1IT5et0eiYkIZgsiMcEfkrYhTRQ5AEz
	 Llffs0DqhuRvl8pgnO+CRlrANXLGA/vHuukxUBprBiVZY+LtaFecR8Qplibi9zAhdr
	 XNJoA7X776A3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96643CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728119358.4744.16086004567581545033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87eb2ccb89e0f6045b8518ad2b0c68c62d047dcffa92fbc47b476019b67023f1
Date: Sun, 07 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757281193
