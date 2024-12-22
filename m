Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102FF567D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734849354; cv=none; b=KLVkNIYstIxpAaXRWKk8o8Vywh2Nd/47yXrf4ve+1VK1CN6UNe4EGL004xGUhypuUJjKfP7CQ6aO+GJtbPNmyC4Rgu7+Hb90smHjq6LE3U51T/OKan72YQ2h7sGV35REfiBdlNvr7K/pOyirHl2EWcMhuAcnOoJiUAvBSKcgJsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734849354; c=relaxed/simple;
	bh=mvZuuZhp/e1l18JY0nxUW5EmadwuRw7cOdyFYmwcCw8=;
	h=To:Subject:From:Message-Id:Date; b=fWH/H3AzgzPoIhkAYkgmYPo5Vu6OTUNVdBoyw1U6A8GaEfX6+uaBH+KU971UwqYZ3QGUwSrlBVpNCYDBNFzhCOcpoGQcQPnu4pl2LkKF16zzb3w5KAmpGuoh5J+cCph2qUYqcGv7iS1IFWsPFS1OHj2kagsJ+vYjf6hyzIvaruM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1vmxM/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1vmxM/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB96EC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734849353;
	bh=mvZuuZhp/e1l18JY0nxUW5EmadwuRw7cOdyFYmwcCw8=;
	h=To:Subject:From:Date:From;
	b=q1vmxM/EJ3kjXwOOIdFiZC1wrJOuahnXNLqfU2qo2szxT0DioC6dzO+IzvOmApDPM
	 L4GrZP+MWG/XelLN2ERgR0uqg80V11yeV4WW98ZcdPXDyqy/553X9LpwYekeyVEY3l
	 NoglbpG7tmwV9NWkMS033GIRKOJ8Mpm3VUcEFUeOygcCFVdTbV6vn58jIZ6lptri1K
	 yd/P30Yt2PDzJNBlAM+FTt+s4RP7EE9IWHh5qjnpWbfU3nLRccf80wRGDjmsRV2A95
	 dDyHvYh9Ll6C/tKfzDAus0+g7OtgUo2KYqQGEjjFd86w6SDAHOJQp+NdjhI5N+GAST
	 +ioEbcahXvW6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A73E7718D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484935358.21669.10590542899478013327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b897a2aad84ec400eca9f205149ba8b2fef02cd4a7ff8b038f0dccf2012183e3
Date: Sun, 22 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734849353
