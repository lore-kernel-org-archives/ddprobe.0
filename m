Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241DD390C8C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782198394; cv=none; b=RNPWtlM8j93g66SgvxZWuKuof2sa6yvyFkQmKIwjKXomM07mxTZz0USnYZS0KjbNq427o1t9P0/vYXVrcnH8rjK/8+1SbnwgS7hEf8nGdTT6YWURnJVhWQugC7qHKg3v9uKrhOVArqcO/nWY7QzUqtWRdP/IH+qGV17igoRfUHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782198394; c=relaxed/simple;
	bh=9uASi01cI3JnDYLj2EGstdXdQYD+xli6GvrtZ1zImpY=;
	h=To:Subject:From:Message-Id:Date; b=BYdjuYM7SNUxG6mcIyTIMS7GTA5YIU+yIRCjHxY15uOTRCyvnrpx6Fa2oTdp9feQ1gpk2aVRx9kJNUPHIbEH/ncnIlthqgNV2nKqwzYPQ6IbiOU4Ne6ucEZEUguGh7qo1X2qtlQKNIzJTDgX6C5Rjl9YTLWoRR/yxNfUmJVvpTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+0YwQxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+0YwQxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD36BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782198393;
	bh=9uASi01cI3JnDYLj2EGstdXdQYD+xli6GvrtZ1zImpY=;
	h=To:Subject:From:Date:From;
	b=C+0YwQxv3RTUNKPTuyWw10oROoi3Wn0HRiQ3y5mfrxVYe7dQakgqo7t/v1PtWBNUM
	 PG9zPfasG5hTSLrdfVaGy0lUX4xd77X0WnVeZtgLSOf63hDEcp3XAq9FAZoIORx2tr
	 zpFcoYjTqDq/lD0DoDRzMWNXssrwfFSZBZvjM8yWFiJ35NdTg32IvYUpdQfWA5W6Tr
	 hh0EicuQBSZtEuFO6Ug9WaEF7fhcafezQ9WRZ7lxIfTm/veYtpTxnD8QSoU25x3QAh
	 2r4tiU6jybNWI/0reYMt1TBO+mTHMGXrtRF6m9bNFG0y3nfo92QM9y6ksKQACFuh3Q
	 SDWJH6tghqfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9056CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219839368.11683.13880954119401316509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca95d21a547704965c0d210d30c67fbecb0dad4e54f92647e3ed99762b8fec9a
Date: Tue, 23 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782198393
