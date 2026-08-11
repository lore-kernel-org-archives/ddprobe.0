Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F7D319617
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786415434; cv=none; b=MId6gMkbi4d4mwhrqFVzOLN9j6C1bpvx4cDR6zrwpIHmF8e7wmqyQ9ChzdDyK26uDv9l18JuD/bUvHeHcpAywlTyK9A3M337XVk0anv0U+4SvD3lVlNj5iMSvZKRCkFoXwXgp6Jy95FV/Vb7PXoUag+V4lEUb0HKe/b7XJ4yPro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786415434; c=relaxed/simple;
	bh=zYgl8lAW0Iab+UyPE/Ia5yOyd2ayodz67hi4N8lokno=;
	h=To:Subject:From:Message-Id:Date; b=uanxLJqe4lhqs4A8DtV0pNU/nRN+8GcF7WU5sRQ0PxbKHXmfjar+hs5zg84GTUwXf3TL4kA2jF+NwNdmLm2X4s1wJD6vINpR4Ag8mvRV35GNHiNH5nRSQU63689nhNbsjIUt8L/AScN9CcrTRItJiNueSnZSzGHroAOtBnGyGds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+S7yJPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+S7yJPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD055C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786415433;
	bh=zYgl8lAW0Iab+UyPE/Ia5yOyd2ayodz67hi4N8lokno=;
	h=To:Subject:From:Date:From;
	b=o+S7yJPr1LDL8OoNIbRpLMgyCbg2KzQev2Jv3Xm6+WTBN3K6w+1g8X9VO/CVweT+x
	 bXJEKj+zA2SKu0bfqfdQBV4kY3yhA13dRgU0LWLtMZ9Jo2ud409jSyurzZblj68aNa
	 hqaRlOPY/QqzuXqtChMIQUMkKWieRNghdxIb6Yb07v8UG70xNkqmz5ObpLDU3chzDX
	 /vCkMexRRr7dY8ylOMNXBPkowCiPg9kRftgbdEHwleh6fax6bvAoIb1j8NaE6x8UKe
	 6DKMTLRKLg3Jeo6c5AerNgtdPHaY6vOS/IiWJeCIETuYFSzAkTZQiC2RkkxPHI+5+S
	 S9BNp63yIxDWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB66EC5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641543368.26392.10329432161286350028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ada2df91555f3ed34b368073d688a3c25efa65cdb157dfe3caa312caacd0fc
Date: Tue, 11 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786415433
