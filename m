Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9392DCBF0
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748233194; cv=none; b=p0JvUa7hQjlK4+OTK+0M1VM39VcBjw2lIcdDJdR8TN8ydhnQhv4/SueVDUGMA27LGPnbI3Ju46le1zAIAxBDNxd8Pusm6XZ9c9buXLxQnntnyxEmugQJD1oQ5HdqB6CQDAeT/GSnChX8Eb58j/+tlUYZksw5ZJR2Utebh85w9qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748233194; c=relaxed/simple;
	bh=PX6k3fj0l6Gzcg/kqt/y3aaMr3FmKTHYCj0nHS41UMU=;
	h=To:Subject:From:Message-Id:Date; b=rmi6gRCrXblvMev1hVvY43komhJeucfZ2T9mhCl05i2n6zVXNbVj+jtRFRpo0GvgGvTZo0A7nPvnxTtQr+oLPmbgcXc6uUnq5diBYEcoUI9gXWBHQ6Od2DgnM+HHCcii3o5N5a5UJH3DowC2XTk0RWqo+mSMjpYt7L4fEINi+EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVhcNyi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVhcNyi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79D0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748233193;
	bh=PX6k3fj0l6Gzcg/kqt/y3aaMr3FmKTHYCj0nHS41UMU=;
	h=To:Subject:From:Date:From;
	b=BVhcNyi6YG1FGW4kMZ6FjnuTiHEQAUbkzZrNNw6BqjQ8zbdw+9cuVY0yUvQe42mSz
	 CGJMxo2HkH379x6eItWNAdqBnv3vdYkiKyVGptUO6M57HcxR02641JyKV9w2wMURf+
	 FgznMgeRnuSPykKosIIL8vIy6i4wjwfHkpqXtMu6OXLw7Ao0FVNco73Vx89rdhnbKe
	 1ebayPhXbxnp5YNQRhLwjszFWYL1TzT8crdZWCWtWKaLh9ARrDI6YwOaCDR6FBGJNQ
	 AjB5ZF+ZBW3eVfGw+THQ1J5hzpRvDLly6RTXodirmckYJsZsSk2o8AdcMub5wWIjG2
	 NrLHqO7BmUOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F29C54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823319362.3694.5901699990783524091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91dc8a591366c61f4dc387355eb06eb8a346f52ec6215ee3465d6d615c8f5c1c
Date: Mon, 26 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748233193
