Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EA914B97E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736871354; cv=none; b=mSbqiECTLOFnBVh9p1AypKz50hlVpnspkggg658oWn+2yNTO1Rbflh8Fd/dc7LqN2kbGQR5xZgMHGjGtHT2y0p3BevIljxwXc6c4IZA0EXW53+cWM/Q/4Ze3toQm3lb8N7Ie3AJ4vF4+H1j9pA1BakLHdZekmObvmqyifJ53Nj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736871354; c=relaxed/simple;
	bh=jY6NaUc1W+AjnW1oH7d4h39LOhLqE5wOnhlrdG/NF/0=;
	h=To:Subject:From:Message-Id:Date; b=DQpQ3R9xEK9L3RoOmY0YpoOScJbJwxS87Py6zj+56MBCrtm3CY7Uo0XrMuCcAhHclGoMhdpfHZuQv2NW2xYOI3i6OutEHlXMZgU4isnw0oztki1dyaavf3Z1zqnw/1Whf/9iiHYYLoOnoiyswE8utcBI0d37U5fDZoRzO+fmuVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abCEM4VQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abCEM4VQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2652C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736871353;
	bh=jY6NaUc1W+AjnW1oH7d4h39LOhLqE5wOnhlrdG/NF/0=;
	h=To:Subject:From:Date:From;
	b=abCEM4VQqGwtwlRBSzx0OlC4NA10QHv/ZI1X2fmTYLXo+IyCGjJSZQlIFILIxUj01
	 i1AypaMmHsvenFToRElvdhBYlqYVp0zeJ3RM0mxvFD7RurQ0gMxPIdLcvku1DhOGH8
	 nwQGrSEekrbqRgSm9Ysi+4UQqipfAxdKE5w3XQ+rwSSvipDuILMARg3tA1uwl+Cbd+
	 hsZ3vLRByjbdaRMX2buA/0SXsMdIxveuIOfaZ5iR56enbm62FDGMT4hQNRe8GJwfPp
	 zPCDmn7oR+kQguSNKYUutFYesVzUdVEuyuMxkcpWEQz0a0deesliGCsAtOjaB3FTuy
	 NRbQdhjyOMkWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90056C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687135358.31132.15178962992398753782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ebb42474410ffa0dd05c15e362547fbaf060a259b9332f974ed623033ae554
Date: Tue, 14 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736871353
