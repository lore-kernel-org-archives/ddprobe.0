Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2C41917D6
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760801994; cv=none; b=Tu7qMTMEiGSrBW9Egalxuw0Ta9iK39Qitv6ZU8RPT9gUWz1dqFg4LZPRFGu6CXem3Q+OvqXO795m4UqKIuuc5cU153eY9LSMwSo3ePJ4KBvkHaqR/t246Y5evbX6NUP1YxeTbc9IKSIMkFa+oRzGVtb/lpbfwp9JnKcP/mUQGlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760801994; c=relaxed/simple;
	bh=QM4FhgW7yTxTprZEbdDnmjANuTXtRqBVyFHIVyGlB9k=;
	h=To:Subject:From:Message-Id:Date; b=lEMEwsS9rP/u4bV6sjHYedWehN5nhE0o3SmoRN1NsJfJUstQWyV3oPeknRNIB/uli7PLliqfSs7wZOExfPSYHXKLSjcF51UOUTbEOAFDj2me4/z8vsPoKjhXGpvViigVqRgwo2IB6xvsiCyvPCoeI7shNC0UNWBRtYbl6ka4xV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqZZYxnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqZZYxnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D80C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760801993;
	bh=QM4FhgW7yTxTprZEbdDnmjANuTXtRqBVyFHIVyGlB9k=;
	h=To:Subject:From:Date:From;
	b=XqZZYxnH10SYVPNl2xhMYBm0Wm2HIldl04jdjswFlMv1MYlmxEI+8yTl1PQ/6QpXC
	 k3YjMumiY4Q5SGcIrZJvKh9RyvmDwpYOE/W+HoJwxgrBqVy1cfi6G1vC4gyM3xQlL6
	 /Bh3mCcxFAnDkqO9diaDE06IqBsEBHYJIUqiKZvdP1Z4LadCXOfllUsJzVD0BJQ5Hh
	 UWS92jotJaoG8Ex/UInlMoOMyNYZSp2vr40JNPSBTp4TuTgBp0h5eXSwUaCTDpmgA5
	 Gn4SB8gbdH56b2nk3CvQG0MGDIDmXYgZ1QIu16Gnp6S9Tpea/4MZT2Gwf3+gS0Od0L
	 VXuQhQcAH4sGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922EDCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080199358.24843.9901653005684419006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135d4b7c9cfd6a2de7ebc424298873ed2e517e9abb13ec0b0841ff07e32304a3
Date: Sat, 18 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760801993
