Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A72953362
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708040897; cv=none; b=IqUBW5zZ547NeNrOR7jReSDQJKkVFxeI5bjEFsmxnu5KoAJBKGAMHwepehiTIiRo/hb98xhCQfdva5BA8JU6WCxOD7RfWR6iJ6qaboHZkcWGrVUcr4NyB74mpyZ/UjHyuJXsZMkU8xQvPhAZRXMxx9EgMaW62UA7XFLMQcBT7wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708040897; c=relaxed/simple;
	bh=f5NlAPszqivG50Rrd0xKgkZK0G/QDvt12dOtuOwtqVM=;
	h=To:Subject:From:Message-Id:Date; b=c81XSioG+gzsK6jLKq/DuH2cnu7miWX3V2Qzk/l3oSB+xibyuGizRErgLwvTNcUMpUi4MnCu3UtKNNZb4KjcEe2i9FQoSYsttjo1yGc7OyIjqC+QO+SJ+Ci+2XDBZ+P/fMaACgtVP2pQuydEo8Nz/UlRO1Q/yM+B5sAsjNXrmqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSzN2xHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSzN2xHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74642C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708040896;
	bh=f5NlAPszqivG50Rrd0xKgkZK0G/QDvt12dOtuOwtqVM=;
	h=To:Subject:From:Date:From;
	b=lSzN2xHhPxO9JF/l9DQBd0KkexFC1rUDq34rjc2VDZ3eOvqeWyuNL/jg7Byk9A2Sw
	 YoBQBxQRHAtFQdc11KOynj78P/vow0L/Vypzc/ekGnu9ceaGJO4DZwWJvUnY2VZszQ
	 HI0GCWumodWrJkCXeSyJtoNDbFdOytf1ytJ7yrdyq9GcUwCLfChritg8ijsTT/Ke//
	 8umqY1YZTfDwPNinpViEKGpE4y3ZGk429DBdLOUxg748UVhGZjk/HZAlcpP4gBzYf0
	 iMKiSZ2S9R4zlDieATOG+YbhGJJdYi6K3vULg4Sd2h6pZTno4Wce/ujjhl083HWcbA
	 Mh2c6xsXX5OPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFB9C4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170804089638.459.11592409408406298244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b68e2ab405ee810f471cc7b2db62ea536a71307d2543bc94a7a7b99541fdd0e
Date: Thu, 15 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708040896
