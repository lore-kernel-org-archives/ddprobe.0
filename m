Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D21854654
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742696994; cv=none; b=Drfh65YsMrx6k/gHN5XMjZs7kwiBFDo/UsuDRXtjjA6R+BLyIYsXvOuSPqy2fJaswNAzUsQeDJ6avz/PQKoh/ZPWIwfWJX7ExnLMMz8rVaghVQJKDT1LjrYQ741xwQ/rh1jJQwuEcapOi8AkSl2IK9wvpClF/l64FpakFFGHZuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742696994; c=relaxed/simple;
	bh=AsYZpRFArU2wYLDSclP+BTqQemKhpeI0LXS6+KEpWF4=;
	h=To:Subject:From:Message-Id:Date; b=ByG1l6uECsBFzlZldFmFr7MwFL/WQvTZzX/PZwvgjQhEP7hQ2UVDhWCnNMOAIP7K/wF5o6Sc2GQVHhYcisItpg+MvMqDGshZHfmuBMIuyv0C2jvW1T7R/HoRkZThL8/cpWehkAQQw0zkcaLr2i0z2zdJD834F/9CCzy2Etk4WG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxZz6GY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxZz6GY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC348C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742696993;
	bh=AsYZpRFArU2wYLDSclP+BTqQemKhpeI0LXS6+KEpWF4=;
	h=To:Subject:From:Date:From;
	b=IxZz6GY6G6XrIJupD+houV17CyGED8L2K7r8KIkOnA61YUFuPzyAlW0iYn5En3mL/
	 Hq2wcTgR6Beu1YQ7crd/k0kBxHFEIJZhydiaFqe51p130fgQztsUQ3qGmt5N95T1QZ
	 7dihmGorRWKZTZAYeexrMCW8divKAdZPIC1rwzeMAvHkkL8fPbFTpigS6UP3dqVWw5
	 nr8dSMUMEIPw3p2EiIHsYwJmzEeqHy/ZYMex70l/RtE8M/1krpxV5wzVDhpvHNxk2N
	 RfajpALX118Yyh7NfY7Krnhf+LqD8E4ImOnuXySMNzsdqgoVFb0CRa37n7Brzyl4Wx
	 BVOR3Q1UtkOMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46A9C35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269699364.15920.15188861146781451094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7288e827eac19785803bb1e2295e4daba87ca9b73156c913887a58a5626e962a
Date: Sun, 23 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742696993
