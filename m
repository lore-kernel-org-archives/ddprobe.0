Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42785166F1A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738052154; cv=none; b=C6VEaWIGRQVQjPDD4SURJcTGT8yqc+1RC8nu6dppKt0ocE5fBXB5U6UeSLLO8VqhKJQ6fSx38QqWiTaThBR6fEOk6Eq1eY6e4PxgqrrTaStkoNSepmYLAx3Gp4QbLwHzEosczHHmQmpd98HWgQkjBJL18aywp8ylqRFOn5oSF7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738052154; c=relaxed/simple;
	bh=T+DVlqFprDvk/ZkI19GI8itC7seiegjR2uhoj5RqEEM=;
	h=To:Subject:From:Message-Id:Date; b=I3tIS7EIoKPKpTDgUrKu7tspxOQPKCyJj8hf/AJt8E4Pf3jtpljIJRVjp0e3yBQLpqLnBej18MRx7rtRvSt+cR2MuoiEonccQ++X6Pao3em6Ry07eUhH9CRm493NqivE41SLuP3a43iN44lrfh1Ir1VRfelWgtMMwdy590VKid8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKxTclmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKxTclmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF29C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738052153;
	bh=T+DVlqFprDvk/ZkI19GI8itC7seiegjR2uhoj5RqEEM=;
	h=To:Subject:From:Date:From;
	b=BKxTclmRhcJAO4GIztqbjdz0rwairJp6uLNlY+QWIaLBFAibc2ws2NRQaY53GVaOM
	 jgZZw4TVZZoFqNB1EZvFSnXiBV5gesutxyqMDhjkjy4sQDCz5XwfIL3KwtWKuoHrcb
	 AX026xdKhLcwnm3d9sHLlE3qJ2GnJyv9k+oLiUNbKrSorBXGV+C4XQYMtbG87PueGk
	 D605rGe5aJJ02xkiKmhxW1dAWXb9JL7611l/osLG/DUwBieMg5RgZTPtB9v9Nn+twj
	 PIBg1Xy5GQSn8DAn+O5kar5/dFYwK+FW+agFjS+zaiinqXKgN6kh830EV/j/Bf3HpM
	 ggwOguSDkZOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A8FC02190
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805215360.20416.17944799518441161716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049b0594b611c34c1f697e8c74774c6ae164f1011d7585f9c0a39ffd3fc383db
Date: Tue, 28 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738052153
