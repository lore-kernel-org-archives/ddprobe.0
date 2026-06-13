Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3EE2EA731
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781329594; cv=none; b=VihWIIA68WOUvD0FtMBOn7O1IyIS7mE+6JeYCZXsS+Lh8Lvc53lUo+C0DZCZcVdOGMM9nBBalbdzTosTC5mG13yKTMrgu7CRijbezZMPlCdoZ79svZPb0qClknqy/fwEuE+QniarnIBcxJzp1pgnORrWj1JjEzc77+ff3Ls00C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781329594; c=relaxed/simple;
	bh=rwUvQS5zMJncjIQWbrw1begTSIm2UeBFHtsU6L0GnAQ=;
	h=To:Subject:From:Message-Id:Date; b=fTzYBU3zQEb4Xn8yzxFb8mqCug/fA2eFzYLLexrex7FEV5Z94ZBBTcuGRr5aZ9YaaHHPMtE2J2xerEhhNOnXf45O2pdAutU2E6GNmkC3Rr+9qCHWxE3ZiJ2p1ctmYad8INPkpoErVchzzze7tqzcCH872QABs42tawgJ1RD0L4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZSRoNYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZSRoNYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B57C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781329593;
	bh=rwUvQS5zMJncjIQWbrw1begTSIm2UeBFHtsU6L0GnAQ=;
	h=To:Subject:From:Date:From;
	b=uZSRoNYYONO0/vjCAOWI8GJmAmr+aTLax9fGBgnfldkOxC2EobLyq0I/6O3rCzynD
	 im8QZJStUeOjIFWh80tXluScT0rYEZBhC7xj3dTjmCjU0srEkgNjocGsDziTIbZaYv
	 eLLpJDrTbo7U5G/JYOtJ7TxFNyapAvFGrrFu07xElPClapN7+P4EvqsRDTOCTJm6bB
	 gWP36t3ax3Qd4rRt0Wp0kNEPRfNeyy/27n7LbDeuJmBQMdMajEWybIqqtYFmylA8mW
	 J2lm+MnRoNPLdaaV9jtemHl59HY+rbOqQOba+UQld3yRZITLKPt7EtTqj/txFyr1ZO
	 qwNqq/d/Al/sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16E8CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132959370.8952.13414480140871937180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ffa7c5b6b12215680a6d465b149840128a741102bd096e052f8c1fd217d1ca
Date: Sat, 13 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781329593
