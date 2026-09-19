Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C42D49620
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789827634; cv=none; b=lZZgSDRXIFZ4zcvAs2FzGELqeP6RpmzPIbQ4RxtxiQf78uQjH1XL3p5dX3/RuuzX0CXTnuQX1qTVWFFXmjcMnyTlPpSlW5RjW1NgHHxUSZModGfeNWcWqb8yt+8Dyk1UdJTCt7WYNrM733qD2JQAGIOQvk/sRlPvd13M8dym8fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789827634; c=relaxed/simple;
	bh=pv46NByyDwBRrPPfpjZYo4MGbZVAuwvm4poy0Di0wxc=;
	h=To:Subject:From:Message-Id:Date; b=Tgg/schwjf9anUYc14rqkNECfimMFBT/obuhTE5GEtmyGgIsrTO9nHLAGcNAuH+UEJ/XsmpE52rxULNIZqNH2tTlGybe6VPi2f4w2x10/f4m4bk439ETYz68MLvBXWB/Pk2APPYieDTrZ94UIm8nA5fg+fN7eqwlMefwbqG/0U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeDhlOMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeDhlOMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4CDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789827633;
	bh=pv46NByyDwBRrPPfpjZYo4MGbZVAuwvm4poy0Di0wxc=;
	h=To:Subject:From:Date:From;
	b=ZeDhlOMm6BNiKL8wWupyzAK9np0MmdqUMlHGCfB6TxstbWC1GjUZUiG/4AwYWYQn0
	 Pxb3UMTJBoaXbBv2GJR2RbEi6hW4Atyfow0OuaETDtumluu9Ai6DeufguyF+aGhLhm
	 j2Ps4ow3W7XMpkp794SpgjQlcIG/BlPyISwsESoZpKt15YCs9wntaUj+ky+PmucI28
	 GndFlEsobQnzxTqM5mfzN+qR/cZGE39lqnAvXV8i8G+uBHgq4XK63/J4KIt4B60B9n
	 bRV7xqAV20VD2rJT5duhGUQp0JkGmN6JxBAoWdIVFrhVf9GT1cmQR1Irt+0tFj/6LB
	 weosHbs6pOvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9352C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982763368.8562.936366160053317002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11a3269aed34fb090be85805dcd973a12808c1ccf7a6f6ac9365f2d463f6e1b
Date: Sat, 19 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789827633
