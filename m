Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BA437B025
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790867434; cv=none; b=gyvodXU3eR50HzfQAO+GMjOr1JRL3y/QfbHmxAmNHIUQZhnqMTbD1uuVe6cXr4qRC14SCkMiIG9pxgjBoEkLYUIC1CwM9TzGT5HPRCdXTFB7JMfHW8ea59R2gtq81M6wYyVmndFd7Inx5cxFC75BIJ9bQRuD+hHgr/nqrPP9DH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790867434; c=relaxed/simple;
	bh=zPMEgM8ggT5zHGj/mm6wUo0wCQoHe2EdZUqzVPemHiY=;
	h=To:Subject:From:Message-Id:Date; b=Sv7HHs21dx57Y2LMsgrHe5FFaltdTIGJO9whjUk0fmeUoxy6DeBlEqvG3FCgeZD2kQWZ5bKLmC9qNe0gSBf3YhXQwqWReW7SoDwrkkWuwBBlE+be6uHTtzYE6tSkhp1TjqC3B8HvqXhVAnnpfitZf/opwujYzYLIlVhXA9M3C6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZNYbZmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZNYbZmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75D4C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790867433;
	bh=zPMEgM8ggT5zHGj/mm6wUo0wCQoHe2EdZUqzVPemHiY=;
	h=To:Subject:From:Date:From;
	b=ZZNYbZmYY+bZ/m7rqxaqBGlSFApIdWNl/U2cH8uJf7DpdmPRFQqypiF4m+9dCtevB
	 I6UnsUHK3MJrXoK//2msZNXptRd/m3RANSlPGcRliq7Qt8qxEz/brwkbW4sDFNZJ9b
	 EjJyfOz037mQR3iJnqyQmUhwdtjO752C7rLME/sQGyWcTNa1thWhhgeFsyE+ZNMHlK
	 O1J13TSBasBuM9Yj1p1vTZieGmiueLm1D4vof7XXHKXwpdcgQug0DXp66ggtJnG0Wl
	 He2+L2LhHEl8US6NR/vTKMGF/JpevIYZ/ncBuu+5kwPkqB15nkUmvQGFq350ti2CC8
	 2nK1idQf48evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFF0CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086743375.13338.16326327447429850900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b75ac7fbca94eec3de80f1b349ce337dbc702d813eed1b63d0879f9f75e020
Date: Thu, 01 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790867433
