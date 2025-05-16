Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2359C2CCC1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747412995; cv=none; b=rsg2rNDxcdH9HO5T/HMv5XQ8mFC3e0+wpWMJQ4ezRTZdIBTfoexb8DT+dzgnoOdjI6a+7aTuI6e0EyBxT6gCa/3/NFM4hggvUjVLmqHqxo0NdDZlhiixZAJIcU7LVO/4Rn4dWQ1B3KgdC4p6lOj4mbLT/fhQ5iq1t90E0I6XjxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747412995; c=relaxed/simple;
	bh=fsazyAXBeU7nhViWUwJACKiIUgLIqeDw9N6LxHNFCkE=;
	h=To:Subject:From:Message-Id:Date; b=fow4HrZfPXcO0qBZKVgQLz5ER2jU2j0rQdSM6w15aTw2RezGiebHhHXgsWjWp70rbcFUu9i+cycH/gzQnLFJ7P7Uoqtrrmap/3zoRTHJ48iJWwck4Wf2Ws533D+bplapq+CNH2TqCmYoUoetrlfPOBY0LfikgDhT7F9BPMGwUk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYylu4xD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYylu4xD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747412993;
	bh=fsazyAXBeU7nhViWUwJACKiIUgLIqeDw9N6LxHNFCkE=;
	h=To:Subject:From:Date:From;
	b=GYylu4xDMfHNyBfGm5c3Ey/FKf5SYgCLH9V1+jOEnNterzVC8GpYanaaX3YJ3QRYs
	 FOXSxU2CUkRHBlkr5hyw5NlZneD6HRrswSagpHG8jQufzgO0GkX29NsMz5FxayiJOa
	 LNegpvgmf8MkF7b40enVV2N7OTG/lqn5WEl0KzHOJvzoW8RFLp1/l1IkF6Sb5frBHC
	 6BuHhHyWTrys8GL4hvXIzUqlooqFCG266Tve8jE/mdbofN84H4LRb+H0pMz4aeHjte
	 fGbJ4KJ3FNaUnOITrHL21ZFsmSiMUe8MibXdgLOYU9Xvr1l10FyyJoRIE5vyPBo0uv
	 tQrezacMxbMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BCC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741299358.22819.15028889190400864721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49508105dc752bbf31eb0a42265e355e8ae3f42a87ed1de9ae6686a492fba428
Date: Fri, 16 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747412993
