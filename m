Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169FA1DA3D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760196594; cv=none; b=Ssc/KiU7AFNAU8orOOiuqHmSZOA80befBL4FNLKg1FvwSxDH1egqaGT1/NSpDj+lzzZNo4ELfYpoYhJKc5oT3yOvo3hc1+NkoZSAr4EkXCRBT4dUiVnr/dAvfLsCtRQoHcruGxrimAy744PY663CVPDSwuUI/gzfeUZSnx5iAG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760196594; c=relaxed/simple;
	bh=lZIRB2DZWDLZ9Ju8QtooS1CfE95habxuLdgFuA5H+m8=;
	h=To:Subject:From:Message-Id:Date; b=QL6NcIcRTI1HPO+RBMe+FBU8zm6KdW33AKAuxStCUixwOvcWN3oOMMXMA3fRTHImONUqV/FY8Iklu09p4CF5NZi+dzepph7fTYbOh0+JumAhieI4ii3EUBsEjS9Cbq9GI/iV2TpUaFU2S9ww7meqb8LsUoCTQNEDLlJUH0iIW7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0pHoSFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0pHoSFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F53AC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760196593;
	bh=lZIRB2DZWDLZ9Ju8QtooS1CfE95habxuLdgFuA5H+m8=;
	h=To:Subject:From:Date:From;
	b=s0pHoSFmZA0mk7PuY3hqzQ+PT0JET69xFJcv+/rXoek+lbnZdE7Q1pcvOa9MqEFj3
	 iJAUsxmhJl22eNViqm9gvYVH0TX7ggr68W6PSV+5IiwvZJIjBJHbPpPErh2FqZ618A
	 IfRTJtt8R/qQR4nQWAxIaddzPIx3P3w8RCVm5br1Z1mvekmYq97ksp42BgaDbBsEau
	 tSMcYQ+N2koWfQVqyRtnQQYBdO8QgJFRidAZLiPGaDXA93kn2ThEupQJcKrmNmfadX
	 SVvh7loK1IJaHa0w30h7t1oVPhS731Crq9Y9EWKHwGCxjNSgj9izMRifduhkfbGcmW
	 xvuOg+n0zD5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51FCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019659357.4144.3684784340774488940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a02c80bd272d9ac3cd288dced48be97a82c124848b500d6fecfb817871d43d
Date: Sat, 11 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760196593
