Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57097381AA
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716519203; cv=none; b=NrG1NMYaN9LVJtRQWnVU2fI78BQxyPRt5lIusz85rdxibL8I64YzFzIEOIDewwmzNUVw8Ws1kXJmbYWe7J4R9eiElDbCC+ZWkjkx8RnqNjI9Hza3y5jvP1xzpjuQSAtnPXWdCyy3puPL8YTw4BidqQ4A8vVoNRdo3wpWZmlnBgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716519203; c=relaxed/simple;
	bh=+OnIWd/TXKw3Mgo5YfumSJOLY/6iTHDddWzNXjDMHfs=;
	h=To:Subject:From:Message-Id:Date; b=mpGESgk1zjJp1iXnZVWtCYLdDmW7wxx9VuozvMb+AsGVe94xtomVkdU+kv0/bYB1Ty0SuZafKupSst4iC30PYzPe5u/3xcoJ+m0A6aOsJi4an+J0RY6FzrXacqpLwxGJdvG1rB6XGnTTeN5fbfyPYGP3j02v3vIyReVfouUQNts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3cRGM2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3cRGM2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6E3C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716519202;
	bh=+OnIWd/TXKw3Mgo5YfumSJOLY/6iTHDddWzNXjDMHfs=;
	h=To:Subject:From:Date:From;
	b=H3cRGM2U9+MbYnJuxgulBKJE/nwyeUtTYMZU5cZW77JIbmWYsIWH8NhK8EW4NQYhs
	 C/Mt/7ItqV+YNrYQIpOKUMTaKTcj9wcx7URmxkO7AL08Q7GAr8FgtIuhL/9u4aRWQx
	 UFSDgWMkxuhdqyIMZ7zPIT4mzk3kBElkpTmza8KjZ+7GsItjWpxtoiUJtygB6xsiBC
	 nhwMbwWh5+3Sp8E2WF/RNKuvP1+e5W7Rm812YLgwcB+8TC0jxzujtmJXpJ1TLo3qky
	 SiTAoP8VYfuR+ROzE+HYQag12KHhNnSRvS+uK9E3sWE5BFllUQGn3dc0MAvtX0XAMb
	 DwCEEWEJG0YNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8887C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 02:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651920281.32319.11757865310784806358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957030a44e28c3914270ceae101fb3c753a846d5608c7f19bdd5a0ce02026e93
Date: Fri, 24 May 2024 02:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716519202
