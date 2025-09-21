Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F4F1805E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758465594; cv=none; b=s2WSA3tAfGBqUjXY4KepEJjoFbVQ4idzR4G6dqnP5eNP7zRhAxehWVRBNMUBHPCKvkQ4HdNhdFkkDDkpqc8p1LuSb8Ogj6lFCqpxPnxHbRrJmr1NHfdOaBn4+9bGvoRQuaw1TWTNvy5igPiO3FGZSGnCOrnmbnGEPfRdlxRr5Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758465594; c=relaxed/simple;
	bh=pHWPEaa2uRAPlUlEgH4f8jlpUSNaN9/wHkRoIzs4A2A=;
	h=To:Subject:From:Message-Id:Date; b=nRHDCD9/7dUo/qyq92MRl6f2liyLIe/DCr0XL29tDPYczNti16cs7XWMXIPQ4PcLjvoXz3uofYqkODKvcmqtm18KDCLlsdP8JjRf2YJ8ooruHYIHlzAzjnOIFRmEwlYUBsTaIk0S1s/2lEa1R3hVhfz+TuzwfOr/mFcIGYMZPy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bst3hkEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bst3hkEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A738EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758465593;
	bh=pHWPEaa2uRAPlUlEgH4f8jlpUSNaN9/wHkRoIzs4A2A=;
	h=To:Subject:From:Date:From;
	b=bst3hkEv2RqZO0ATKTHdA+jXuaQxxJK4Qo1dHJEotnmzgioZqaJtTk+ZhIn69Niqm
	 aaqw1hvO8+B6s9ILf7hVt+h7NESPrwD6GmJmP3xwN+qQVzHRKXD3Qv5FiGR1623A7T
	 MGKmm+p8pT2K6smonkA5UwAVJOK/35baPElcagHUwjjKnzlhZjCIwyNXwa0l94VXvE
	 GvGFun95l5LfOCXXK8yIhAFVv0SOKGGGQJZbG0MLrzVA50KAltVfq/t/xGsQ7PSDf6
	 l339sTED3cy22bUyKoaFcLLNjQY3T7bc5h0Nb4RcHsglq1ObgpITSWwXNhutd2R1fk
	 Oaeay8P6pynOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D9CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846559358.2135.12353800520991894426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe558a216ece633d4dc00c7dd2c1ae1daceb330d8ef4ae4f0f37bdb4b2f6652b
Date: Sun, 21 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758465593
