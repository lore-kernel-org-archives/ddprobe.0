Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB4934E75C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779342634; cv=none; b=TEfBt0s625NVH16xyjhUuFv/7oG5g32dEDEFVSqkd16wpHHp5PTz5M8zmZ6c5m1jP20NeuXTHyfKWKDGzFh/VSrqhm+SAiKrdbajA55FeSnj8otaulgj5nGbnbO6GU8ewAEvGg4nYtUl/OZ5Kxyq+KNdtyFrU7ezIp/UocSre/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779342634; c=relaxed/simple;
	bh=ZS5wDfGfW4q3sonOjAe0ZAjoma31CAkCj0LuOXmr1kI=;
	h=To:Subject:From:Message-Id:Date; b=DnDGusW+5fdfzg0KFx9RaVwUbYa4simEWUAktvk8Ixvxs+20ufptyatXDGP+YTt7xwXUssRkXpBtPNSyv5TG+sArURr9p3NaL7X22F8LWdsuCqOxj4XU4CDVxYpv+e4BNjkn2VYrpWACFRlMA0w5rxiV+SmXrWXYw2jU/g7HN04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th3tLdlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th3tLdlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7432C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779342633;
	bh=ZS5wDfGfW4q3sonOjAe0ZAjoma31CAkCj0LuOXmr1kI=;
	h=To:Subject:From:Date:From;
	b=th3tLdlXI8BUYIxMiQ/K1Ehg8yr3fauvNSovFM/tF16QJNm4smL0fu+Q0huI0jjNB
	 pf20SaA2zGVeLAubrdKb/a+Pxg2neB7VQcH4fKBgdZRWRGCbg1oH3qLzv0yJ/KWDRi
	 hOgnu6+B7GIIZeliE6B1xL1mxARUij2SL/TYFrkckCyJ4N2i6sGU8teLzfQbapYrNb
	 euZJV5T5jZHmvvatcnAeaiB04zZ9y6zAtnw4A70VpIlA/UVTk1fuqBTnmddpmTENRV
	 +4Wg4FIq1BIqu1a92iQAv5r5ayOqzWOa4oxkyBSxOBHZ42Bf04el9v1PxjOmtiolgI
	 83iR6DxQ4ZN9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B996ACD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934263374.22639.14418355273898810575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2144b9ba887c1fb94d72d0b6a34c88353f25a371c112eff0d0afd9f2f37d0be0
Date: Thu, 21 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779342633
