Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49C31E0E14
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776871053; cv=none; b=q9e5NWyE7AKq5LdU3KqdofpU5WCjYmYONnxd0oiLlxhanPRKVZKeqTPzyqN7X4hQdnt5UML1vFlPG2X9d01Xlc4iLq6/r4mS0B/k60H7L4JIO1gD9E/z7lUjoquhiWOqSRjpNLiADE9J4OzfXe6OlCWX+CI5fTiIqlTVd5qQlDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776871053; c=relaxed/simple;
	bh=0HpXq6VUH67pgV2Y5B8melgwalks5ijj8+JlsHP0Tow=;
	h=To:Subject:From:Message-Id:Date; b=KkRnmZ5BzHzp7cVua4eos6HAUrv1Jz9iAgec0YYRR9MKRKxgyyycI/C7KRMJ3irYXFrsClkvkFinzwaL4lJglKwNVGwVi610hmMc8il+ftMP4brPPD0PYUwnqY5Zis1G1pSxyI1mFW9fKr89rFZvVvpAoj9WGb5teL5y5o4ltHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5ZoIhsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5ZoIhsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B792BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776871053;
	bh=0HpXq6VUH67pgV2Y5B8melgwalks5ijj8+JlsHP0Tow=;
	h=To:Subject:From:Date:From;
	b=f5ZoIhsE5XF//JRhEISdeqUYMpL80nAau176Qp1340L0iMNmlK+t3EQBms8GfK5Ku
	 +Y4BuboTZ6zN0DedOoP5d/2OotxXxoqEfC/zwH/HsXI7xULCo2UWjTQIgRbPspacRh
	 mQBq/jNpb0WuT8PnEg+vI6ZL78dPBQv1ZqloItOOxFYNLHCccYZ5YN+j7FXF4Z2Fss
	 A1al/MnifRzw0Hv0ZKaqVEH/k0GgsGdx9uG+dRMVtDPwbz11lUsZqXkO968KR1+UXm
	 33yalmsHyvrM+H1FOLZP2nm8PbyfuAMVEifpqukKt3Y5qVbXg3FbgOF+w6s2yAy8HB
	 hfAidL7H8gAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3DCF9EDF3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687105368.14673.14168808074353829437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f339b6a935b5cd1bc78f8e6757e9e9659f6203526be834796a24b8e89a0ccc5f
Date: Wed, 22 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776871053
