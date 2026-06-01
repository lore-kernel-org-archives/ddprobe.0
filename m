Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD761E5201
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780280074; cv=none; b=PXPjfZ6D92+TTXK8LcG2xyOL31QiUcgRDB5cUdLbGwtLdN06SUb5vFs6AdWYfnJZeh/MqYIpW1dYJfFgYCcAhcyFJ21NrYtd+369sK2wyqlu6+tCWrgBoRkT9H5JurOYCHk4wrpHh8j6L4RD888/oYw8rVy7a4LBmMl0/U3wcvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780280074; c=relaxed/simple;
	bh=cYYC43xrN4YQHTEUMxmu6BOlD7byJcOJbfnAhCc6amY=;
	h=To:Subject:From:Message-Id:Date; b=miRJjvohH6bjGRM0+O6Ie/8vYQ/SS8vyiR/4Fl1R26lCPt3llpuJXWMtTFsX0WYKlihKUUUidHj0xK99nykxV4wP8GU/CiNbCcaDxA0s5SXXTZ8cSALl4XZmAkEglRsjtpNzbbZA0T3QFfwPkkkIfcho2QSZxdjLiWut5qLlOww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUbvQSJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUbvQSJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C758EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780280073;
	bh=cYYC43xrN4YQHTEUMxmu6BOlD7byJcOJbfnAhCc6amY=;
	h=To:Subject:From:Date:From;
	b=DUbvQSJIa8JR94Yt+j9/v27rfWxX/OsP5cpWnsb47929g8eRW92BKbP8IaUe+MUgt
	 efOw5umvv0BHlDVXZ5cdXJvn9YIRKt1PIVxRo6Zt0TWqW/wqsoOiRF070SKBofc+LI
	 Hp/H65URLMsWcxfeQ+HWRN/gWyT1Ya+Dqj4x55yvc6IuJ6dbSCY3kg1gq99q+03uon
	 Zext09bUcJGlImzCmrVJL69JP5Y4OyUYrtrPbtD6CgiLwJDpEXqWii90Cg7E4sQO6x
	 M8oeaC+bzMfDS3w/dNuSRRYBHGYp7blsGeAW7NYu0XxgmsMoiImdDP4AexqY8UC/nT
	 TP2sZVqQ7hm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE0BCD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028007370.23401.9287587672480352579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce36a759854c4dac47ef815d62dffd3968dfd28590420092958b5a24a0508c0b
Date: Mon, 01 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780280073
