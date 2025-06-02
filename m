Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06817BA3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748842794; cv=none; b=LwePhrEehCOaNtzvYfHR2w2uI9hrJnjg2Gdd3rlk4GOhlSLpZ5msGhzajwc6C0q++LExqxwr7Iy3cnqIbNICenAp6mg7o79Kcw+x4iHpEzyteQJGwtBzen7MGp2Shrr2Acs2pMwzvm1Lh7KE6bGwzcS2NYXlrgflg+4xZFFZHrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748842794; c=relaxed/simple;
	bh=NmiqwW/iEtVI3ijyjn9FOorOXjU8Z5MSwVyp6nyIIrw=;
	h=To:Subject:From:Message-Id:Date; b=YR0NXCn1o/3onFJuFtT54efXt0W3zgMKv78KR4L1EwYe4ts8vLNZlcY3nUaE8Xd6oQ3RKULrzhGGr8LdXRAQc0CjZN5wTQiyafReUux1nKWa+5kCL1b2opI7YYnrcJMIApU+vVixm5uAVbA4zmqeFTR/Ozcp78zBumVHPZ6QIOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8NOOidL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8NOOidL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6515C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748842793;
	bh=NmiqwW/iEtVI3ijyjn9FOorOXjU8Z5MSwVyp6nyIIrw=;
	h=To:Subject:From:Date:From;
	b=Y8NOOidLOLhp0D7IK6lKp5B9IUv/DcryENaLU8NiY9+PklHtVnl1UNoTVDkE5+kk5
	 1TBQZo8UGT/fI2eKKtesJIVZy16ECPtqgRX85T5ayKSiIPY9qv9snFirRgtx0eB+cK
	 gvkAKcy3LP7eUU5MMDIyR0YaTscI21ycR1z3GEZHp8OoYiZgX6/i1aQ/BeoUTlvgXm
	 8gXo3/Wbti/FrF5cN1/9jqqwSiBGh8ilH0L86mI6dknqcL/npZHFVZwlABGwKm4RsY
	 mBZR5mDhblOKyMfh7skwfiH6rW5MAFtFqQH9la9LCEuU7D7vDKSi7gCqRZvx2ksTZj
	 7QEC//+ZQDs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91295C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884279358.17596.382383310812227012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29208930b1cc4f67b3a83e71206433f1060928dd8ee15ea3ca5e2ef23ad4774
Date: Mon, 02 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748842793
