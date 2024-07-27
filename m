Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254D220B33
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722071754; cv=none; b=dagSDtGFQHXaaOpTDgxorHE1hhtmslBdAo2cjSJJoy8wo0VSZi/qKjh9NNVL35eN2rb4o909nfllCvKqIU6STX2TgHAMTQL28NtXmjDdWh3G1dKr1ahFHcIw7rC2VtGJsXGE55SD6L53OlAFlgIHsjmMgj4qa3LS2Ivz3wn5W7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722071754; c=relaxed/simple;
	bh=vlAkzCXEh4yl1p4M5o6NKspPjNy0OH+Mm5Jnq8GNX7w=;
	h=To:Subject:From:Message-Id:Date; b=Kd0X6/98SWLEcx8K29emhIcBvAHD2IWcTDgqd/05DzC2jooMA3R+Mqzbsdu5DaEo22U6UlS1ud9iUJWqdQ/1Tj61l1lD2+wXJl8/LacKnekscjxe72XPqXs4gCgI7rKD55rwWaV6wjY1amtJ0FFsg9x/QAFTkaMuh1LS7zlCxas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvDkv7nZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvDkv7nZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28BEC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722071753;
	bh=vlAkzCXEh4yl1p4M5o6NKspPjNy0OH+Mm5Jnq8GNX7w=;
	h=To:Subject:From:Date:From;
	b=CvDkv7nZ7CS7XOVmKyMzAT48lQ6PzqyfCiBNbkyTt1W3yOr56gi6Hs4ZAaLF7vho6
	 lfCJd+pHcZbW986kkRq5N/BY2UthRuhds8eXUHkf9tGeXDvZdhkJ/MD8lN4WAMenyX
	 OGt71mFwle4IvyTZnfs6ZL+rEjBl1gWdTPvkfXIgKCrqilu+KSdz0c3FAT+wBD6/3S
	 mKfI3E3+GvcuY2OFxhRugJgNA9L89fRNhxLlL9wMyGm/KhhvpsRdxnjvWgZgKsoVnu
	 wcLj53VMLYnV8ySH+9b/MvzVjqQ1IaCQHl3n4ZbGpdNlPdTZxBmr2bvTx0HjFp9tcY
	 quOVkLC8qSD3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E941C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207175359.12721.8799768675303534674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ef7579aa72ab37b1683062ae0e597e2f9f897b499649398951aea50f04e6c3
Date: Sat, 27 Jul 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722071753
