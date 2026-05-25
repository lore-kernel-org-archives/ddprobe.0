Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA483090D9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779737554; cv=none; b=F/v+QhEhfL74VxiO+TXg2/BQ7t1rDqJYL4M50baTX084igaY4vhqFgHRNnNhYoYX2sGCXIQUvAGG5J3qMsjTIq2WFHBFKC/V7jKu0GNtpOoPDdXYrZO6xG+zmhR/1Bjgj0EXgCsAYJlSrksSvnoUFpcRc2g48JXpvBbRAtsfGy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779737554; c=relaxed/simple;
	bh=7zShtrGFy0MgliaCCGrdyq1c7InhgDAXFsb20fM0Fow=;
	h=To:Subject:From:Message-Id:Date; b=l1i+o7QJecj8h17/ugRg/n4e5Le9mD0VNFusyMziL1YbzT1DeI0bnOluXH2gVrnUdo7EohW0A3JSd3b4m2MvDj4rUuAgYhLXP//ox2B95A8rLSqIFOkFhfYSaBzCxWFXNly7NkGKJMvR22UVziCLgAR4LRG957relV9drSthSAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtLWAPBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtLWAPBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FC8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779737553;
	bh=7zShtrGFy0MgliaCCGrdyq1c7InhgDAXFsb20fM0Fow=;
	h=To:Subject:From:Date:From;
	b=mtLWAPBmYZPb6oEhgVau8ggU8rpgtRYYsIw8Qu9F1SVt3YKYXBtSC19BEXpgPIsgw
	 UuKDv5DJoYpaGYU9QDHYWmro7ia7pqIPDXkCf1MRfMpI99/7fSZYXNe/HnlSq9OmoQ
	 IOUTTBBkE0+fZpBeHXx0wtgTYNGMNdRQH5Fwe8vOR6pggrzfRUWEtWBSGXhtFuzmi9
	 Zfm89pnrOlSaDo8gacX7XlNW8l+obh3TTz5WdwjKl2kpVWE30HuIxz96CDFpvtTJzW
	 C7kPOXduZiD/TIW0Eca1ebVGt+GGqh9JoonnHEzRvIGTYm34q5P0m7wUBrQXS/0kKt
	 zeyZNvHlP1AIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8436CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973755368.28299.16645620373371474336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2022eb6bdc60443fc53fe6d41bfd2d2ef5935d102b552bec06afcac05173785d
Date: Mon, 25 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779737553
