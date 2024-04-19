Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABFB137E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713496163; cv=none; b=edWKVUa2df0aQsQwkx37O9PFfhufS29ro9AWWIInDmwwPyt9QZ0Y8htJJ1eSfpzOuMgKsXyNPFOPl6tS22H/TkE9e5nEYoRELXVvWG/mcgydSZiz2tDvwXCFuWXpEPS3S0j2Kv8a+eKtc+TAU+q+PXQzyivTYpORobrgTwoo32Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713496163; c=relaxed/simple;
	bh=wd7e/JfkcNYqHjS3BGT95pvOZiU5inE4pDKIZoer//8=;
	h=To:Subject:From:Message-Id:Date; b=sB0/drnTfpoYLnxvkZd8JAlDXcBZoCU8TfGaUz9ZUO8eMc1mdqj9iZTi+JVTSpd2JYtzV/SC/SA5pFmJbIZZy9VjLPjTkVRMyFDBzaqx/9NBOsrpzPWm9D2/vjG9P4AaW5oaGIqY/N4A8esr0J4lmJwgA81EfJEmACUckj1scGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chmRTOQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chmRTOQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B62C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713496162;
	bh=wd7e/JfkcNYqHjS3BGT95pvOZiU5inE4pDKIZoer//8=;
	h=To:Subject:From:Date:From;
	b=chmRTOQ3b/4+BoMzpMK3raldSbltjIh9F63WvZxc8AawT4NfWKy0R0+drl9zsoKAN
	 XGqjpKbSc6+82xg0rHGRm45uBvKQ5D2Y5EOCFFxNRWYgFQ+/TMkCLhNYbJ4hiI2KEG
	 zLD8u4Lu/9YuZLT12YD5MapAOYcQIDYx8gHJB+F7Q+uPU6MAPS50Bb8XiUe807KkND
	 eTJLO5O0k8cuPcaMa6r6MHrpa59cPxoWbRMFTVmk5oTKkFwkTn/XJ6868P5UJK3UUD
	 3emwfXM8Ae5zn4gfMeHvUIvgva2LkHhXzbJjMCvvB51YXKqPKDQLjxLzbUQff6rYpO
	 tjp7A+Aal3nbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA187C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349616279.18503.271053497771572469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4646b1a5f771ca43a00a6b4d7ce673515fded37a221352dc1422981b65a7a126
Date: Fri, 19 Apr 2024 03:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713496162
