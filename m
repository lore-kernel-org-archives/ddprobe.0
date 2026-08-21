Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EEE4C77A7
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787322634; cv=none; b=i1mrecL/Yql0aAhJLF1d7dfT4HaZLNfCpfiVc+jYsyKwMs+KwyqBTUXtZ6YDWm1GZzk5CcdHVEQ3c0sUHtHNIpAZnU8XUbDh7FIr2hV9u2rvhkGbe6zw0T7RfP0FlzGVqvzYObOxH4RUQOEW5dfDXgE7SjO8WFEc6C+uGB5Baes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787322634; c=relaxed/simple;
	bh=zUzt5HMqBLKEYOzUeY9we0uAv3zwrMPKH94455YUWmQ=;
	h=To:Subject:From:Message-Id:Date; b=PmdeXn0cdkmkDwKdYW8bfckYO5Fz1vycWw9Pa1n63UF1VHFkJ4rmDRrmVKrQJKxaa6gF4cUSvOnCSIe+Cx0Y8xnDRdm3KU6kOgE99NlSNiRttnAXYsE9EC86Uo/mG/zQjUReQWhUjb4ZEQAv/uqBZtLSal3hZ5au8aB01qCqVWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btSmxSH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btSmxSH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1F3C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787322633;
	bh=zUzt5HMqBLKEYOzUeY9we0uAv3zwrMPKH94455YUWmQ=;
	h=To:Subject:From:Date:From;
	b=btSmxSH1CSH5J9MsuGJSM5V8y/dXk5YVXYG2UgvKDu6u1CQUFfBPJNp5QYySJRFHs
	 DQpkTLrYQJxwsxOB8k9GWSH6kZKvrPxFLe3qOkXdi3UhYPpzmAgNMt4Rue4jDGl9Zj
	 e4ewYIHsdiUknyzFRl6fmCe6IGujTu3dPEsK1Nqcpo414sziyuPRI5w3gnQAB5DTHD
	 LGu1PbCpvCe3w/NqrGSPsMlUXgd+l6dLaba0/hkLutX9hFLA8QVUpfrCseW3VWHsne
	 rNX/+fHDUTSjGfbe+O0N2i9WgiS8RocGod1Ez44nO7G8YktC9I5YhsIB3NQNBEtQzN
	 SRABz0fPDDuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61DEC5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732263371.30399.4887649601301523859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9991b228f2106ce2980b0be81323cf463bd2ee29cae4be8ecab424e6d7decd1c
Date: Fri, 21 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787322633
