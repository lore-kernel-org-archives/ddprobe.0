Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22283EA98
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739238354; cv=none; b=ia8KVblB2PHorfgGkxGozzy6lpYUHIcARAqRl1GGcePrXjeh0qX/2RYD0TUOGVn/3nffxcg9/ED5EnfHYNUnYPOW/8/YPUhArnB0JdmMLEKCHKilORLBRuNVXmyJ1YluTQl2znx0W8SWRI4USmH8e+RAfeHKOQ5BO7IHnBL3Cgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739238354; c=relaxed/simple;
	bh=72Bpf6V3+f89PadyL9D1jZROn2WwSzVnci1k0XqVPXM=;
	h=To:Subject:From:Message-Id:Date; b=tIdm0FCgtKbtJfk3Edi0DKmSyiRtjv8vkM0+XXTzUNi1dL17lK0GPLTvONtiQfx7R6TT2IN35CJXbcnbigSdgMXozcMt/rgFPMJgI0dGKosTttn6rJ80nISvyXHvTW65Lq3aLTE6u+Drvzn2WRmynJEHj2KLHGxhnQGYtZDauTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuKpIqqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuKpIqqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B07BC4CED1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739238354;
	bh=72Bpf6V3+f89PadyL9D1jZROn2WwSzVnci1k0XqVPXM=;
	h=To:Subject:From:Date:From;
	b=OuKpIqqEVoss6EXGjTlyZoUym4jabntyTBUXiwduqG+yMS2cuVZKfg7NtqDJsuNS7
	 BPZjX2SQmjQ2dkJY7ddqx5Tnw4L0hqlI8+CrSb7BzqMfZP8xaUk7hQbitpwLAIM4D9
	 pfJrjHtQRnqk2ukrmLgoDg72MUph5iVeWzhedYMxFMUZizfHx+jucgDFDP3XxS3nY9
	 JYNpO7KQytWWKVpLYMecTwiv/0BeQEUiug72MJbErtWId3sqaStBCJbOTF0X7J+j6Z
	 5i1SuMDVKgByUFWOhgI3I0EEewh0VGZUfvVwHkV8Zg388zoasQJq8K1JyLoCCZib6a
	 ALMF2bvTuBGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D43A6C02198
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923835383.26906.13022616362785683858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaeafeece3316ab19a494c96c61f77db2d8909619589bf1bdd3b21b6e7db011
Date: Tue, 11 Feb 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739238353
