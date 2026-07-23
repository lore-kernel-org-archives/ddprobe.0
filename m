Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40CE283FDD
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784806834; cv=none; b=uIfLHJqaiuZ9NOaRZpc0I4232XUmTvoVNEMdKN+o0pmZMZgo1JIE33NubANjrsKg6CS5/EYlvQczonxxsGjjdHiUeMGb0Se0WOYd+JzqRPNZf3i7cpLS/HtmydiGj54jkE2fnqV0JbYT/wcok/yxLg45sKh3W2IUnfD43eFGSy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784806834; c=relaxed/simple;
	bh=Ph6Jv0/GxmqcLtmHKta679rx7YwNdhv3Wo3GLH5EBfI=;
	h=To:Subject:From:Message-Id:Date; b=jEmh4svWIdLECwL3LQyC+KYZ2CzYOlNpmAV0ir+RvHWozDdXhCh29cHqIegmhXHDD1+MEE8ldl7Lrv2fBA19xkv9sP7m3CwE4mevSbDhEVXurYh5ENkUkh/baJdCpInqxyo591oVSLsE3EUHhZ7azsTrReysmldZ/gQ5hPi3zZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3nsFDg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3nsFDg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E4AEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784806834;
	bh=Ph6Jv0/GxmqcLtmHKta679rx7YwNdhv3Wo3GLH5EBfI=;
	h=To:Subject:From:Date:From;
	b=U3nsFDg5+jp36CB9LqNV7J323PyXH4RtReT0JVdrCKvqdA+JpyGSm71lGSYWfor89
	 TUFstrP6xmVO0suipteiszTZ9wWc4Lm3sscMoQhUQl2lPY6B7AGHCBGy5k/dSpTxjU
	 /YNXfEhGNQPMBOHUEAIR5rlFjqRCogGFQSClRCqxcWOwU89o5ZZfDmqk+BR8unL0H8
	 laF3ujE5ptVG3wc0h1BvA7idTdvV67d8T88JMIAtEe6zNnTdh3WFmfL0QOZuqn0p15
	 P6u3hZWRbRcj1vgxDkGxIcaWehTODRYyOV0diq4TUY96GYlwffjsLWvtDsW8e3hbDz
	 ywHaNk09ygdAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C17C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480683379.19332.8300204714180484057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d0b534590f0f37c47a70e703fab66b9864cfb8b808f8d074c755cc6f1fd7d3
Date: Thu, 23 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784806833
