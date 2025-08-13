Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B42F8BE8
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755085794; cv=none; b=Rnp+FVbRcjhkLoEhCYobwuWTN14zjWptBUx8NonZmNM0i/cSrmBT0IbVIwweiC0gpKWq2c0x1OxbC3Tg7xUalfZLE3gu3mWiWPfpqBmPrWtr+ZjO63rmj3f7wb8FwUNRr1TtEWwYrflAFuqKQQdGhEyYhaPLXn3i9u5PLkG5zEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755085794; c=relaxed/simple;
	bh=aV1LSLEKKPVeHeveIZgCzOPjH5FFqqVBfI3OSx7KoHk=;
	h=To:Subject:From:Message-Id:Date; b=fW4+lrpYfXKzRTCq9UhkbKXJeqdKSIkzyGtLg76X2pVS6dZL2MIVChHKkw/jlvuyr8cUucOmkM/rGaMDfr0BKniYhRQgQsNBoDAECosyle2cWNhLr4MxZiBYg+00BalEtBK9Uq87u3VzdOoA0GXrPDQXw6WRi/JKQ48rTAe7iNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E046v4F1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E046v4F1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C632C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755085793;
	bh=aV1LSLEKKPVeHeveIZgCzOPjH5FFqqVBfI3OSx7KoHk=;
	h=To:Subject:From:Date:From;
	b=E046v4F1G5dmyBB3osEeXfcX+9KgDetLVju2Fj+81S7yK9lOFfNwquPG/YjlQLAe8
	 bQxD7yEC3AcCtNkL5a6OS4cKIPt5knTqtnV7rgnbRRD4L/eMXU7eBVJ6OTVhgZv4xa
	 q//6zfj5tdj9L5V9ln35DKaj9kUO4qfK+vDjM9VUnDM+h5KbLK8L2X+uiuKtTj4yux
	 JEYctKaiaMkRym/7IuSe1hRVN9fRpiqkYfKxdLYujCVeAQoSWcXa2sVXo8LvebyHsA
	 oZkh5BaCXRNwP2GGURsOSS1lduIvtmEu9Uv4eYrHCzuSdez61LsouI7H9c/LFVlPuA
	 b3TUnYp6KC3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A8CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508579357.19390.15241184980130474370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53ac360fe74aba5ab061e61efb2d3f23cbfd595767270da89feb3ebbf0a1a79
Date: Wed, 13 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755085793
