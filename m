Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA8EEAD5
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712394497; cv=none; b=CBXUY/DlCTBps3/60oB5KgsnAwe8F76SfhdSdvFgfF946zdiKuQv64cGDKowUJKSd2KW4PwAqCOruJsf2bfttyKnvzoGEUXZLgqWeIFaGQdpd6plHcrF5ETL8v6M+3aOenByeqL1mw/9+rIgAA5FYqJphhJAJrPTML6kBT/W9T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712394497; c=relaxed/simple;
	bh=4UGQ6Amdp6ZqL2p2cA6jdyxnchukdFfkfRjdyb2LE3E=;
	h=To:Subject:From:Message-Id:Date; b=IpZc5ChAIxNSeabDYF1JYGaWMkMnfoyG5J5nxIodUWusnF1ZJbz9wrM2uC3ctHjWJ9PZoJez/H1EvVtFbSaQCn8T9wimKJc981YNK4cGlhLSlGgTeHfQF6L+Ve4kLbYJxS6LtlNMaAe9OBODtpHlmeWqjzc7mFspCXkOLjGh7ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/xrvE96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/xrvE96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECBEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712394496;
	bh=4UGQ6Amdp6ZqL2p2cA6jdyxnchukdFfkfRjdyb2LE3E=;
	h=To:Subject:From:Date:From;
	b=E/xrvE967c9CnBJ6CopZx8ajxONpRoZpy7P9bhn+gndxwuLD5PClue26s56Yk1KjD
	 jTh+0m1TQgBbpVViR9lb2MUkydpAm62qTaFMoSqkvQS1NO9y7/zM98XzMoosM95uGY
	 3Ugu0a1RDetg709Cth2d4D733mW0bmvQwmwaN/GrYDTUXg2KGGi3rsvYfLJIoGUa2d
	 eubOXMatu1w8XsuukkyAAM/Ua6333vGDtWCbM2KYM+8TzD9NAp8MQ+5iVBDsNdjfUY
	 LCl4LL+o4x6eadahYRpp1gNyTckhl12vQNi0Unqda5xl9c2QpzhHh3o+F2tdYnFT4q
	 V7XA+2SLz8JhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6759CC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239449640.4842.4124901484478006494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddd5b0760d7f092c40dbbcebba3fbe6fa5ebe3f526a835542053ee9c29c3f04
Date: Sat, 06 Apr 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712394496
