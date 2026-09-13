Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5195F9463
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789324234; cv=none; b=heY2nBorXduV59QFjJsKs5GwWmQmdgcau0SvIVYuM9R09W6Zuc91dFpmSc2XkU82zbD5u2FzuD1ANxXy0rbcs7x1j3UYP5Y4DFl9cVNRQ/CxF15nyBEV7Itrs8DBBr8mmJotZ0nTkm0PXbv5maZ+wlZwLfvLr9856OQN+QhftnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789324234; c=relaxed/simple;
	bh=RmTm6F9xTj/DDmn5+tfaMypk2zdx/nULR8J6Vj3HzNg=;
	h=To:Subject:From:Message-Id:Date; b=C5ugsQCOMRpJaOjcGjNIDwPQZor32Uec7n6Cew0Q7pC6RLL7XMy3YcZSfOhmUE9xEG2EpoLFNJfrQvXRaPG6OPkUrkaP+1xtDO/4H+5F1h11uea3vNwYMBsBH3Uy7P14PkozlIMkH3ta+iXiuUFVB1UahJLE3Zgd+ApWrpS/xVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3ESXWfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3ESXWfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8564C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789324233;
	bh=RmTm6F9xTj/DDmn5+tfaMypk2zdx/nULR8J6Vj3HzNg=;
	h=To:Subject:From:Date:From;
	b=r3ESXWfKyvMRSj/qtQNCyvSw10hzDoaiM4VOHerWttdy75EThz3QJqirPFn8x+vHS
	 B6lcO3osrPNn7Iptqy5FGXpjnTrQNToBcUYtYQbj/DxGh7Arw8TEGxvr3LQSy3FmcB
	 rqkx7O6fVlIiwSXi732L/rrIQ59vYSGMKy0pyfR75KdNbCUDiICMBt/6pnvF5AbIHs
	 n4cq5Nokj6aYxg+9VTp1HZmee0Rat+c7zGcbbEGUqYIeFID7S06k9bbzhRM5i3B5OX
	 vw9bwAqtv+U8gsgxPPalfg96zJ/UGWtsgsomzqJqwPMwtkKN5bImIsL626iIdcfMhi
	 d7g1JSZFS0oxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C3C88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932423368.24182.5507147342226960456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323747867f80e0671bf81505350a1c3048a5d851f143729a6e91f5434234abdf
Date: Sun, 13 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789324233
