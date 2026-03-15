Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D042417DE
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773564893; cv=none; b=F3HeXW59Zt0/H2yBS2pTJW2xHuxPdbx1EHTBjwU/MFTWtTNWwy5R47kT3n+N0NmPXOSF2CRFdNtwTM6law4blGqsTYgsF3VmP8DUlNbSZvW88MkuLAw1WUwELq8M6ncF5MpDbEhHczk4hcdDL4HE8FhqgCRbXUPLpdZR82cBmJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773564893; c=relaxed/simple;
	bh=io3uImnTEuJeeeI8JZZ5LoQjdR0FzswWuyutdk7aFIE=;
	h=To:Subject:From:Message-Id:Date; b=PBBcwg0VneLeo6Jyfm2SVzmalEU3VopKlqBM+mCeRvPBP43o6u/aTdc7/BUdiH2NMe9gr3WQuvSajU5eA8BLocDR/tS8eeAhbmo8k2qAX5e3xY2s7KXfFPJWFU0ElcQQtQpKyZvgkjCmXgEuWsg2uX5lVe4vMXk9Je489DdH1hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrE87xsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrE87xsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E738C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773564893;
	bh=io3uImnTEuJeeeI8JZZ5LoQjdR0FzswWuyutdk7aFIE=;
	h=To:Subject:From:Date:From;
	b=KrE87xshn/TY0hK5kScW3mn9s3wu8Gy3cDLtfKcGQGBLg801aigA0Jr6B6bLOZgWL
	 tlK6U5ysHYvb/UhXwQKFleKP49wQVsHgb3YAkLXXnity3Y/1Q+q9kJog/KEQsQApO/
	 Ul61WkvVFWkEKtHv7KZg+sVjU8QKaf3H8t56WzVhjnLfBUuSwp1faUhnnFsbUHXzfu
	 P8BKG8Exi0Z6zjFfmlVgxFuNnRbJ7IKixWB1bDagwP7adaoqgpf0j39jdq+PoLi757
	 wS9tRAHO6k5LJvk/XvM6WNWIWN36JtEy0vPB5WxH22JSkSAbqbAJshVsiZm9wzdGwq
	 Q59E843cNvCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2ED58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356489358.17494.16072478726040410238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b98ddfca0cb03c24b6eaac8e09bd54549a76323830fd05d8084ed3e5b57bed8
Date: Sun, 15 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773564893
