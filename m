Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4E26E711
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758309594; cv=none; b=lJYuTVwY8VOpkIJFrzu670hQjeBuaisC+sIQBs1R/Pc27n9ZCu090CaDZFpCsE6q9EqaYGvv1u6t4Ez90MoYUzt32cekzd+BJCzaQ9rWCwtY9BFIZNiS7hMTdQQYju4Ne3q4UnQ9Xk37po1uO8+/LRUFewK5oOAbcpjBD6JfTRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758309594; c=relaxed/simple;
	bh=LN8VqnBDeJYlsF/FNBw4PECDLRtR0u26EhCInQY+6B8=;
	h=To:Subject:From:Message-Id:Date; b=HEzFzncmlHO4zGO+mWJBL9tfh4aJuAjq4EpVc+y00ZzAYWPEephqDa5+KQaIae7JMbmqun2csqSXXvNA2NebHvBQVZ7fokbCRUKl7m5kRqrxmMOem1MB/xs0LEnE/f3gpwjVdXUfR2uJQUQUQrg/k+8o8TV+W5F0kLgnlioB0rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmSVhX+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmSVhX+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3615C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758309593;
	bh=LN8VqnBDeJYlsF/FNBw4PECDLRtR0u26EhCInQY+6B8=;
	h=To:Subject:From:Date:From;
	b=rmSVhX+MCXgMmL0MA9C2cXLIyB+nG49O15FGtUfRquMbo6MTRUM5vFRIHKLE7qnEL
	 1pA1j+g1nOdGHKPd8BqsDKnwZa22eX3gcgYPxQyoHV59lqy3AqNwmw9Q7ePx72Y3qN
	 YEBS2viJ+Z2gcMBRNRawwI/XFivfZufoYEAPRLoUBqp+WXQD/epUuqCgzRyx+L2H9t
	 bcRQ2HHl9lg2LBvtQAbumGYCgLnShV6xOSw96EYh11uBBUtHJc+EpFYOFIM5V3GOtt
	 pKdHU64On+ZtUNGBLblkUkhVyJ7rGcA648jW15vz0nJ+xrwa1vG0/z5nczBfY/ghFo
	 cem1csfwbuMmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F13CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830959359.23467.10736862935193170458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797f431a48a0a1073be44dc8d4838af580724a03cc837084a988e8aea7e3ffd4
Date: Fri, 19 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758309593
