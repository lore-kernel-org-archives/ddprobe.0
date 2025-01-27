Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD4B172BD5
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737964554; cv=none; b=K0/6IVL1rGOL6FaGNxodoIO9JDVEs4GjmEtiu067GN0fWEG49kk/aB12Pow4ApPJxcXD/9nU+hr6trmdPrPISJ0AHAd3QER6ZQLdVoLTG5kH24wH7kxkC6i3dyDfwrlY90h9e0Gb/7TomJZlzsQvPbmHQxrnNT8QiKgJvOrNKc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737964554; c=relaxed/simple;
	bh=BSiwKa8xXI66/1fmIvBi64zyGjUWFhowoLkeM1ot5CA=;
	h=To:Subject:From:Message-Id:Date; b=dYFlanbEw9jFxXGVI5awKZHcSmHF7Uoui8lVXn810d2W29/JwLGdg9NxRjeInyb9RyvPuH66BlURmEjOIg9LGD17TguZNOle1jaIMW5AYUj/3VQZFqWgzcoEbzIr2ju0eNw5j1LVOMvmE7XKcXXsCQaJ5o1Jj7xqzvpfZZeQj/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFGKDaC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFGKDaC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6004C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737964553;
	bh=BSiwKa8xXI66/1fmIvBi64zyGjUWFhowoLkeM1ot5CA=;
	h=To:Subject:From:Date:From;
	b=YFGKDaC1CSIYCM7CgPAL4FzK678joE6zgTNqjZUvtDEnt/T2Ymu5/3A0kZ+rlr4Z8
	 NW19J74TlpOk14JnUTojflxe6b6909ksk1LuxP5RAGw2ktxQffXHTY4N8u1HZe5JlP
	 a3TV7bEfO7PdD0WdFuRwCLYGaGFJBJec87beu97ash9rV6rXMVqTZI8EYMT1Y9JNR8
	 tfMUqkH4vdUteI6/tT3S8VHpllS4v/6us6rY7S4qym5d4A1Q8l56mbd+R5MMtVhpNQ
	 IZxNn88ZaBOLJYF0WpQJ3pL7MNaLbj9f6ofpjjLBEszxs6Xs/vpvSXPg5QGbxAHQBx
	 svBcGfb7A2ZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AEC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796455357.25021.15340506972226854971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509784da1580790375c6c934dd76e369075afdf5c9f89c7756c80ce2242a008b
Date: Mon, 27 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737964553
