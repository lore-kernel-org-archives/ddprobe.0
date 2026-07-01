Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28809425CEB
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782907114; cv=none; b=RqpyttxNCjASTXxWxKW5jN9dEuxHng5GL9Me+RZei3mjhPq0Td6CJx6UHXkR+hwyIs/5toWYG1hb9tWxCG9ZNwuKhK/KYhT51L9UHnxYjEDtXC70YqDTEZ1NzjARRoQ64yU+vdzgX92dtSEeMaeEvOOGFPoRCJ/NBrKQ/9VitvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782907114; c=relaxed/simple;
	bh=nQ3G7umgXY9dlIWDBL/ICHrvRIljQ9JCBGEWCJHD9zc=;
	h=To:Subject:From:Message-Id:Date; b=B/N24PB0IEKRKBdvpFMqNPjzeAQCVb1rWSPV9pz3z2hKLsI1ZUw6mc9Mbl0PrikZafvJN6yLk9L2y2BwZTAR9N5gmgsr63V9Y+7ACZCpO6QgKLql3DorlohYfcaPHE/N8++zdkC6Vy6DhnyNh63aclW3gkN2mVP2yx5yFrPJG4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwRg4w+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwRg4w+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10D7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782907113;
	bh=nQ3G7umgXY9dlIWDBL/ICHrvRIljQ9JCBGEWCJHD9zc=;
	h=To:Subject:From:Date:From;
	b=GwRg4w+iR5MDzC0S9GvH1qpAdN6lMiWdOR92kZgbSHAZ9x3qgbgG743OjnDQfX3on
	 agEWswKnGvxf8vcYYEackJUIigdHFmJlqHiqp1ty/5QBQQjWjh0cB16hqZY5LA691o
	 ZK0iewIPR4swbNxmuCON05AoYwKAeRgeR0RRwOl3S61r52gmK6IWJlBwVihEM/cUQs
	 mtVQX7kMM6X1oikw9YiX5+2u5ZcIK6hY66aUziIhu/L5owe7mxmmQ10FnP43Vnv+X2
	 p45Oo0UpIG/Sbqf5jzSwCzcSTM25rsj8H+UETgBIDtySQC+Lic3qlS1u2luQHpYGiU
	 y4D3+NbDiTvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ECDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290711368.11027.5332123778327733186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea3239470b3177058dd6309ce613bd8e578490d91a5e61638e72f15cfd99aec0
Date: Wed, 01 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782907113
