Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB783A0E98
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770197034; cv=none; b=Xado1dKubAZ7o0ZyWzmILVtkPWHmyuPAuQMYdoJ6ZsBWSpERyBvIwGylTrMGctAEDBEIvgBNT9E1NoTfhcK3c9TC0s9z5oRCiscdQJmXkq8RxE5LwCJj7MYG307M0M7jme5/yj7eJQkOtMlxywWNxh6GDHihz7FaiSYSU9V8q7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770197034; c=relaxed/simple;
	bh=rajY34YG1v3AMz/XHgJxNv36DT9U+8bYKJ9vUysfV4I=;
	h=To:Subject:From:Message-Id:Date; b=SXVRzvm/2rY4lt2TnkP1/elpszViaOW1OrahLHs1bxQy3+GUklo4IQo5JYP5+mKob0LGjPxAt45nBsnfxsKDePz5iO2S9h959uQpiPX+ZYA+6/Oqw1xbMBGxYKUdwlFU8s7Y+OhjJOJvAFJSVKXXAbG88P2uqmpmKy80Z4vCWT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5g6pNrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5g6pNrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD4C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770197033;
	bh=rajY34YG1v3AMz/XHgJxNv36DT9U+8bYKJ9vUysfV4I=;
	h=To:Subject:From:Date:From;
	b=t5g6pNrPCUBaZy37c2S+ur5wrfge/IdMq1eYkOHgH7Q8bqRugsNv9/mEXwRmafqup
	 bRcC1WkA+4SbjTvfBWL5/uEC+rPwQqW3Y69T2D/rBoO2KVE8FAG5o0Apd0PD+CQE3L
	 8pjfAsuBgPmbyVsS+988UTXMezbaUF2tDpiXHlLM7TR+e2as7R8p8GwWu2cEdd5Loe
	 oEgVgc7xe0jiwoddEqaoU7VTRBtMm55qv1/ueDxOatsS5AAnxvelqhn6RYXkigl30s
	 W9/HWQgfW9caaItMRSkrBCMn7DC+8N1pbN/rHPSgOL/lsP+/S+nqtYhg6PdigsAsFF
	 p502XFeBllxfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92078E83EF9
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019703358.29606.2767386305040495556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5385d1e387fac4ae009c6bbf8e660180d367a969d7a7eb1df021195822e890df
Date: Wed, 04 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770197033
