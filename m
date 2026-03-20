Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD1F275B03
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774022694; cv=none; b=elCuHli5ELJHufdEW0HQ0fugYUFVPQDsxFjBykHr2bQijCOlUCiqn3n9bA8/NMliClct0KZo3afetePsz+IVmbTmKYXqo0z2LqbcWHNRGVoczwlxDelZ78cFSlyBN7jCErA9yGhhUgAlVxrVrTsyNoJF1odQ5ZgpUOm/XgIJ83U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774022694; c=relaxed/simple;
	bh=+K6K30qp4W5YhhqKQvZy8CKSz724aavyoMnjLWbU8C4=;
	h=To:Subject:From:Message-Id:Date; b=lciyQbBX3TbzGbHHenOQdY9f3zH8GwV6dyrYetCch2nLO07V1bVKj1TBb8zT3ymwWtdE3sR03RuUrcTZlNfJLymUbUYZEje+4d/nYv8qnttjndhvdgEuWgjtSWYNcJVmhFj3+4TulPYQ+HTDcXz5adhV1S/+/Zhi7M0ivKmaTNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC6R1ptM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC6R1ptM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1226C19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774022693;
	bh=+K6K30qp4W5YhhqKQvZy8CKSz724aavyoMnjLWbU8C4=;
	h=To:Subject:From:Date:From;
	b=kC6R1ptME5z6+VtUZ72ACvnAPvgmF8jYMxZWgY+KeFq2AnskrlUxlgyFvZBCWIqU6
	 CE4KOOrkJ+WO4Ogw/PerWUEIE7HdmxtsbX4jFK5tey0NP6OHpyUnb9ehB26tknCW/+
	 1ExAHEqce95zDNcei9ZkNWwRJtn8kcl9C5zxn2F1eG+h7Y1AzGZ7849rkSuOk2jFTu
	 M7vi2Hw9lCIG63Dqmy2CmswGJTwE7K9jAvfCV95DpoLm+qZFY+BmQB4ruArrEC+mPE
	 jTPxpfCH8QHOq5MDbpx3yrXN0Gtp+X2a8SXNxaZ3WtREf21T9GOptDJad8iQeMqUff
	 reGv3SL1eNnCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238C10987A2
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402269357.4662.15955458429813798046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffead1c896f1faadc0889981cc8cbd4550cd90c39d5a356f2176cfe7d7252af0
Date: Fri, 20 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774022693
