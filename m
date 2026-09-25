Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470183ABD90
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790328034; cv=none; b=BLfxnf7vP01eblGWQX/numYFcpp5rQDKNh5oEJEY9g22C/UtoalGZDxlV8IbBvT0YDMGnrbY6m3NH1bwGfI8VXJ4FxEvRDBrSoH1ucE7Jo5547cGT8kSdZyASz//URqm7s+pSxoQH+cF0SM5hxoWpCjldlrX4qwF3QNR1HUezFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790328034; c=relaxed/simple;
	bh=/wI+UG1kXIpDMyc07d/TFu4DKAJxgEwPIY2WFvHHPN0=;
	h=To:Subject:From:Message-Id:Date; b=HB2Uq7ihaGVL4hlHw0NzwVQpMdn2PZNuarLgm8Illk/XXe10lRG2rLdI8n+wr3ImQaYIGE1ONkT/ar3fqzm2Zv2lBlMj+PvRL/KGWDTTioV9RvS4Bx35F3GRErnDvVcYdr0LkOsm9LKtQrDMOtEDx8gYvFaZ2RKLr1n97B/2B20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Toe9y7U9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Toe9y7U9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63D4C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790328033;
	bh=/wI+UG1kXIpDMyc07d/TFu4DKAJxgEwPIY2WFvHHPN0=;
	h=To:Subject:From:Date:From;
	b=Toe9y7U9qQa9cXmr6NhThXFBaE6hB6QWM6uuA7dp/gjqDvQAGbgVc/GxBz7dxnn84
	 gog9tnXqp9T73cgj7sAl5/TOEdHz1KiDQ7JQxXmhpBGwSvr7CgaoNf7xh1tEw3UXT7
	 gHxQHJapiR6B6u3fepM4VM/hAzFzg5oVpSGJEmdTPwDYCFXiRGL2F5kuCuqyvxGu9d
	 UI/d0gZTlReVLA/y5hqmYY3KYAn2u3EA3gXZZxPRp/IdWxXtQeUCTmeWxcGNRniTHu
	 I34/NLSLlZcpvWEdP5Nszu/QK1iDE3oVoQmK0YY8OeXP1g5npwAOchLGDtwC4E+QtD
	 80I34L7WV1+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61FC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032803369.6164.15163432439553856696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc99c910c2e3e53c0a8cc6bbdded34045b58a0d0f71ed2a25484faaa22a576b8
Date: Fri, 25 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790328033
