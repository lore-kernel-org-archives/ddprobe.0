Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FAD61FFE
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775313333; cv=none; b=iFpVtDzt0RdRaVjhxxwgGo/Oz28UAi2Kqgdm5phzDHOh21WYBrw05Q97zmmFzPpK2BvPSHxhgj7so0ZX8kR9NPRMXJtvILImX93mtQOf1xmfx+mUbz2hciDWPzIy9YqJjxmyvyssdPaygdUgfBfj3tt9G9rlB6powCkTVlNrWV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775313333; c=relaxed/simple;
	bh=yztNp1F4Fw1R55wSThApe7uSy7eSc3T14CJXwfPgwwM=;
	h=To:Subject:From:Message-Id:Date; b=q+DX01AZLhDJYLQ8b1nxYvj7321rvk/80UqspuAZ0YnBLr9pvxnVa2Fs/Jpgo/HxM1yo7dxFdsEXyyHK7sRu1QgfSUUf+eIU/AOf/AOtvgn+guYI8Aa1eizJUIIMNUuGkU6l9wJ06Z15a+DjKSwde4KYHYOC44nBQP6f03LAgMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u81Irjnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u81Irjnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC585C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775313333;
	bh=yztNp1F4Fw1R55wSThApe7uSy7eSc3T14CJXwfPgwwM=;
	h=To:Subject:From:Date:From;
	b=u81IrjncPV8nwdUFnz+4TakXuQi1W+jIKpPmuE9EqRwLRRDiEyCyAaXhHk08KZKJh
	 XrQhWtpAINNwL2hnUQyFdhPzLoqc21sjLZQg9HD13pxpwKV+O1vlsotADWvbrGN5vx
	 B7FyjPjOB+NdtU02AodB9tEIRwqpyvhcNl6u040oOOD8yDzr/b/FOBHuPcJBWh47wG
	 pom99s8sn0rJlxMkKm0n6IpeeBNDvtFEh7fn0bbMAd6nqzmjt170CMi6+XIyx0TIqQ
	 iLdf/t5AZElTPsyJO8A9eaOHtjutdgM7YufnMUcQTKbojQTPNgD2BXDpVY8qGtTI1d
	 YvYiriMzkND6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7F4E88D9D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531333369.10492.16213126496833383013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a210eae7ffa1171c0fdd801169a401f9ec14fa4db2448ff184c1e9b0539a6503
Date: Sat, 04 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775313333
