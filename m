Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531BC3AFD0B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780757674; cv=none; b=pmGMGZsxTa9A15ADgw+v9tO+89is8fplV8/ciBRriZOZ3t5Z6KjT12nKwCESiHsMJlMEfFIddV/B3pua2rKH5/EC1EEWrsqSpZNWOwJmEpkLg1FXfKSEmmQhPubUxdCUsV7Q8r/n4rh6ZZVWupal2z29rnG21TJ3OyclTh8C/JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780757674; c=relaxed/simple;
	bh=BQgitmSoFss2/xkwGEpQggyeqqIwi3tiUuHVk8NP7/Y=;
	h=To:Subject:From:Message-Id:Date; b=lAe7F6TrNHhay6VpKTa8LLrPStJSCiAGeqJmU9GhI2x9kdBouZewbT1jWuunemtz1/lJqtaoMEZY+rdgk4lOWswQ2+UUtwNZWkEmhOg3cY0KyafW5SeCWEJErCFaVsg/knkb7L44RRmO0tEVDrJcaoKAXDBbh6SFqJVWQPPaNCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhtV11ed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhtV11ed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8856C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780757673;
	bh=BQgitmSoFss2/xkwGEpQggyeqqIwi3tiUuHVk8NP7/Y=;
	h=To:Subject:From:Date:From;
	b=VhtV11edtFbtMyGCuXsfKRgVDytpMM3AE0DzOd6WblCZh90PKKsK+Ucu5nDWwzx0B
	 H7c1H1hWP6BGXgdu7GU4mZfiTLs49U0MJdI3m3yp/ZZI7woHcOh9Mn7lPicVFnSd3r
	 FrigID/oG57crvZcOL6+q44c86fUJ77hnh2IHeoO4+kHz4If/X4DKVMWmftq17LM8O
	 iYHlZ5FZ7uwfTWy/kTxwyRz6Hoi+GdR7iCUJwUH1A5kPxtB7jdla9cQB+0T9R0QjE5
	 5ddi3POBOIgKrE8pmHt7YZ1fFPKxor0VqNEMbvPKrKY5aTDDRy9hx3zoZMcPODgSl9
	 794MGbcPENSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFCACD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075767368.15780.16418777892764904805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8094f99fb97c0f7b8b8924b8cee120db7fc522f06232423aeb0a155cdfd832ca
Date: Sat, 06 Jun 2026 14:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780757673
