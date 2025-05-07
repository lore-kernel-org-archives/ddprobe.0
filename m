Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E461B87D5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746615594; cv=none; b=rRluNnVfiNMOVzm+cQoXMOKG7WQ5uGseWbTckT42wUmqNOWshrXgukwbFSxL0JWyT6O630N/a5KBUlE5DMsMOuSkjtV421v+dj86P+fvgG8r5ossDzBQL2jjXnJhi//B/Wqd+Zlobg4J/gyH5OzRaMGqG9Epw42Y3cwHxHpEb6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746615594; c=relaxed/simple;
	bh=PPAydS+Ug0FVbAlulG9YHBWpp8xBCNK4NWxGrZLlvy8=;
	h=To:Subject:From:Message-Id:Date; b=c560b8MhXSOp7cz+DOJxqmwbBCjaDryBo1/goF0K1jdBxvbhkqIsa3rlCbo8L3jSH91XDPXYdw3mrGh2lCwZBQCNVKSt+jSbrPr7rbZdmdEsgdLsRN/vZ+SKFKWO25TRgHoBOQ9ZKex34fc58NnbEexxh9gevoTY5Pwjb+7NfmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0m5Amfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0m5Amfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F963C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746615593;
	bh=PPAydS+Ug0FVbAlulG9YHBWpp8xBCNK4NWxGrZLlvy8=;
	h=To:Subject:From:Date:From;
	b=L0m5AmfdqqPa6Cp4z/BF3jUmvwnCN91ymyn0VV2XdHDdymjvP3caVpJec5YOdgggK
	 lmtsq5whBLDD0CZLw0+plG0hXIdKBCq1vD43Og30naKo9O62Wcg6NUJSuo+Eh7GfPW
	 q6Nla0Gk8c7/JYCAvn+l/5ujN0LcPw5+FRLh5xZ/eLN8oZLyDLZzxKM6An32miPzg6
	 fZHuZCd1pqND+tOiDed2BmPJyChat0/tm7kxIkMKp73G+X0nCVysgRWl8DIXQRnqF0
	 miAdzqtq0HJ0tx0MrVpTrcLKIRow/TZe1Oi70ecZLtQJm+aZEzTeWcdErPYpKVv0Gr
	 ZPbMY0x4ewmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E586C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661559357.14040.772870918045016709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9efb5745a335e1940a11b9ef51103589062a0e20130587db89b9777b944573
Date: Wed, 07 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746615593
