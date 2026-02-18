Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B913271E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771422294; cv=none; b=aTuw/Hh0cpzX+mSM9UxzyZfsXQUVO08m/n4etOeZ2ES7SNkfWkEQwicHGyvVbqcvHkzEg8HNhXOwyhXCcrlhyEf0IgCWjpSANGcppHGhkGsAy1PK2CWFu53aekv5lN8h8x7zShxTs4X2aPGYn3LibhLoWvyi4D9fJdJOXxgczHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771422294; c=relaxed/simple;
	bh=eHt+FLPjHgzYasiqcXOUI8YXXFjm81AKPUB+f5w+wi8=;
	h=To:Subject:From:Message-Id:Date; b=BRn/r0dE4GglLxbGTw6UyOOVwuwAhGywiEpqne7NVfUwXC/9PYncKu3jO5ELPK2Z1K3T6XS2Jg+EINh3HglSYZsXoRjjJ6xLgqX1Gnc++svANPiU4r/NFsyU8YMY6alzso2UzoR+cS+65gUWqv9orm/KGA8EpjjPwYQbZUkiy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adRy2VDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adRy2VDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABECAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771422293;
	bh=eHt+FLPjHgzYasiqcXOUI8YXXFjm81AKPUB+f5w+wi8=;
	h=To:Subject:From:Date:From;
	b=adRy2VDi8WsGJ6zRLqpwqLi+jI3Fvx5hZpk5mEkwxsAGkbKGWbQUhlGvYuqLvov00
	 pdMyGFA8ntxpxAA/Bi8wIn2P+Bf876Wa3R6wdQwb0pFgdYw0aOwSjoegw7ujIAP+nt
	 7LKZXWiRo8x9IeDnVuu2oUGB8hHR1I6u12/9xITvLWPaD3akBijlYBQPW40digTfsF
	 Y6Y8dhOJuQ1n/GdDl0NAoj5uJnyPeTC9nSUEszDTIfDGXXNpzIGYUrbYvlXPIwAylc
	 WWZOgzlTj699W8pgP+EmYbQHbI2XWeaFZEZE11ERbjoIyffchSIu96k5RbxvJ0erCx
	 HdStgK9IldWzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A316E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142229361.17250.13925807971362098651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8cc3a12d577a3c6b3d518a0def815fc41221c02793ceecb22d355436090f66
Date: Wed, 18 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771422293
