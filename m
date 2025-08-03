Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6AC1C68F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754229594; cv=none; b=XkN2L1WyVqO8e/7OpbbkAYgOf/YQODQaxMTcSkQhPYnT/YQFxmi69H/YpuSbJzqtYOwpxapRgklWRgG6V1ywlCPCz8p4a6ebN4HK1vbhs3qWpBVrwWMoR02If+W3g3NBkhLr1LcRj0QjRHT5R4DhnSil9nc058ME82Vao8tOolU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754229594; c=relaxed/simple;
	bh=beEXwsNfQfnNADafilpCYYLuhCJKDuW26kVjsRNXCrM=;
	h=To:Subject:From:Message-Id:Date; b=bebSm8BwCAnzVK7LAqu2V8SIJ+GUWcgJax/eDqvKBMpf+mBbWA8f1NJMnA8C4/+pdGyBRZySoLNu0qNOhU5czx36n6GvuRKDOd9VNFItmkL74W/2YcYSlCNmjkDfepgDEdIYwuGS91KxUhNrvq3ETfXrY7Y67quGIyLA7DQn6AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRljs5ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRljs5ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6216C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754229593;
	bh=beEXwsNfQfnNADafilpCYYLuhCJKDuW26kVjsRNXCrM=;
	h=To:Subject:From:Date:From;
	b=bRljs5tamvQWC90QiZGANq4yMTDjg7dQYG9e7bhJjoZzmb5OFT/gRHuXCWw5WEUVx
	 SEbtFRsdSYcVNW2hOWRh3w50UX2VLBj+Bpk5xk0URDqktpaJ9pEDy4WOJ1Q3gHuxYt
	 op+yFRV2vhW0Omqq/7aZg7ndUfQ6rfITjTnhUhAEsW/JxirjJ1fFpx6RHrY1G+d34V
	 DpSs5if9v9l9EvuVwuFUfEdyBR9Jg3YDuQ1gC0J4XZmOQ3zlVKlklAngqCTAKI/0k3
	 jteHl1zia1hAhIahT/zhQK2JaVbaTUzEO74tM9Vw2ZjhDuJeUCdVrhxPQG0H2w9lgt
	 4Y+7nmMYotEVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4BC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422959359.4785.12648684060403685755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce37602c81f3a5ef4a03e86670905a014ee0ef44369bcc2406c89ecade1bea5a
Date: Sun, 03 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754229593
