Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1019218B499
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727441754; cv=none; b=OXyZrH/JzGN/r4HnzxqX5E7WqLePj19YCOXA5ftxQ7tWnZvWOjV07yV8YXV6NYf4Se2dutB7nbVZTspwIckdbv66jO16UQTB9Ig6BqxqGr3B0eAMDNGWgg8FbUEDi5neg3DXVFhy8AqwsqU8O4VlSj7M2TSdojp44Yt8w5PylN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727441754; c=relaxed/simple;
	bh=4mmXYc8BUZmyn4trDVGSMqZbKohvMz161ji7MiJEwak=;
	h=To:Subject:From:Message-Id:Date; b=e2/39K4/NxV/rifwH27hOJCoz5SluUcERT9l3yOb50WV+b3v/2GFpRYUE9ipGDnhZZhNxnqQc1gX5bLP4GP5frhg2Rqpw6lnYtCavhDXAn7QNKOD/g2jMEi1jQ0/cyRkxpCF6Fx3p7uLhUuewc5t8EM/3Ll0/BylcWKBpjJDClE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHfoHYjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHfoHYjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3402C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727441753;
	bh=4mmXYc8BUZmyn4trDVGSMqZbKohvMz161ji7MiJEwak=;
	h=To:Subject:From:Date:From;
	b=LHfoHYjIVarxjhHxE4VEiqao9OByrkSbaalrac6zru5sluSM/g0v2C67YdJgL1W20
	 Wrj0QfVUmYKUD/CDxvuMTbnFtwS6owOeHjnN9RvaLaWok47uZCyhJtk/nPQqDo0IJ9
	 mHn4DInxLq7JE/hnFHyWNKGfC0C9pr42SuC4IET39CNCnMk7pij4ygIDvOQ5hJXx2V
	 GNSgzULyn2WzpNPgOkNUs5ezd64AAzvGqTAIS6OZh3YP54A8xEma8D6Vgv/nC/6+My
	 T77ym3F/epRSHYBUahg+MjzqsE16D50xkT7LQf+7OTlfFY57Th2QdgU7yN9Z7+GZNo
	 u9VDCzUO0IPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94473CDD1A1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744175359.30067.10300204852425745479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0979dded7e7254f8f96589e8e04b0468a10e81a0ea151b56c744c782fe072f50
Date: Fri, 27 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727441753
