Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFD62222B4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750330194; cv=none; b=kCzwl/NQw/pf6DJkfJKhAg0zWqYYUECE/KvxIsjeRSt6WynZPTt6oKHWbRUy6SnvBQqglyXL1LQjZpRNYtHDYbW81vDZ70ftQDXDV2KwvBvCYw6NstwirAVlS0lI5OgWH53dOvrJcMZvi7Z3SpaPbOVaJMGDvu7L3A3IvDMSSUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750330194; c=relaxed/simple;
	bh=+kb1TX/4DZqxT7eiUqNzSrdDjT4I5yITWS79UdAgRVY=;
	h=To:Subject:From:Message-Id:Date; b=Orbq1Aa0yjm5Pnt9+dbqEQeeBcRn0HzRu70KPGXSGOJif4QD0PaGL0SoilpiO7ImaOrjr/9UicB+I0WJY96KK5/Watsv6C+tfog1Kxe2F6cFXX7nT8HjCgyBVE6bXiA4uXv92Xs2fg+8EB4ZtinvRfn7qtObElWNj5Rz8FogsEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9n9OWxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9n9OWxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A932FC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750330193;
	bh=+kb1TX/4DZqxT7eiUqNzSrdDjT4I5yITWS79UdAgRVY=;
	h=To:Subject:From:Date:From;
	b=b9n9OWxFc1j0h0gOXrpdMNAsguOeJvLVo8VQrUm/XEhFuzlW0ZillmkLFJhlX9wSr
	 fNIEWCoYLtSbz4SoaYhyHHUpDo1YhobG4ok1i0GLhLBrolLdz3PSfRqdbeIqjuPsV2
	 YYqdlPAn6yGQ3gPCkvYX9ngU0+yDyY21pMn+Vx1uP6rFzuLRShyGrDPla8p1alEOxL
	 q2ouliiRqj60wg4jrML/iW19wQZE025Po1mqnrbgjAs6+H4TJyM4PXjENFXJ6yijLP
	 9+Quz4ygUJUH1FT+5HOP6t8ipGV89Zn7V+4yX8E69961V2Vner+hfnGgt04ddHFwQq
	 hTbEqPB5M8bgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF3C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033019358.13363.11701143779987394067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0e13cc0dc21ed0e5fe541ef715a7d6e7cc11ace9cbffc714a25b2c062cd835
Date: Thu, 19 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750330193
