Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF1625178D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742373594; cv=none; b=ji8w2dM5zbDP30LZOtvD2gOxOgd3r354h6EYXXcmmNE1ZGhw6RROi++HhLfbhdhyRQht8DYppKVsaS6YEe0JPK0+r1E1mLmScnBPIpxbCJ0qgCa9GlbZgQ1EKvMCO5r88ky0wwcn4M/7uCZmwSZDLGepoZ6oDdFQ00ScWH6FCE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742373594; c=relaxed/simple;
	bh=XldCs5yfVAJmqLM650zvinrvH/8kTK9dJ25QUf57cf4=;
	h=To:Subject:From:Message-Id:Date; b=iD3LUocIBQw02yV2DRwocAk6RHP6w/wkEiCvN+hxepWLOZLO3CebyuM7jq141DzWOMq4mbJ72mpH+8FPmTbP6yDri8quabvNOvhfbFgD7oRDfiwVp7B2TwEeoQtmHb5uaBVka+ySO2E+clCWjTMkKkOxj7VGTSVDfHGOcnOubuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKh7+9K5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKh7+9K5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60F5C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742373593;
	bh=XldCs5yfVAJmqLM650zvinrvH/8kTK9dJ25QUf57cf4=;
	h=To:Subject:From:Date:From;
	b=SKh7+9K5fFvQmpdapPjAOW+Jgex/jjS808IPBNaOJH/0iRskntTq95QuBi9prgn20
	 8TbvIFBolAZo/V955I8/l4N/CdTVLuaXo1aCJn0zTo/vpXxjr2u10GxE0HDFuAUSg8
	 KTS5kzd0Q6n1cmkjMpSWo/UFQIIo4wcYUOoUGNlg/ZcyUhWZkbTNjHcXZpOfOiyA0e
	 wcEaSi3FZmgJHpJS2GN5RuNYEllqLWrbKWlLOQI2BmWGGrv/auLGYvGhSLRVedZ4O0
	 Glaqglz9t4F3Dj0KIp5gSFxoSFGqHiv0RMhlj7BwxkwGKZPLeckM3WRXfRAIYYehuB
	 W7z99AFeQO54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD229C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237359367.23863.7181622746620290563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3997a4b62d02b5e0f9209a599f449d9d8e7e3e35aae8018d7959cdc26148117
Date: Wed, 19 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742373593
