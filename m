Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CA78F2F
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742717394; cv=none; b=NjeidhWbxvSRX07vC18DMbyZcR6cvAZZGFjvnuZPmuJAJv/N1kDN7ko6IYOH2X4tHoNz4Offz0Qp6YcLu/O6pyTXJpppolgT9CBhM3cQ5QwPgAH/VfUnZfl8JhFPZkxCVlQ9iFQk+zxVNGwCQbxFUxsQT3BcjmDS3Fn4x0qJn6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742717394; c=relaxed/simple;
	bh=2q/EvSzpbg692ZP3Vu/43jF5/TVgabl8epFgnZL1fh4=;
	h=To:Subject:From:Message-Id:Date; b=QSmFSWXfwkK0L3a31JAoQlvfQvxTCJDSSWS9JerkJSJYVjijd1VrrKztiqwajnmiQVhUfM7j08ZncqoKrmvsRqYdVHcvEaytZJPRBhc6LgeNmCbr1qKksOhocNnfqvzJAjL+KPxJbkrlnjX/POHk8zApk+NfytO7CriaOYvnh40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0T8dsSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0T8dsSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B059EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742717393;
	bh=2q/EvSzpbg692ZP3Vu/43jF5/TVgabl8epFgnZL1fh4=;
	h=To:Subject:From:Date:From;
	b=d0T8dsSfcxOk/NkNEt5p86HMbSWXcP1PSO9xVxHCiplyo7bsaK+sL8jp+R/WCsvSv
	 Ujjacu6mwEcOB9YJ1GwEHffNmeUO5U3dmqNDwgC7zkINYz7DY+Kz0DQXaFrhOlY1pm
	 kxBXg/JfrYUjazJAkE24SvgTrNyqNEduFiheBqhYTUCR0BcQ8TxXjsk+eHtorkOkYL
	 vnT10E4qWgPCn4jsgPOHicCFaaqp0GRvlG91DStZzHl5G7S7pK3oZw7TGVP2zYXbbk
	 Q2efvS2ZIGdjd7PQpXGObfg2FIlb8yMjnL5h9Z6wjiOR1D98LXtckvgnRPJ7F1T3i8
	 Q6r4Gum/u9y/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95600C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271739358.23639.5491743880562959238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8fcd0a48afbd1718bca5ca9a9199134f78a8a6120f9569dcd1c1da7735fd89
Date: Sun, 23 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742717393
