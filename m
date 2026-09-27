Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC30376A08
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790545234; cv=none; b=tCa+tc7c1C+bBbwMJ72hb3JwxmHEzQWq1BKAw6374OtlJjsWIGzu1tdo9uz4/KtQWPClu+X8MxVuDy43ASnkYc8x3BwbSZUISoUA1WVcxIoyy7QyvYeiA0C/9MzYk4OcndF9AO/Em9YEL61EojxiNhs5vRVhixN/bdoPF7NE6NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790545234; c=relaxed/simple;
	bh=sKsPYiiGgkPv2o6AnaQ+sJnr3y4dCBGjgduvFnE6BOY=;
	h=To:Subject:From:Message-Id:Date; b=F98CiDqzCCr6aE32RABQxACaaN/SHJpBgw+nzKrkGzv237+qZLt78IMiTjx5UIVrAw9bKKxAcfLV+8MxLeYKf1RzAHZVLhS25LKF/WWNtS55lkQM+FlH+xzjfZ+2C2VqhBWL3/tQrXVyJGsMoadpcZ/gzvqn4AIe7xc4kCpec8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq3Ozp5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq3Ozp5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BBAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790545233;
	bh=sKsPYiiGgkPv2o6AnaQ+sJnr3y4dCBGjgduvFnE6BOY=;
	h=To:Subject:From:Date:From;
	b=Jq3Ozp5tJ3ZVdzUjXhzhQahyPnOBZWzdOYtxMQU7kv+mVsiZnS/xQ6tRkZyD2XwWW
	 FiVxZ061qHDBTQXKlfnhGV7ex89COkOX+8RQIHf3fXF13SjJkfWlSFS0c6BEYg7c/u
	 3/ilD/DWha2Wsj6H9KitxDKPZELvoAgDljufyUtWePajNWwdh1kXGmQyhDWx74HhBu
	 EZKQJauLKfxKBEOGGYvYTPWsGB+ibk6884wpg4szNnMYrY7wX91q/oAdZZveyh287d
	 yaSjUI99mzkPDN0qxRm6BsgwP8k9+McR7vWAo3TYHBwk4E9pqvxzUvf02HnP68RO9F
	 Qf6PUJfTNDz/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF761C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054523368.20198.12148295724355717545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e37a2b901844a2c6bcd2622e6066f4e79d78a3d4f472fd47c46f2319c13fcef
Date: Sun, 27 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790545233
