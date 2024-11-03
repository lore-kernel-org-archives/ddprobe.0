Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F8F4430
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730624154; cv=none; b=L0sa0niEpI6nTFTOLQvPPTGtqav+XH7aj7x3Oa5scuAa7ZncuA8RZUAnjEhPYivZf2zpgn1SB3Vp+iIDPq3VJVFoJzTZZp36puGbecG41W1TlIm0UTER5jpqXAF9BZ/UpCjogCkD4mYmfxGxVJLyqg8esEgvBU0VIsFtNYn2C6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730624154; c=relaxed/simple;
	bh=HroQnlCFpS+9NlOT6dGS4cBlV8WKKqtK8nItvUjMFZ0=;
	h=To:Subject:From:Message-Id:Date; b=o1vNtqDBc8M/XO+y9HOETl/4b4bVP1xGcanc6nG4Ca2tebJ7Xo8EBAUjoMtiSZ0tBHssXhPYEIszRB87GT2eMKo1afKIhhMzpR/7IeQyonJVRHLv3BK4Zn0PpyXSZRH8suF9umDVmb1cEtVz7oy15wLqcQ4jsszDOreUe37SWN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBZCbs14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBZCbs14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82E7C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730624153;
	bh=HroQnlCFpS+9NlOT6dGS4cBlV8WKKqtK8nItvUjMFZ0=;
	h=To:Subject:From:Date:From;
	b=LBZCbs14aXQOWX9jP4wAvoEVXsTQaZ9gYrVFSsJn5SEXsfbrYwXdayuVMGWYx3A2S
	 yOhA3b2UzuL8cuvXhe3y41yaL7KLkYcEGG8JSLX2N2Bvd6t+B6gRNo3bDhMzRYWAJw
	 2jX7QFwbQC3L2FsFEkXRyihwVhsUeQNeHNTO4sqc5QcCuakniugVO4huZJCd905IXm
	 stmEolbVDmarv8gzKmELtjSxwAqeks/GLwR/A8lwVTiJ4kCG1kEn26QohMRjJ3dR+Z
	 9tKkiSF6VhC0/NBNy06MqHU5G+ou/VBbQhpK1BrlJgUG0C09P7L8us1np/9wZPQi0Y
	 OqKoCHoqIrIeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBFAE67806
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173062415360.15103.320484227375419609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f699f40b6dde9bdb2ca4aaacb856837340929490ea06c603fcb1a3a864ffe44
Date: Sun, 03 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730624153
