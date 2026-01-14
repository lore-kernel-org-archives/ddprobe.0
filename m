Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A672D8773
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768412034; cv=none; b=r0RgpKjpbDozmjBe3lzK0mk9LMwcc07Oe7GuWRMiVsbXWw3XqUylaXRonKeGgalSazEqOjEZpwEbsfTC170yw/BXaTPeZp88ht9Cji03oRrejHmUzHexLcg1AgSIKhXIDcHqcSh0B0B8AXNh0MHoX1tb+MHtinxKtCubiKzmBNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768412034; c=relaxed/simple;
	bh=w7NoZk+yxlEdLMERvD8HKr7l7NFF9FmxJ9LVRd4XqX8=;
	h=To:Subject:From:Message-Id:Date; b=Fm99ddyNn5Hle6z5wcYDZrxAZ3m2SvzekkhnPBMivqYwkrnjlTNrAFabCogv6beQzwEOxPZ8bNu9/h/HGmhu576Hl+T8G4bbwt0yi/d5NO1NcxYig8Ftn0mXCSpTUzlujFQoPGtyAzHOxyYuybq5bfa7dO9/8d0aUc03Dr23q0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TynrnuJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TynrnuJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5BEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768412033;
	bh=w7NoZk+yxlEdLMERvD8HKr7l7NFF9FmxJ9LVRd4XqX8=;
	h=To:Subject:From:Date:From;
	b=TynrnuJ5G+SjeWmkmOmNg7cdhdjBeutOGqiyhYAAAkLqs4hIsJzEPXRkd0wDEvGV7
	 WdREJ3haVKtePIotEKLwLLovE5axAMQAgSjy6AVwEM0sThZ9h3YZ1iPMOocBpjLuWT
	 /Q4Av2bIARkp3sQbwnjSaNcAWYwwmlQoYcn4S3MCdreluwAYiCe9xbX8RUGOICHmVQ
	 absg3UkD8gKE/jH+u3rabNKK1QjoscHHWyoqwMmYlfiMh4MeYGaZCyq2eBDauMxxve
	 wKb6/XUqmN0hZSfr7+KEh6ioS7Z/ZlWtLLPpRTq3D8xif/Cml1D6NkO0uRyYrHx5rg
	 y53BNClm4SIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111AD38FF9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841203358.2175.10139921641376617009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02092366eed76bc7509c0f065588c7ce5f7ecd5d91901f8a3875e08b1b4156e1
Date: Wed, 14 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768412033
