Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4133A3537CE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776751054; cv=none; b=NuRunRyzWMH7CTSp3vwFDIPnUIMz5tfCuRjOE+BCvfERVdJB7gZWU40FWeIaMjtYU1NTAAQv/0D7d1kS1Z/g5HL6pUMRGWfyvV+6V54/BbUPCOZEwzq7gd19Lt+RjMDGWHK6gxOBF+KtQgJAvx6R+lIo9ucQjzajJOPuSrwkKNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776751054; c=relaxed/simple;
	bh=Nqp4Tf8w/RXpIcBPdgcQKan4XeUtZ6Ot5cXW+SDGGd8=;
	h=To:Subject:From:Message-Id:Date; b=RBZULkmlOF8PZMB0iKnULKgJrhqskk5x0LEiJlbMTh5ZTwCkx2hg0K7UoVGSw4vt7zVDZ3ZLLKgdBCh7Z/7NvQpcmf7wHZqO+6wQgGwuLfBIDv/3B7GkZ2plsSIRMMcXqhJb3NhqRUi+SONR0LORU4yaMx6J6dJ8hh4BIL8gfSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o85sJKVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o85sJKVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B712DC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776751053;
	bh=Nqp4Tf8w/RXpIcBPdgcQKan4XeUtZ6Ot5cXW+SDGGd8=;
	h=To:Subject:From:Date:From;
	b=o85sJKVFbdb+poXwuCAowNp63WdQpfFaWUorsjYej5h7xQlRKaeAAyKTg5hcylgWa
	 NCwOecU1AnWGmom/QXZuKs2v5NWZMQMPDxp3KdmTOq84Auk7VbucpbAxMqaP2ZA9SD
	 HqsET71Ki/zMrbHpWL6hYsy8oahQg/x3Ah3FfL0YnelijC9nTdDcDuPKZLu646kQym
	 8uYnlF6pE4T9nyrUL3BrNNjJ/qQyDqrxZ1iCMNq7aEdMS27LBe6Kck554WtAITzqYh
	 /BTCjxdqzuojplYnQiAj/vNTRYK1Osxfqc+zltqA4NJR0CDc5Q57QuNR4kh1uYWXoq
	 Rxi/2+TF/yPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9225F327A6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675105368.26148.13413161372792753548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262c818cdefef458b7aa436da11ef7fd8c7f71cba6b01a50fd78a3fd4cfe11ff
Date: Tue, 21 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776751053
