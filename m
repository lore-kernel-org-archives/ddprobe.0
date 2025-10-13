Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192AF34BA34
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760332794; cv=none; b=PX7xzuWpWp/8fT2iEqmEbe2pfZSlUMHr9A0biFwH7toD4+fFFj8zHQO5TmCza3r1Mswr/LDfDAy4wRl1Wy80aoNQYVguLU7whmTuChfHW/d39q9WdVpDBgDJ3ynUvhH0BhprCfjx8lzu3k5YOXwniFoz8EFrYGP1YJrC8pLn0ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760332794; c=relaxed/simple;
	bh=2pfS5pYyUdu8zuGQii4g6rJZkjDrjNZFV1STfEZvkaY=;
	h=To:Subject:From:Message-Id:Date; b=ZbUrrtaDwEOE2HGnXRDjVjUlYblFfu/XDAEIkXCWmaL92pVYqmw+8N5u1E9EQF33IN2bBEH+xArxllFCGcAWcO/Iue0MhZqQ3mK1upfMXOFv7monWrc3GACphCilbTK4yi43vzcfuvjLWVkE8iazErqjeHz0rxHLOwPJW7d35qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvdWbKAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvdWbKAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD98C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760332793;
	bh=2pfS5pYyUdu8zuGQii4g6rJZkjDrjNZFV1STfEZvkaY=;
	h=To:Subject:From:Date:From;
	b=pvdWbKAQEEir+NYWQItLAoVYaCL/9CnkcMONWUB9dUhDrBtp+W33RVcs8FQwGCJ+W
	 3Net0n0p578crCYXNBbwrtmcizYfXz9jyb2upJ6j37rfLyxRp45ex6f7jFua4RqsQp
	 Fl/n6mg0MY9nNJuz/EuPiQhUAKfjx6EE+I+hX5MgJeC3azmrRYPp1BzH8HWRe/58D0
	 oqSq6zZBd73vUQQ06EnCSjfdxj18wFxb6TA7sqfkhmI8BH8PYwU/LYvGEL/5k4CFd4
	 kBcn8LUY9JOJtZCUKaecK3VNNaxxAwC5WEri97k4aMDG+LcbmcpjpxRAlXClaeGxD9
	 92hflLDsO3E9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242CCCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033279359.13789.17000951855365780585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da450b3be0985732f900f706306a5f90590e44491763aa406fe573ea588458a
Date: Mon, 13 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760332793
