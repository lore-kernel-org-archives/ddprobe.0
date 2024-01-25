Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B0D10971
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706162897; cv=none; b=hN7NQeG+kggilApSaHH6s1uNO9iguu8Zb/B3k5DQVBWey71mzGQlUzIjHk0KTHbEhhq7F/lb6xGjiYXVr/UiZseWt4KwiI3V4NjvlwHuiZbYT5sgdIWYtZtjQeuuH+qXIDTmK7obbA0FclzNtDQkPgTqrlGVhYEAhyzy1kgP6UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706162897; c=relaxed/simple;
	bh=+0Zt4pLj42Z9K5O7W277BMhXaOwjn6FiSX5O7NtCcig=;
	h=To:Subject:From:Message-Id:Date; b=MRUPLII32bO/OOyZgIiYZ+P9fInBTTlBI/lwmJ6azrwgMd69Q903XQD5iEAZOVv75d1YnnolmysAxNDgcd1EeFjxN50XTwfqoXnV6pZrWs/+hysDUUBegiZqrgwmN7QWm5ut0CbWUXKSG9Yjgbs2I0T1gKmxvYDgGgQhkj+hfv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0HEWpqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0HEWpqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0D3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706162896;
	bh=+0Zt4pLj42Z9K5O7W277BMhXaOwjn6FiSX5O7NtCcig=;
	h=To:Subject:From:Date:From;
	b=g0HEWpqxKGiRVpFDVf+K3bwBTDT/WMy7RL8dGuYoqdafTuTS2wwL0h8R3962f2NeT
	 Ma/hjnErEC054XGMADQduZ8fWbW8TTH9fxvQijhc8V16uwnaXC+csvn4lX+5sO1psu
	 zVWqxxh6qxUAdsTpEuITypgn6M/4TJj5Ap8GCYw4/urDCKgWnVwe1IA3kG0B/tZj+d
	 5f1b3G68p/Uthu95iNyfnlJQtwvmYxCzQ7pzAY56xUNpNicYrMmMMbR+h72Uf03bnP
	 h29jw/mPfywlM5Zdlxc7fzaWsWcngyR95lcsPbYCMS3SZyFyu4BPr5gOVcopF4Mgcs
	 eY0qjXqzTubVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A61C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170616289636.7659.10504374104355667755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de04f3ffed4c10cb3447e68abec6465ad4071a1b4c4684ee83d049bb93b3a98
Date: Thu, 25 Jan 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706162896
