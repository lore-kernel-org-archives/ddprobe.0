Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08B2747B
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728836154; cv=none; b=rsZr/zMsFjnYpi7t4RyvYzlwpmZCvcDy5iELpCuJ9Pk+htCUBuCIGUa+Qd2PMBS0PBvkN/z0HpKJJsx9iNLO0w6rDcIRm6PmTUyvqfLGEzZsWyKSyDk9sueyrgKAPjJVpfylkSZyHH23Ckglb/0+8T9uH7iUZFQ/M3+K9X/6Cng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728836154; c=relaxed/simple;
	bh=eF13sW3qoZQ8itPsmzqMkfNUW4aNDFHdOUtAZEJH2lI=;
	h=To:Subject:From:Message-Id:Date; b=nEXA2KkQ0njhuCA3fGP5QPuGje4mGq89fy6U8u33r4FW5C/LSQCqD22XIYDNZLV9lN3Uq1FP5TNHbK28I8bPz4pwA2kSGTNZSq7+l2hjETzlb5iwDyiN2rNutzcfcIBn7wOqrhe4XLTaQYedyXzK5a3uZC7wKdR+os4gT/ai+2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXclvgq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXclvgq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4AEC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728836153;
	bh=eF13sW3qoZQ8itPsmzqMkfNUW4aNDFHdOUtAZEJH2lI=;
	h=To:Subject:From:Date:From;
	b=qXclvgq46pGc1vgMZBiSPsgIa+ddTm1veeGOESw42ELnrPngPj0s9l/nkxvTUhMO4
	 unEU0Ancjjog7nh9BBCDMHLR+ow9IM88XL5RsY6fehCgCYVm3zL4UgC7lKO2WAQ077
	 C8MPyPSVF2Mjb2i8ZnD29b+lXdAvcJ0//oP5MI5rszfEmv4AERrYsO7jgRQMOrbd9w
	 zoPJnxSbC+kbOKQYnzp6bm9kr4m/RvM+bfc4IT+A9JJcTlq/4JFa2G/md3MEESXZtU
	 PhkOxRX8pg0qcE+TSw2VtZnVczaSuW1tJeZ7uOAkK3Mwch8sFsh6+sAip7HwDtABv5
	 IEbwedUwVJWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB99CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883615362.17924.14784058148889933630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9bbec7e5a6e8bf527a7369295ac57e98b16e85a675aaf26f976a5a098b6bfc
Date: Sun, 13 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728836153
