Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E0534BA59
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760039394; cv=none; b=aZa1D2g7ye8Tx4g0K4d0Sw2zX7E4PDHyp9iqzvObTiNJaBIPTOkxvN7hNoKBkf10CDnYbiYEZCqPrpdBHTuquZwowcJqVja+ncfB2v7Kxdn63QdQcmhPxV291FiAOBhDP0PNeG6CZ5Ni4OLu53iVNmbuoj2LNI7UZr9TeWEce04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760039394; c=relaxed/simple;
	bh=Xjzz+LAAasOM6U8IZns4LZVHYLEd7/1iQTkBekijzW8=;
	h=To:Subject:From:Message-Id:Date; b=Z3GkDaRaMdFPzssSEYJbq2quaXNM7nsLu4LzU7J1BPBcxmI4b/2bJTxA6qrQMCc3omgqhQwj4jf1S1QnovcWtYKObtvVotkIO5AEOubj+9+BdNfTyRU0d37WoAijC4WrRdA6W8hxFNrExbbscid3GRy11AUnq+sQ64nJL6tJBK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcAt5jYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcAt5jYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A38C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760039393;
	bh=Xjzz+LAAasOM6U8IZns4LZVHYLEd7/1iQTkBekijzW8=;
	h=To:Subject:From:Date:From;
	b=ZcAt5jYQKqy3zjOcnGYm3l+TiAxB6TOJb3JDZ7oegGytCgHxU/AbAtgzTqdG9NKvn
	 h15MNxUPVrffwxITcFRivGt3bHpds7qaiF/kmBqwF6Letyto7xeLxNn8tCAIWDzLY+
	 oyp+AB/aRXwEqHc0aLd2KgGKLTL1lgyK6/uXYsZAIKKgJH1qs/9kKe5XkIY+Os64qv
	 M+11uajfLdCT36KzuEmzH1P1R4g2cBl3EA9Dgla5RmagSbgRDVeCQHkHgY8dGI/XVR
	 nkPjI2cNBMJwlP70OFdiAEwVdn1z2R7eyRJOlPlwWzbT7i4cFV5/aboOfpzwyp4CT6
	 RGt9MWFN1MnfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067FCCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003939358.19491.7921520581294283797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5efc0e1eb677964d30bf70f7d2b5cc0a3940a9ed57594b5998a622ebe975da
Date: Thu, 09 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760039393
