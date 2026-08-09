Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AA819F121
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786244434; cv=none; b=cM50RSto9GCUkaNx+Vq29xDHMyF2y4FpLjQycbwHnq1AMuMSiWp7WDscKcC3FYnY2gCliwfjzq15oA2skisIKAoCTwGjfcXqk/dhGjxRhoZ+fTR5mmuGFdaF7mCPFBY5NXczpjNT8UEw90UhOx3fmjwUOO54pxOeWqBcjZwPAsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786244434; c=relaxed/simple;
	bh=R0RCglkfRAk3HulF0rnjoMxnF6xPDHtEgyxvvEf3ypQ=;
	h=To:Subject:From:Message-Id:Date; b=Fn8zvCul2yQ69j8OGR2Znvxk0EFXDXV/oJso8d3fv9Q8NW6ooQ8Qcj9U87T54gqPf/S58jYBrcGs3FiadrTnKcEsAdQeH1vzthJ2joVTN6wpVWwM7hQsQBgMJoVfwjuM74AaySwYjYGX0HYgz/uy8tisp213iZjkckdS6blQ9aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJUR3qXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJUR3qXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD56C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786244433;
	bh=R0RCglkfRAk3HulF0rnjoMxnF6xPDHtEgyxvvEf3ypQ=;
	h=To:Subject:From:Date:From;
	b=LJUR3qXWrg2U0ClhU30U2HTQKdSqEQ4QxnJtmm2CyNMFuiXsn5dwghBRRTULGxRTk
	 dWYhmXYP3aB2lpi2ugdVvvft1m/mDgXcZ039rPaN2qch1t17Bmb8n1OF7X1NUuhJZ/
	 4tascTAdR1djmreGatTFFpRmnWQRlKjW2wt/Sd1rQcHuzEXTPrjutir+hohGY7LTrK
	 Rly1T4M733/0tVEooO2I3QeJeOmZJcGbuHYTSYJxaLh2JV5FZDyIKwwzpIQf3n/qIn
	 bWleYmpTzFdtHzevThKcIYhYRM3ovPxxPndgNN0Cz5nBYbkXX9QXjVMgAkSFpMcrbM
	 zVMhZI17X6QYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3FAC5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624443369.17925.8967646355417598502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec68e8b023cab488bfb232c50059951cc03dba15e42fc8f32d16d9ab69085507
Date: Sun, 09 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786244433
