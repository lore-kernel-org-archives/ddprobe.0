Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0586331EA5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784351914; cv=none; b=OkjqZPljOGr3TaQbyb4aA0zriDrglVE5YB1XbQi6MzKu/C6OoYA31ro9DZgZXMseN+9a1lJbr5bPFdkYWUQXuhHFSN/GF2LDcBU1XQu7cKtEUMPx+XOyXrC9PEjVjVdn0FG/9ki17X86dUp3glu8xbrhycekRuhvdJORa2d6Zss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784351914; c=relaxed/simple;
	bh=vK0cdC4eq/hN7q4QY7A9QaQPy5DufG0P9tIUx0dUR+I=;
	h=To:Subject:From:Message-Id:Date; b=fRuurni+2Z3yoKZ/Mf0BKrJ6UKrRYYDo8YFaMN+3wf/y2I0ZkySeAkVJhqzAc9irkJ82RgnkBnd8plVmZa6+zWvLwJlZcQpYLHDd2AvmUqhNocwoxdKplEBnb4MhMJwLLY/AoNXY8NhBAQpgg30rQ7mRuq5+wsmAllmSMuYOpE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llyBBsi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llyBBsi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0822C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784351913;
	bh=vK0cdC4eq/hN7q4QY7A9QaQPy5DufG0P9tIUx0dUR+I=;
	h=To:Subject:From:Date:From;
	b=llyBBsi0RRYu9bYKmAMaMIdxtGG8oIZEf1XSEUx3ifGWwc4nOnpOfXUNMqJTTJSL4
	 qXiIafZ2VK+IdI3IkVqxtqtTLHyZ6qqeVTDse1ssVlJEqNfHRiJU/IxzMx0Fvn1l05
	 x0ZQZU8l7VnN3/zippjYZZdBihXVMaGNSKolu+rt7bMNrsA7t8/jNNPeKNYNOmMvet
	 vT/XNjrF3IkpSNIhn91wOf8520GHI7C4MGpzC0rP5Lv4q1f/sfiQNME+C0tHDikJKu
	 lhPS6wozF0exld1Ufgz8wcWIgSlgFeJvlEMOP4nxTxLmOks0CY2T7dT+rbBuMi6jjT
	 LQXl37830HkLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D82C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435191368.1520.7805243839025552062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15dfc19cce930da339ea0f6f45bdb214d6340338395c73285c93e8d5faeb5bd3
Date: Sat, 18 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784351913
