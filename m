Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423B718A92F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785542434; cv=none; b=Jv6jxWDrq362wWSN3d9108u3mYyLWeqRycGR/gDkXvVOHrWQ6pq/Kw/gpLylD8D4UBk1oA9bADKe1xQ7KB3mlKqCmOyabx95CXfYVMpcjCJALIBNdPWv7OCdKsGVp+pcWDTaw1oYMSDUqTVrmxuSEn6pphj3jqS1Ongq4bcnuiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785542434; c=relaxed/simple;
	bh=nkwhVtoW4TLuvq4z2c6esC1f2bZs7Mjig54IsIy9pXQ=;
	h=To:Subject:From:Message-Id:Date; b=cM1l+51MjG3WQpRbiFFt0TtRP8HAjz5wuIl/ouv1Bk9Uo+MTbL5ix+OpUteJZQnCLgczBmwumuPY/OcAUVKzRI3mCekIH+xUczXdKTZFiw1LfAqO7XfWgGE+O1rgspkjLoEtgifwG221jjichXMjZ0OcJ30nKz029eZIiC8m6j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKz77bOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKz77bOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF2BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785542433;
	bh=nkwhVtoW4TLuvq4z2c6esC1f2bZs7Mjig54IsIy9pXQ=;
	h=To:Subject:From:Date:From;
	b=KKz77bOpHOswrpeN1oFisNK+YWamjWeyJl5E8QYDhX7Do/ee98F3cYwxT2nNARfgl
	 p+4O8YDNXTPLqPZGC0o6OFU0Nai8af5RlxUWXvrnhhyfc9Op4lhRX4ZHnRI/QPJmgH
	 Kf912N0v4IYAftBWstQdgkylxYjM6+kh3MwGKDuUKOFxHB3+ZbFhdTvfJ0bzCW5VWL
	 QEgTivznQvu4QCFuA1vQbtHOJ5KUC0d6477m9wL18l/ML1A8NHHxq3iUdAqDGUvcOq
	 cNfaoja15sntt+u5KYm77uIp1b42si9b9wq5i0QGi/a6N+jyqlzM8y1RhTvTwFYJUk
	 di7vBbYja/kWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA146C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554243368.25430.14017167663311914949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06bda3eb64193f4e3ee37e798c6e2fd5b050714dfaf6fdd4efedc49717b79ce
Date: Sat, 01 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785542433
