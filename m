Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376C18BF0
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724031954; cv=none; b=Xs+PeV7vGpHnun5/ls5Ugur5LX660gyP6O9GsLE/Kx9Flf4jST0KTK6R74axNoheZJXuaNVHMQJZy4FZiznx65q2C1mJaXGByK+36ZjG/9SEBD6ca4zFkhZmZc2swR9SNnoaGHDMUU8PSiB+XJ4c1+nmsUpZR1InEOUPG9Zdk/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724031954; c=relaxed/simple;
	bh=L85MfWADr0onxxh4BS0WKP/BjspgOi1UacU/g0Z+Plo=;
	h=To:Subject:From:Message-Id:Date; b=FngLWwQeBj7XopU5HAdyIiYFnZqmMZqPU3J8OSW77OTV2x0t0Hje1JjLWasZeqBtvo5Okop+ZmaThBOaOmxsn5f9Fx/EpXXF2Oqp3thpLQj8LPokbLeEmwJfB6KSTN23hz8E9uugUiBliYxvwTQsXcd/PnypwZw8ALRtIFjc4xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHmycPCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHmycPCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C73C32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724031953;
	bh=L85MfWADr0onxxh4BS0WKP/BjspgOi1UacU/g0Z+Plo=;
	h=To:Subject:From:Date:From;
	b=HHmycPCwzTPzLq9ctzxWar8LedVPTERnEOewRye6HDpQU8HZ2dujElQ5Can4eNhuB
	 VZP+fJ0xeIqXjUshpCsR2/B+7NI3jYoL+qWk57vqBkZ1BV1azLBF9LTAVxdbzvOai7
	 /hsLq8SuJEzh21bUo0+ZsVKG/9B8ubTRe21OnGQizRAEU6FnWnKwooHfKhN+1J6CAl
	 Ap040RU67jpsq62lDF0QxeBXXR6xC+q1cskDZ0NfRaMTO+p9baXYEZ2ADuKrgmPwpw
	 PKRrpINuQg3TlZ9G1PJ2Fv4Ku5QwDYPmOKzI85TNJushiOGLFeqLGtNbUSWRnmWI/T
	 TcVq5tbQUMI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5981C531DF
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403195366.22407.3502264378263812941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39cd3e079d7f184658db307562bf39541291b63641280cf14b7351e2191c8a96
Date: Mon, 19 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724031953
