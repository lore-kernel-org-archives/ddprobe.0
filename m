Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CCC359FA5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770842694; cv=none; b=cqm/MYzRr5GCv2ukTfjAodlnyFKlXGEgCHRaUTozKeO7h36/DMwVYWi00cG23hVlbLnOBG0ndUDmQXv8ZSDmADkH+w5fEd++2td+ArTkrDCRgb4DZRuLLoZNM3F4f9DU9uR620159oZonw35C9LVxiUhmEFva7lDBDj/Q8Z0j60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770842694; c=relaxed/simple;
	bh=69EQ44eOb7cPxr8WxrWILB/9Hm8paz4sX7qGsWWlt0E=;
	h=To:Subject:From:Message-Id:Date; b=evC5bKXPeqph1c9PXmEz/RcR+hl/FPEpS+SasdZaTIUwVLxmSTGj5tZ+c9g+7TfGZpehUcEMKtb5yrn38e3OeAnPdizt5mO7TRFsmosFl6p5DKEyXd30PjMv2OxRA0SBYj0/F8n/+6cVv+YZs79b9I+sl9lgItJjs4rmm0yAFX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUFiGxZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUFiGxZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAA4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770842693;
	bh=69EQ44eOb7cPxr8WxrWILB/9Hm8paz4sX7qGsWWlt0E=;
	h=To:Subject:From:Date:From;
	b=iUFiGxZbhLUfQUMQ0S+UuOBhQ8YTOGHftTLFQ0aJ6ILA7QOcMM1BGphcm2cKM7OVx
	 Cw/iv7S9tw7yKzOXevlHpKAa0PNMn4VtIHbwgysiiJW2ototjOmTtycpANBXYizpYj
	 rSk0BNEexcAlpbLR8fNeRRd5xuxGjS/fjoJo+7O9+MOfxBYILQL0sq8QXUs4dME+Yk
	 ToOGen9PHPOomG6BvHqpysqGb0DePULAbxBIqXBZu/h81kfEhGy+86GP0PjXSBz76o
	 mYYqXHyAlYKOW99Lx9NM3o4Eed9yCuAPfCHPM2Kz8DiX3cgHb5KqdNY+qxdJ//Rmhu
	 st2D5ICbiC0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A7ECD6EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084269360.29615.5490892672684447313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33206fe5718ec7e6ba7d9d1f2b55197100a5d773abad89718945f0b2c8d0dfba
Date: Wed, 11 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770842693
