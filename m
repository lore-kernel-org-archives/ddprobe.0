Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E75A1E531
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743599394; cv=none; b=q4o7yrlyk1PFeGqjVvvQw5u+AMwGTNPMPtLe5eDig5vhYGT1Nen79cdmYVVoQfXxkPLvHM3jjg6ZnT1vWVkb913ZUzz0rUIE+tb1oVNLEicdDIWpLTLQbdxqldppD6CGKWSLKN+zP6uUibcf4MRZqfl81YCWhn/+D2fIcN1OXZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743599394; c=relaxed/simple;
	bh=BYVNJ7NFB4SjG7KsBrIHJFGTIj0rvCLIdqWTpLESMRk=;
	h=To:Subject:From:Message-Id:Date; b=eoXmP1YJdWItYQiEFZUGZ9zsAedc8kHCYdpotCc+2rFO5BzfFD3AnsUfK5z2hxJkTvsOpcnpghGWcwiXcr0kB6YziP4HhUhIgYWZlGC2E0ThMR9qZHHGRX6czRznMRnjsuXFkDtuYnYvsnzYC5ZibaOWf3iVB1Qobxwzh3vKilo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/Gjh77L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/Gjh77L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD83EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743599393;
	bh=BYVNJ7NFB4SjG7KsBrIHJFGTIj0rvCLIdqWTpLESMRk=;
	h=To:Subject:From:Date:From;
	b=f/Gjh77LDj4Mm2DAY+pFaZnH+399jB9VYCCjOgW/WZ/mHvP9TGDFchWt6sG1hzePG
	 TMqKUnCVgQBID8XXGYyluFTvEht6WOpsGO1BgIivdObuyQYXuC55R5E6fGtf6xS0iE
	 Y69NRYOP5ZaNAg+pLwiYqskKd3KtVtKl5+jh5g8yibzbU0EGfa1KaleSunxlRHkMkp
	 UGOtevEH5DOcietVJEmZIPR33kOZ9L/PUh27zUgloSbE43r6BWwNv6UV7eoeo7EUpy
	 JdlfuOloya4JGTkiyday2C5g4BvxkR/xuXwTn1jsDcbP84qCe+8Vqmf5O7JXJjHHrb
	 QIt6uKjn5axdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D6EC36017
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359939361.1392.15173657508422369151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcffba9c081b15ad3d50a7f5aa48a44e42b9e641d84eb3b4ae45b2dd67a58e3
Date: Wed, 02 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743599393
