Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDC1C6B2
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724123754; cv=none; b=kIIb5+iaEbNZRDSiFcZuS2ZLRZEqruz1sv/+NDaKqgganfqSST5GkPXqnQFooGK6fY3eaksoDOwTO20DnG8vFCbVVNHgHJy44ivl8cgSBqoPfvilLhwcm5ko7SoUvQuE9dWGTfR4BPaAAjGKQTP3T7jsP4SEXoZC03B5XLLXih4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724123754; c=relaxed/simple;
	bh=BUdf1R7WWmlUwbuyxvscfibh2Y3OhdBKWWT+r2eGazI=;
	h=To:Subject:From:Message-Id:Date; b=GBvEyqUSYJUz4MFwy3ec+WlIPZYJ9lQUs/aA3NuJJtSTrOtZA42MYN5GzVIqtiXLS0eH58mnbFgmQJZtjv9QeFZPRBfo7I4iwgBOUv225T6qYUf/ps7WIByVnIenMsM+bky4wc22d4pFLbdgzBX92ADFEhJPR82eab2xHknaDeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHBeSfKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHBeSfKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2FDC32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724123753;
	bh=BUdf1R7WWmlUwbuyxvscfibh2Y3OhdBKWWT+r2eGazI=;
	h=To:Subject:From:Date:From;
	b=VHBeSfKHYOnhde/+tPiLwavdtqwTv0Zjia1tWgrP68k0gAAB9hRWrnzNlmJaAPx4q
	 A6wsbiKSRMpyeZxT0YAa+mlbt1eZSis+Tj96Cp4loPmHZ0UOa2wXCenwyisNd+SrBJ
	 kKONayjqhwY6W3YSGajVnMFtn7tSpegMVPY9jaPSDVWorOUcKIfs1xHU7GSr3u0/XT
	 9ck38d3ynwk3+6V+RyBkO65BQaDnSlgI01LILZnsMstnXLMOh5wf96uch+F46sdEmW
	 odAJiWiR15nipm/y1eQ1rZdgo7zYGB8kV8yszKXurfh3kAYIVKHxrEWoYuTAe5hgDs
	 Wwuuv0MTTxdCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F6C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412375359.29966.16668974757229932320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1343294c0433435f0949e1809a2dac43686c98199ac1941ee0ceb1a2ee6e9e6
Date: Tue, 20 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724123753
