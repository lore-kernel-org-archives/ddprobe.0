Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5487640BE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737726954; cv=none; b=jZpDk/F9iY7TouPNwLdJvcu5IXeb8lN+UEg/LbhbR/jEqAxNNRNsYWlJyL5nun02nJB4LG5uJdnD6dG0i2TaZQ660gKc/koylXx2i1DB9BkY+8AVSovytXNDjn4uxs1PK3ZXZAsi3/Iq71RYP7CmoBHBlobrOJwgKSALr+nsyog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737726954; c=relaxed/simple;
	bh=R1qgrj2QqMj0Ju1Dv3v2fd5vkX6mGex8HNgaiD2ukCw=;
	h=To:Subject:From:Message-Id:Date; b=YGSzSYP5WGQ0nafGcseFdjEVGkreYBC2OC8AFFZCmE03E2SDCTf/4KupZlXp/w2O8aHEHki5qzh2FA/V47juYDN8GagitQQXs4eFUkrtG8w9O1+YaQJbg3wtlOsqOzfd8bKLBjQMnnxHz/wHH3sr/Eu6TKxm0nuGyL3rJXcYuxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aI/l/rCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aI/l/rCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADCDC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737726953;
	bh=R1qgrj2QqMj0Ju1Dv3v2fd5vkX6mGex8HNgaiD2ukCw=;
	h=To:Subject:From:Date:From;
	b=aI/l/rCtHhGEVRzST3/9mI5Tl6HOeguuELAPEFJQmyNUrKRjuFqaMKhpxttepEVJm
	 SbG5QKFYA7qU2mHbfZl9hJZOz+Sr3CRhEeMS4b90JIndRIrjC7Vw2duHrCeqbatuJt
	 QbTWf/2Swb7d5flDeRxW/D5uZIdgSHJeuag4Q3t/6eRn2bxKT7i99JUsTyMR3PxrMp
	 AkQBGGUqX4XTbgEZWHung8WA7ghb46iOxH1kIfaFTbsLyJWHWCpQUx+r5YdipZ9Oth
	 fbie6SFx0T0jtrWgpNZc3WR73VflTjeymtRoU1Gia9lhZTWy5eXzlhPimDhcYgyVlp
	 zOZIvElwGYtJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD26C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772695368.14469.10918005531950914836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c90d489c084832235f5db02bded7a6295558d7a168a1e4380d3fd52a3365116
Date: Fri, 24 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737726953
