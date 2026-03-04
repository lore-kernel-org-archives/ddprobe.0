Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1572929408
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772602494; cv=none; b=uVICEaulddKhNOjH7qvzq9npxxsqwrZwXvXqv6FCl+ySgD1b2p3pX2PdMoapHcA4ZCsSNzFPmojhByl7DnD2jFeadyCXO+onIuzlFh827vuJwBqEfPfz3bkPpu03ZW3xbRhTI6uMCeygg4xbCCziN6heFUY42/mKT6bOrKFwjlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772602494; c=relaxed/simple;
	bh=1mP5HPldUuUo0aRLGZiAhoqCoD+ECTaaHbQ9/8l9vG4=;
	h=To:Subject:From:Message-Id:Date; b=rsi85pLxvfM5wU74pehSAsUtJaPTawLy/d77wc9+TYfMmdKF/TJTjF9gjFgGoTjaKbTj4pSaUxQAP6as783SZ84ozUC+93AV4HTJOqcABmaecBLVPVIsASoRqEvWMqYV/QUOyVa4fbYd2hKUlJL8jf/3AovTErPrhp47DdOuo90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lesxuWWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lesxuWWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC2EC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772602493;
	bh=1mP5HPldUuUo0aRLGZiAhoqCoD+ECTaaHbQ9/8l9vG4=;
	h=To:Subject:From:Date:From;
	b=lesxuWWWo1afrFpRZsp26g2FjYjvrgDfSbdmgRwlBzJAgj4YsYs81PlcEvTYvnLL3
	 MFgqnXR/8RLzTH39/Ik6DLdAw0wrS+c78/R6hgV71gghwnCuAgTvN+HnacPVOeraNb
	 akSNU3mhkO/QgLbifjerxBijVYlmK8xphJqtFGXU3Hi2zSYGJMNvXigs38/3UWjlW4
	 JhxEt1FX8GFeLiNmj6fMpQNYHazCfQs4ZQwbb4lxRH3XjM4hLwe7pXioB3/8ZEINda
	 B6qzJBNTD+C1Lkgem/KGOrnjCSROhJVwxKmujWZsLRQg4zROAKEs6e4fUtFgomOkwN
	 H4QPqkV7Dkiqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96255EDEBFB
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260249360.9084.4478185570290158579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287e5a7e2dc1e260872d98c0138d47d4c26408dda90326c0a124c8ffc7bf8ac4
Date: Wed, 04 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772602493
