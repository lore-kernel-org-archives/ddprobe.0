Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE2138A725
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773141293; cv=none; b=NxNPhUlI8UIeSA+Hv/885uCIIgFsbgCkkSkEZie+1qMZAX3ZDx90IC7EQ4JN98TZkMO0mkQcZO3IxEyCCjDhmhn3ZfxhZiVM/5BosPU2JsRzYcgLZ7nKqgDCyex6aHbrCnEoB4csFl7q1qKIUZO7VO2Sf/C9dHspr+HDptNzJrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773141293; c=relaxed/simple;
	bh=izacnF6NYvVsM6f4o02/XDbm3VXZQwWrLm3Qw9vAqxc=;
	h=To:Subject:From:Message-Id:Date; b=cTrDQ0dUo5jSd2249r/upYNdEXJbMG0MAANWhsWAt1++kNnrCWimBrZteQopPlAfsuLOpDPLq/6MabFGcQtVbtUWUfl+Z/NiflzJnt15z7Kp8BpKQB6WLCe2ed+kHl9g+vg9MB76LkfQBimu49FFu1M1wvl5mm0lGgj9kl4Dsa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I56yStuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I56yStuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D65C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773141293;
	bh=izacnF6NYvVsM6f4o02/XDbm3VXZQwWrLm3Qw9vAqxc=;
	h=To:Subject:From:Date:From;
	b=I56yStufLOpfKlNKZmL1S/Pfww7npy3zsLJQrp/3EhI/eAMJtdJGJxyc+kXFRA3QW
	 xC2hZ3S0totTglLckz80wISqJvwCbJwHKEHeaXG1rpGqufPANzXRRjZhZkNgKqvhwZ
	 XPDw0wBT+jigePJkblLh74+sDfQV4YfjztANyRqN7akIqmrgm8VLPa8rftDQaG3nrs
	 4V6j+//XWq0+bt1gPA5yu04WK23u/wX35RfJ5AvHmFrvOnjwMK4q/5JUrtJXRpPatd
	 FKjl8eyhZR5bt5sCCJDfrjjhaPcAbuW1diBIhCWK/5kkvQS7uy9Xt3FOhTOaeD8ZK5
	 95TBQefiOdpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C44EB104A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314129358.10815.17853098624521542640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049cb69b8371bef2f052df5fe650bf1a752ab767a0ccc32fdc3acf7ebf4c4f78
Date: Tue, 10 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773141293
