Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCAE221F2F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763516514; cv=none; b=iIIYqRvLjM7wSi6vg0M9swTusLFmLP8zeKSc2ZqMyMmIloBJ1eqEe7sgtRd/RNVb+fI96ra45kiOBsmgsKlVcluG/OpxGKRtVwj8gHCQQknAw0SSRcw4i2SNupadWGmLHGJKL2LfnyMvW+dniMA7BAQ94J63CdcYXfWn07wr4NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763516514; c=relaxed/simple;
	bh=u4XWRE+fGXZt2qNg+hs6ylfv18UGQcGGJL3AcekZoR8=;
	h=To:Subject:From:Message-Id:Date; b=adyPlMTvawKdyVGnCrKuxBHUVnX33HVErAsO2uud94/ZgMa7L0uOu/mdT2xHBkwdpdKrNmFIp4GV2h8iJQgT8kopNW5bBKoKgwRBAxR+ih6BbN26zL7qgwk3gYURUyIga2juJqA8I7+fEy2wqmneIzGYpG4FdKlTyY2ZPH4utqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUycaVhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUycaVhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7950C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763516513;
	bh=u4XWRE+fGXZt2qNg+hs6ylfv18UGQcGGJL3AcekZoR8=;
	h=To:Subject:From:Date:From;
	b=DUycaVhOKfyk/aYZTlQT4t8dhhfoq8jaOXQsl8ijc+MhyDbesZ97I3ogJUZZxTJRS
	 XZ9udPMWJA1fEmvZtJJrJtdsxZsxTUiLfQ8AGrnUVtyf2Rn+8l+MBDNtMWYMFFd12S
	 5cvAZgqoCfY/g7RpVwwRa3v7irQa6BCK7uhLJFzi62IBgJOTkBcTrO9caJiFvOVE/v
	 B4wbdvjHgKPRVYcne4bfopP6d9ylCOaWMD1XDzEe9Wk4ZdSOwyKLPdUyjBVjb3pnUT
	 diUGQ0lLemTacMrIyXaELvH5pf8UEMJ/Zv1cPhXfirb1rZEWkEkXJX/0r+Kgq7kG6G
	 Vy56+I0UZ73lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CC9CF2566
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351651358.13562.4509941159624559006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe918823b11022c88e3c1b89c615b2728130fc55e55616fc3d18c6ac7f5fdfe
Date: Wed, 19 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763516513
