Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA561C5F39
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754768395; cv=none; b=fI5jH3A8SzB+lu4DmrDn9yWSzm+hTivx+Lvb1EhE8VWpKZZApILOQpNJgn++23K20qJar2oTRxyZDCXdBlTx7xhj7xc3wkrMPM7cuOCo2/NHYmVB1aHkGC+CyhF73ARYSLMhlEMMe9pIZ8DJSSQ01Rn9eLT7HL/cHgu5ksDuxKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754768395; c=relaxed/simple;
	bh=d3Ya06hobyYOtKLFpk/pmwqnKjhKHA/ZBDGcIAZPvXw=;
	h=To:Subject:From:Message-Id:Date; b=dnHBOP53B+xDg82yFqGfY0T7HDuvBbeI/+s0YtKADpgHua8Eq2RYZOWJVcc9+FqYzP/xPl+Ik9m+vEducq3r72RtTY12qG2E3kp0mbKcvigf2l57n/yRXNnadfGFQfJdNeRM5YAevhONf+H/hesoiw12Yh3+DCgUcQ/TWVq+Sa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7M/8iUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7M/8iUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A378BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754768393;
	bh=d3Ya06hobyYOtKLFpk/pmwqnKjhKHA/ZBDGcIAZPvXw=;
	h=To:Subject:From:Date:From;
	b=X7M/8iUVNFJG8j6cE43aQt3xY74hWPOac2A/4mz+UyJDDdcNfQ/N0pX0l5iT0NkQs
	 gQr3iH/VKv/l0KYJC9oIZDvhfrNUaJ4i/79yWjqcTQq6/cOuiU4d+3jIElA18XRgaU
	 DA34cQL3L+ngeVxn+NrR03iEbTVXJ6SGwzwhhuhJANjrBe8Baf+P0GL+x/gA6ysOaw
	 tbpqJ1nZvHoF2sDmpYHSJP6QcgmzPA6aA8mDFWBFygrp43hOWlHMie4dZzuqwMBTFU
	 0lugEkzOZTohbl3FU96BXxHFghCr3SDLhZ9lzRdQlDGYr/AJIRs27xkxNkjlChbmKz
	 liy/B3Tb7KGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95346C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476839358.30421.13023383886271729232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cdf99ef6cb9f473bc1775eb9e549097cf73690b1133fe1c6d31d66581480e9d
Date: Sat, 09 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754768393
