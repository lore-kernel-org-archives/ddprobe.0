Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346F3320A20
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765923834; cv=none; b=uRGqUQ552HS09Z+Qnx80BHEawsj5pn63CH7R+YCQBenVkusHC9UDxtCSxSSdKvQ2Ui2UFs6Yqu5aC5GKfAYbNBdqP14t7Pvh8/0rEoja4VjfG2qJMYzuE7hd4CyEvAgHqXKuh2p2KrGw/TsGX5PFRDC3QPE3fIiUTYvgoco+5+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765923834; c=relaxed/simple;
	bh=Jo3XcSqYHDMWnFEvHxgo2YOBrFauf0VYl84BXIQsK5o=;
	h=To:Subject:From:Message-Id:Date; b=RFv2YuRwQWe5RLgpzgx8XJz0PevarzObgburOI+MYXq5Q5FjNkpyEkrQ2u5PnlkPadzK8OCfkwI00TYT9ZMGcPAedT2g34FM6STBQi4UIEUlOOlKl4KaEAg1g+1CXUT8aPWFi8fnHThZMNcaVa+mye30y1Rb4tf5OHnEQlhh7Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxVwLDZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxVwLDZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ECC113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765923833;
	bh=Jo3XcSqYHDMWnFEvHxgo2YOBrFauf0VYl84BXIQsK5o=;
	h=To:Subject:From:Date:From;
	b=cxVwLDZvYGwoTDnChYadPIOfqBkaw3Oh7fgbu0rDtSphUKbrkUvwUUs2OCamI0TR5
	 1YbN6h7swgQ6ZF/2HtXkSgTGKivU6uU9e+cY7ZzS+kzeZauFC3e6EMlTbFKQXZXMFe
	 nUN6H6t6LgXRF75OLRHvW6k4Nk9/4IiGOJaNj2b4lk3yIteTHDe/kTkKk4BkAw+Wnk
	 M7o+QNxq2tSRjhvR532HmN/u4peeOUPczRGBn97cY0MpoZZBzvGXaJW7q4pVyCgvAk
	 yUE02GK76Yjqgj3cwVXDZed4rlaElf1E2g33hV16v2/sth/mGEumISZ8LCHi4TbYyI
	 rOiX82IjzWJcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4AD637B3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592383360.19475.864247306113500083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1e16814a06e85f7fd7e2a1acc1388fd1127389e191ed8e8d7f51b8ced79fe4
Date: Tue, 16 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765923833
