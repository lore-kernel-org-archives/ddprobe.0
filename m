Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582F51BBBD5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719953723; cv=none; b=YWk/ZbEhDsUgdfpGKKDqrOxl4NxZExfGzk14Y4iAw61eYJEGUTu3j6J0Eyo4lQ05fwkuMdUy/kYbNbS+eS4hbtcEYePfmYZPLIKeOoSna4moROlc+Ed6HOt5xj5wb6xI/JXYJDYVgJkz48VVaOp5eVzpScw+vmr57s5TvmN8beA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719953723; c=relaxed/simple;
	bh=MtFc3l7zmkJkgjsWopAT4ZqQ0yssjqGiIVU4JgIh93U=;
	h=To:Subject:From:Message-Id:Date; b=F3QjOBco+FxJtPD1C3ssKbtT3/Q96w1jwm7HVDup/SKRUPjRmZiWp8uJv3GAuryBehML/z20gGONzxbBHpQOVADTER+6qZzYVnc2mzNSV3Vv+SLQxZRwntc5lR8r1b2KOTen8461MGTXuAFCmaJYdkqv/DbeyadK3B2neo52Hf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk7693Hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk7693Hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1EFC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719953722;
	bh=MtFc3l7zmkJkgjsWopAT4ZqQ0yssjqGiIVU4JgIh93U=;
	h=To:Subject:From:Date:From;
	b=dk7693Hrsm/yqEGOd5SgPeSQN+aW8UC4KVAVxAlPDBbtU95dUgSyolDqxyhktEZmN
	 olM19jwvdlq8er0cCj7VdC9S7i04J1zTwf2AMHWE1sLZvzjrz3me2YpriCHarLTTNz
	 ldPmQcfujUZkhKxpfORrHbMsApCakzlZ7LFERaqBaUWHVEjIv3or/7N/85BVDwKsBX
	 ni44U1jxghm+iE/IQ4s7j5d4KGi3wmkXE7M7pRXtMYz8m/gqb5H+bf7bcaB0Z2JCYG
	 WdjJ6eA71ue1S50pl3vfmqWYkvYZHen6W0SpXTNKR+HWxIrpR9Obmd669aC/ti5GSf
	 R2i3wm0yHk4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B44C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995372278.32142.2790856713776661212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d24f919ae78b193026283de60f188a11b19df51a15fc42630c21b6e4eaa0e7b
Date: Tue, 02 Jul 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719953722
