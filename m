Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2157C3224
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721117723; cv=none; b=ZxDvddhw3OhKNgptFLPk1ZAaa7rxcOa4BdjzERRB8I0VSLbLJyYcHqq85MBqhh9nvV8nJnXqKivBtVm3MIUVQHJKyUAgoYJs77m7svULh3TXbvWZuMSLY+fLc9v76fHxi5gA84Xc5nOKGsopn9HIMemDLBXu6TeMQEWjydpiIq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721117723; c=relaxed/simple;
	bh=jBFK3DZXK10vNLPz4g45WMxSaBRcImmPsFySsdeg6Co=;
	h=To:Subject:From:Message-Id:Date; b=GDczGabCDjtxY3K8E5yvbPx+/Yr+QKqHTlYmJoKuDUFj57Y2qDQvMpHh4vAKA3tA+lFMjYX9RWUqYfO51E40XNSVbKLsWgIdEYlRwD0r/j3EQBdEMAeYKfDMqnafBqQBzbU0z+r9XF9FlK7a0F8g7anPCJx/LSbhLp2ICExaUnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujCCbiDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujCCbiDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E898DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721117722;
	bh=jBFK3DZXK10vNLPz4g45WMxSaBRcImmPsFySsdeg6Co=;
	h=To:Subject:From:Date:From;
	b=ujCCbiDkJmy42gotxEWNsrl9t0rXi4C3rgSffruTA2pa2VqMEElUbfvOIP/1ZYE66
	 iwo+jtXr8qhE2qaaeOfIc1Eux8qzAH6oapsV/7VSGLrP0WOJrYdFzmoYtc3F63VHke
	 NWC1Bwaa/H0KrLHeiUY8Zg+qu01aO5Mp3S4MYx3hBNNMz82uawHtSnqAuO/VwjRnJF
	 OysZQVzdfV8Y8rd/hpbDij6qkIS+vQHLZedp/459+TglZDDVW8KXD/CevT4kbtSmMU
	 tnjU8C1m/+Sz+CNoe1yBkg3EAsfYB/uSVp/bh474YcxPxUGhc//PzvxqwDn8OTkqNi
	 dqHosuUHJpCWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD605C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111772283.16682.12092219022383090737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6e85795d03bd4472b1ffa6862899307df1c2929adc950293fbe1f2ef2d4c8d
Date: Tue, 16 Jul 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721117722
