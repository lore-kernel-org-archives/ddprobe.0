Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6C2C11C4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787956234; cv=none; b=BZkG1kSzgxPpbhzylKko8+b34fSZlZtwlm9s7UNanLQrMgWv1gDQ6PUXBbqI4s6HXPFtY5aCc4hgQyhF7R5+B4s+aOiWy16L5CMv8bCA6dv9WTLpOlbzedCL0vNEb45t2Rp4CMJkHiRD+6qlJ+YUzBq8cWiTPZD2Jv6Bfp4kzFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787956234; c=relaxed/simple;
	bh=epQl/2ElFajzB60boA0vRkicCvH/ZDv+TJkVBEWjMKg=;
	h=To:Subject:From:Message-Id:Date; b=eX0uBqvHNQISYdmHHfD9C38hlpZhIKEJ5rq1BR5uLsrQSry9K1a1mXVQ3/JJ8xjz8RuXv8rsVTCkCdku54cmX2eGtWxy+atGg8HCylDPTAe7JjBQwApUKNz2bgsXUKWJEQBlTSBjG81Wb6bKOGeXxIET5+hXvdIF/62P2x87xag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbqgyEQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbqgyEQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A59C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787956233;
	bh=epQl/2ElFajzB60boA0vRkicCvH/ZDv+TJkVBEWjMKg=;
	h=To:Subject:From:Date:From;
	b=DbqgyEQVypzparUBfuWf3EbMMCmyc39lj63gOi5pSD9YBhK5JqVQpUiMUUQ7Ljgdz
	 8fo9AQXLQkxYTUDVHFZ5LiBv9zI7JOcs8uiSw0PZ1A59x/UcI9UAG8vtRb3JrJuNBf
	 OdhRkQrINHjQHZ7fZX8aD2ZdPbhb5UZkW/nAyHqukRLrBH6HUoDGrj4ZBVi7JCW+H7
	 Hfg/WvT3bdCyIAr8VvPHB7wHldCnTrJBewsL2BUVPhvtQ2/DMhvpNE6JDIyzgQISwK
	 4VfA9N3ZvF9nqZbdAeoeuFuh8/e/wb6I47uVPB2nsb7Kko8bf2xwlU1boQG2frN5X0
	 QQdR9Fb/So9fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBC5C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795623368.12035.2156345542673131011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bde7410e4ca1edd4d6da5b297c9155267128c47e5a779a676b56d9ef83e4426
Date: Fri, 28 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787956233
