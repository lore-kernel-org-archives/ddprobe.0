Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EDB37BE8B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779139834; cv=none; b=l4NEdqY7tRivoI2agWQRyYBjPqBWN8D3eIX0sns8lq3x7zwN14NDb0V3t86cH6dwGsPabmj1hN19hBJtIodcr/FAkXZPntxy0NLviUiJ5IFHAkGiy9F8+jXMB8dCNzoLkLrvBIbDqXJU55gl1ouTVbxZ2AAAW2qivM9201SYYtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779139834; c=relaxed/simple;
	bh=daH5/GD1ekZYi6UFjExXgAUw9nrYpzzamcqIrOJddSQ=;
	h=To:Subject:From:Message-Id:Date; b=umuwaDIoiS7ZDJESSzL14F37M0yniVPQQTpyd/P67dUQbv3hCSrTJ9/hGi4CykclVQPTfFg7iNN4Tt7bqYQbzwUGyDtztTmOcU+SAAjaeJdCrDjaJdgXodCaMa1ACTDCe6NdWSmJV7cECBiHJoyvcg5vqXB3f7B1Qj9ruR3u/Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKc2CNrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKc2CNrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BA5C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779139833;
	bh=daH5/GD1ekZYi6UFjExXgAUw9nrYpzzamcqIrOJddSQ=;
	h=To:Subject:From:Date:From;
	b=VKc2CNrGlHCf7jFJkwzjTecutALVNDbJQ0JXwIb2FLyko2rH8cV3PGtGsKRljn5dl
	 0AQnDTq2L9n91QE1vu/p0Gzg6tzaeS7U53oWGKAU+5DwH/Rw2YEXWmHdH5icjsdaSI
	 o7QYSNgJVAfUM7btIndnJcZIBxUnxhb3r4Ihbf/SIjoGnsanuqisC4akq6XFjaC0I3
	 DGLUyRI2c+xcr1ZtmxVhgTv1ydQWTgzczZCo04cxKyqSorrcI+7o4HNk2GtXP1XnCS
	 oaDnJdMpsH87yRYmo7ZU/tXIbq3eUyjfYca79aDZU4I8AaKO369a4hHh7EWmN/D727
	 aDY+dV0EzKq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B8ACD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913983371.13700.14918700698301032486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa713697e22f9a262a3f2d3a9e58795f55faa66d3c15ecb60a93f9709fc9dfa8
Date: Mon, 18 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779139833
