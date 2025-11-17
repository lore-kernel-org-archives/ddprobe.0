Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E9732D0ED
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763382714; cv=none; b=BhapY0a1ZoflJslrv0OQv5VVWdp+N+xw111+OzKm82mVZpFOj0ZHfaOpGJ4kSgHeDC1/tZbbTVHgYL0EupJqiew4SxendxPI3BYuxK/9OvnnvtSwag9DCYbK9qafGQm//V5o1RVTd/y+k2gpltEN8SiUvNRNrGurSob1x1oUFDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763382714; c=relaxed/simple;
	bh=27d7H6g+d4qQzXOW6H7//07szP/qHHdKPQZQJrApMf4=;
	h=To:Subject:From:Message-Id:Date; b=cGQB13HCJXDgT5CAMbYQyt/qp2atFbShHAOoBIG3z3iIv4g2cwggMvuzV1R8xst/ja87jFCvDgzh2xRj4wdKNgcWVeNFfm9xlZurqUBuhPIM/NheB6R6ZxDM4cChbl0P4CO1+KhR4Wma+O3uFuclfba7zhwBVkLoOWqDukW1cx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKvveIoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKvveIoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB85C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763382713;
	bh=27d7H6g+d4qQzXOW6H7//07szP/qHHdKPQZQJrApMf4=;
	h=To:Subject:From:Date:From;
	b=gKvveIojwtQUNkdUE+QnL3lEINbN7Fce3fJWaVIbPbQAGayxYVEzY7s6G2k6hmSjH
	 Oj3qfZUiIf+pT3nr1A74fKHNJKbsS8DXHGfmyzPqnlnsb7qi/pI+2hsvRGhssoDYV2
	 3qYVDG+Wz/RsbcDiQSVezudc5QeUWooEWfLmIuuq6gnWJGNMplgQF3b8NEPF+z8BR8
	 vE6Z47SX5nqnm44+KpkVjAxJ6zbTc26EdLo2z2c4zePgjun5VejthP0kCogSWyD3vU
	 F7C4esX+sX9avqNRjc+CHO8ojYa8VzodbIPIK2Zn5RBi8GZhAON9iczCvwBKIK6mM5
	 6SeDMxvGM9AjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEE7CEBF61
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338271361.21781.4622265725822709681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27eb31508fd36da84996eb8958ab67c12931bc35a28841bee59ed0d90f68466
Date: Mon, 17 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763382713
