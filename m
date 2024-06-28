Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684F0D304
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719534863; cv=none; b=ENWq5Sarz107J59GKi+7hBt+11jh/J9iW8a21Xel0I7V6efdT6UL5032kwOpaWLN10IjPQ9pXHCsH1b+zWR1PJEzGDXX+gAqBDoA5bxUh8agbJsNJNFyN/kCFFzZmmn2Q7rwBgNXcrBmbBr5BncAefggK14Q4c4ISV6GLb8LhHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719534863; c=relaxed/simple;
	bh=7IXGEekDKdSwEh7OEQRWURpxaVY4RHDix4lh2EIxVlY=;
	h=To:Subject:From:Message-Id:Date; b=tPAf0bTshy5QkT4HTAvXMxn+eJcrYmzk7SdExn8MA4FsEHer+ju/rZJzYS8PXyRwrJBWt6alZ9a19ykIgyZktn1uGbILGjWO+YgkuZnl2fE06W07G9ziEpcdtVQwlCjMOf3K5Y5wBUlJYBbnFBuiZw+tAf3id+Rrpgj/3JUsmGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8bHviaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8bHviaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBEACC32789
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719534863;
	bh=7IXGEekDKdSwEh7OEQRWURpxaVY4RHDix4lh2EIxVlY=;
	h=To:Subject:From:Date:From;
	b=i8bHviaFC/OV3EZVTglW35G6PrKzPiW0SXcY2tRF6uwwg+6uYDrSMRtf7JM36dMXN
	 gA3yu/LueNPmURbPotjHZgCM774kz6r6dmEKZ2qydiUNOJVuXk3xxH6SNk9C87MWJ3
	 greA0Fz7E3CbhQCai2kUjjoiUu4ADvEtI3BhUbnz3VKXscjqPAbnPLeM71bDPVn/Rd
	 nhmq+q8QOEP5aFYjUm+oEHw+9sK/KmzhlrauJKSiVKZT3W6Wg6NjkoUNoyLkTa7xkZ
	 aXaOZk9PI450aYMaLqzxVKkPAaAZUlakUckxw1I1vbENYt9ihF5DRnyXibqyXmzWo+
	 z+h8DTv/bc5XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD117C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953486282.25611.5339911858637157721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e95c6235fdcc88937ef76139237a640245fa8b3a4e782d8cb75dbd9e1e70065
Date: Fri, 28 Jun 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719534862
