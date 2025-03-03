Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487AD1FFC76
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741001934; cv=none; b=XC/2bS2WJET+l/0QIWVH90Vk8FC1ed+8lLh/niEuFDu61JZpAwgbhpZSK57AgzpDgHRS5zXKkoZvIMICWO4OAizZUADyN56VGwMRm1fRAdjDLCTY47E8qFMfhirXPdLKZAmKgg85eb4UWSPTZ6KmzrMYB5hj5CdHJaHsoeiReBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741001934; c=relaxed/simple;
	bh=xNB9PglylhHnJumgu2YNBC0pW30qAzQFAJ+z8ZVI3X8=;
	h=To:Subject:From:Message-Id:Date; b=gjT/Q0UHPcn2NXbtmA5PGY0xfeFi3QcIuDeIdCBBqDWCNEAFj9nKyw97811GU/c4dy4w/6VY3AOh6d52j2s0pzwe+/Yze0Xo8pTAA4tX7k93ezqWKEUkE/AqxwwmySHyAXgcmnpWpzVoCkk06plbGrAgJoxIkV4AMgNzJoHLYLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBHIHmOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBHIHmOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA11C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741001933;
	bh=xNB9PglylhHnJumgu2YNBC0pW30qAzQFAJ+z8ZVI3X8=;
	h=To:Subject:From:Date:From;
	b=kBHIHmOO95b2rKvYK7rnqwC5iDeLq2fLPfbYc8M5HtZq/w3OYnv3n7zXJzBgfxH3L
	 2l2cbXksP5AY6QnIc+i0+Svj/UKj1IPvqgk7uL1a9uK+Rwko3N4lHFZTqBMbML+8hj
	 kICbaQYcviIqX0Wsma5MMHAzmp6XjfXgXzYWh7DvSClDa0fh18gtQ47bDirDPv9u5q
	 PCAYIrZlfgAvtBtk0lTnrcEHX/0+JBiPI/rq3gTiiPk/m7gnJP9gS8+oqeyNqEHKZ3
	 ilwNYbpa+Noh1Bx3yWbDO8+qzWj8X3KqnsKf1AdYSxPKlHNGuVfmFyJA72eYB4FZJG
	 O/MtIjcTBNBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178AC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100193358.23737.2800217621434661180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d556d5041d7cc836f0d6960f0033ad03b3a59bd80bfd90c8ddec5f22fc3bd75
Date: Mon, 03 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741001933
