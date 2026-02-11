Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B9F34EF0A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770797094; cv=none; b=DqMI9cIJaPJs3KUM+yxPn/oxcD6GFQ7Qc8ARuoN85bF9A7qXq3zHjCScdisl9YAZ7nV+g9iqPxAWxNja1/ioUyocrSSZgxXUe5m937QpLQy2KbMgk6LnrMV5UJ1/z9LQ4XvbbZktE9ns/I081SYSb1v1xdjbGig5lN6Gj6HE3xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770797094; c=relaxed/simple;
	bh=HEl5wOGTy21phj2glijkFu/bvl5CACgPT0IQRXGZ42A=;
	h=To:Subject:From:Message-Id:Date; b=gemzhW2ruaZGAOWRQSYA8WoZ03aI1VnmDJ72+cd8rsGnX0W519FFRTX4y+UJD3QtOstt/WTJFTfHYUoOoOhS+MukHI0/jLslm0ncyhMVlFthIHGV1gI/ROVdxPWX4oqBvb+GXNjl2ksqymkg6JPN1sIU/co7/ivt6fADbhofUKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oR7DFl8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oR7DFl8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC0AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770797093;
	bh=HEl5wOGTy21phj2glijkFu/bvl5CACgPT0IQRXGZ42A=;
	h=To:Subject:From:Date:From;
	b=oR7DFl8OoEG0irujgM0n4Clh58pnkfFFjTqHzIplJ15n17386mXtMZkApacuYEjTX
	 sxMmUWyQljezoiQrkxGjAZ+lc9q0xjw8q+khQVEK2Z7/8oZtJ0nhv99DkkYlhnIxrD
	 3IZGXniBx39lIu0HqzpAsr0rzFa8pgh0IaWmzdLDVErmNCW/2q0ZHvHwnq68fxR/gc
	 9XmlztHw6Su7Yhz4P6dmQZ//kM+6YQqeKHCBXmXBZZTXFnIm+Nxq/BeU5kpEFOJG3Z
	 YKbTd7QIDtdNNDw2n8P7eKOZargl6GJO4KQ4WbwWEG0/9uFjeBIOtq3cyip5Rhds/Z
	 /QTTO4JXfCeZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3A4EB597B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079709370.8576.4804581175278841042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82f769d635cb087a01167a65bda9ad7f87c1345393144fa9b9313226d80c257
Date: Wed, 11 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770797093
