Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36381248861
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777745854; cv=none; b=Y4Zr5zIT6Low1ZostMHtusr5HJ6JdaAO+NEyerZZ75gVa9vmAxAWLBrgyXIx1sMRsU0rSIGF5/OLPh+R8mAmRFmUmoZiU4NRtWCIipgreWFxOt7mwG3CrAUK8eYs9d1vfC7xyPqxEa0ct8p0wU9zhJRCJdaGgfld8b+P31jFDug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777745854; c=relaxed/simple;
	bh=rdqnXn1EhnjKPtzZSwgGM3DB5vLaLhkqw5izk3qiY1A=;
	h=To:Subject:From:Message-Id:Date; b=TomST7YBKzeWAd5/rAQqzcM3jLQ50RJkuzj2PPAjAWYXR7+7E7QofDNX+MWj3ZCrzqhpacOo2imiu5DRHywR2uoOiFPT2LPBS3C/fX3TFIlijOC0krhh1RCyiXRL3n0v9qYSEiwehOOJXcqnKPRCz06NWVg31h7Jd22knqbAImA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYU488dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYU488dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1729C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777745853;
	bh=rdqnXn1EhnjKPtzZSwgGM3DB5vLaLhkqw5izk3qiY1A=;
	h=To:Subject:From:Date:From;
	b=XYU488dydYE0hCHjZZ1D1XDZuG6DTXrZcL6Qj1HYQChL3F1ezcGNSOEbxYTErsgXL
	 jOE9jnOD1q1/hoEqRyCAmtAXSlnvw2wLJok0Ofcxvn5cDRgjg5owEbnvoB+S5UZkaX
	 997lzC0Z9zcufBDgf+Yl4V19I2W0Opnj2IA9JdN6Rp7wVT6MBMNJQFVCaUwErWUCeO
	 bETQsR44dU/5IQdaNkPJX2SzlM8PL4alzcJQFhTbjJ46xnhZX9FETPbT+8hL6kJwa/
	 OtSR1iyTKduCmQXsXtZj+gKt5L1i3WOLioVW8kf7637x0z6ut+FSPJxnU6iR5OkmgO
	 /bMR6H9xFwBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC83CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774585368.11204.13098858921528069986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a350fadfb256e4b6ccdd56151ccf80ff525adff3e3cbb18aeb005e29c6ddfc09
Date: Sat, 02 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777745853
