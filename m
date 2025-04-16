Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33038233720
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744843194; cv=none; b=K5aVd/FyO3j9Zm7yCcPm7uu36bB3cdUywTik8vm7oRa/R0BuxeOwy7TOg9KXhXqWlHJfiCyxGO7Zwq8sXKViyVqw1YIUjb3wVo9vgWI9p32hA1kLHYKCt4yE3DCJLztjMhMIkBJGQuHYIjePUg6bHUxDXj92/ZGwuZrA4eKYwww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744843194; c=relaxed/simple;
	bh=+i2K5hC176QbVn9bbGEsFP7iPRo3K4ww745Tcv7Tm1o=;
	h=To:Subject:From:Message-Id:Date; b=gJH/7ppCYOtfS7Kt/nyGxnK1PMyjz/RTJBZFi3eau3+CWITSnAQeZ647R0T/hHP4QUDdful9TBaJ8JXm90W4c4HFRir2WQ0CPo6prOZch00cplVY+dChKGNRWYDsqPc/7dHAkf6U6nS5zoPkj9Es6tml6XhnbiINi5CHilVvUrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUJo2j92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUJo2j92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD57BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744843193;
	bh=+i2K5hC176QbVn9bbGEsFP7iPRo3K4ww745Tcv7Tm1o=;
	h=To:Subject:From:Date:From;
	b=RUJo2j92QfmaDLwAPqUacChX06jj95qO+ASoibMZ0+t3LLvl2QVNsWxvA7S38dHrC
	 iBB+0UWvoooToc9c2KBjgKDconjo/DS6KKzIBDulfrP0dmlF7VJAShSg+BQSBEmk+0
	 f/UmIefLi5W8jC3MtNe5ZRxthFSywrds7w952zgBsReftzjzNlnZZkfM627jZCmFYw
	 TUZPfVGXutuXMwcu6Qi8khJUmdJakc6LbJ1OOb8J25Pt/4uI0BfkRuZvWx1rS4u2Kk
	 bQ9NzlaC5zJuvW38iu0cFAnJ8Mw7nwyNiBYRAllvXibCah76AuQYg9zzt7vgouFurw
	 lSLH7QVtobUTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C15C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484319359.32057.14736995743724404096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f8a49feed4486ac126d9aa9c7b94ad97812a746aed1fd31268c5f8d65256f0
Date: Wed, 16 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744843193
