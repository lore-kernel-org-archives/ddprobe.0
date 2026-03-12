Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104E63FF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773356094; cv=none; b=HPHihnCNM3kqRWtGkjfkHrC7YDXrSBudxz4jgqGwM6QpJuxaNOW1LRDURqbVt/s7jST1mU/04prcdsDHMSBEHtM3gM58BpkAgvk8UnraD3p1p6gie+AV1hi96NpLEONyaWg5tiUxg5dqeiLHkw/+JDeU44V5acOGtpiPKjVShBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773356094; c=relaxed/simple;
	bh=5DhhtAcdUUX3KaKwqYtGVfG8oCNPQUJPk72yac2GoU0=;
	h=To:Subject:From:Message-Id:Date; b=Fe5UCfHg/ErO8ucO870lOyEQpm43zfYeAQzQW5KpBs+UvjgyzlqoD/dhvlsea/KZ95ub89qffc9sAcoo3ZuDw0I+5IP1lNHFz8CWfLU9qxLs617ZdRWvJerSksWHleKSkj9gy+8dbHvxpt1/EI5cJKapbdPWVdyarib7WrHZ12k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phVY70q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phVY70q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23A3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773356093;
	bh=5DhhtAcdUUX3KaKwqYtGVfG8oCNPQUJPk72yac2GoU0=;
	h=To:Subject:From:Date:From;
	b=phVY70q12AxwswQugNQo2ePeKAJtqbZUrVGLqPc0IuMmZGD4TEtf4tQcwTHPM5RMp
	 ssvqCQSdPWW/5yrULUVZozziJMH2eOq8+vQGQLUvXhTzgxWBVNzGwE2m7Awse+2p4H
	 /KxwfqXZaBCeIa+ZiF9/UFvAJZLXwgi43IRz9ojRq97UKnKEKH+/+jYpleQquXDkSN
	 cCeReVoQxIM9/ruqgSWuI74/j6Vp3W10GAWw50OJ06aFCise8vahfGWpBdeJzg928V
	 T2XhzhNfqS3Fd+dYdqRSTum51romW+7f1m/ClBjvuBz9RD2uDKMBKikP5VV/jCQKtc
	 HfZqd8SFiNmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B0106ACF3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335609358.26307.15041271359168907065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822cebb233759395bbdd4418b825992d8626376176696b4eab92dbda893e3bdf
Date: Thu, 12 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773356093
