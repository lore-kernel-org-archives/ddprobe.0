Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3251A1632C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755837594; cv=none; b=VzXPxuLAPjGKiZggl/XnYYDh8hj45uLLN8kw+xHY7odWNC+knD9KPCJvi+iH9XEIYuI+QTVfwzBZ1PnZkVxEvXHB0duqas+hdBWlzXoZrjnD++yWuQDVeu1lGh927bf60npMI36cpim2uYypg8THMLOP92B2MV8yB9WTc+Ztr4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755837594; c=relaxed/simple;
	bh=V1NPfn2SOL4a+Bvjbm+pigbwsRY6WX3VemaWBO7k4IU=;
	h=To:Subject:From:Message-Id:Date; b=I9ThzlTX4QK3vijJ93duBfHcGH0qVRN8Mn80NoUs3VsRXNLt1TNGeAISo2IKOlqRalaGOYyoUyXZ8DGzD2cD9UsbSL401DJ1mNNK1TTh01Pbem/WGz45EXO3GngL+YTjn43gJgoO/UrOYmgZBFO5N/72k4y6xeO8JY2p9bbc5ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvM29t9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvM29t9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E952C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755837593;
	bh=V1NPfn2SOL4a+Bvjbm+pigbwsRY6WX3VemaWBO7k4IU=;
	h=To:Subject:From:Date:From;
	b=XvM29t9rWMrNIr+IWuqoIQiAlqbVJjDEkx9Z6OWLKIY/g5Qf/8EVLpJ8NxEI0K61Y
	 gBrL5juayZQtzqVPsAPhESWo+FziZxfISweIY3KglDxP68y57BgMhXiA+6In43m3RM
	 L1fBbbrxTygGvzodAG5huwL9MPLWsNpykkBBxn4HJk1ZdhBO31tteRbHq9xszHl/6h
	 2GiTmmCvZdu7xxLu9i8Ve4c6LITeutqIUspdzdXHJYKl71LXy0JeaDUoz6OIdu59kW
	 xykfgHaaK0PEi6PuLqe1uBWr0DOXmePlbOm7RjJXbllxXOzpP9m9GyFNCDhwB38k9I
	 p3vwAiVzLxxrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A7CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583759357.13792.8011638249195362589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a8f938294bb234f1679e54d639efc6ba334271dc160ea7ed7afd16ce00ad09
Date: Fri, 22 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755837593
