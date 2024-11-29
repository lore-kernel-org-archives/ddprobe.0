Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D01C01
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732850154; cv=none; b=SPkYbDlLT7SpIiqXH7wNQq5/B3lzWns2k5P7ZxK8YhIxygrXhBY2OQI4MCUC4hyM6nS8FH3hDbW49fcQuTkOpTQddC1yvyXW3PXzPzPyNAFM9CG04LVD5p0v0E78HdW2BbaKwXmCvUVZBO4dsEKh/kwDmFK3bx+rpch2Wb2X1Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732850154; c=relaxed/simple;
	bh=oj+GBZe0ytVhnAHca4GtlWdBsZ6Vl5lt//FjhJxUDug=;
	h=To:Subject:From:Message-Id:Date; b=eTxpjtb1e4Ud1Na6v6J5lkZO/cyMdbxvDGhdPM6rqJyTzqgiZ1bnV+poGQw9kiCArct3VCw6H2QYVw+mXzhYOMudZL9+JljA2n5jWJ6um98RCBBb49AAzvTdZOBdjGkbnowRi2AsgvvPF011hK0JB9EK3NVxT/iOWmN+ALZWn4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpAFyCVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpAFyCVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA520C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732850153;
	bh=oj+GBZe0ytVhnAHca4GtlWdBsZ6Vl5lt//FjhJxUDug=;
	h=To:Subject:From:Date:From;
	b=TpAFyCVcuCfWgwEoDF2/a0YCKhnjHVadKbCyQ7s0okIkZ18DNNUx+HsmpMMRe6Psv
	 PFb8V0Bh34LMDN/ELcNva4bTaddD3NPRBBucLMuWONyehgb+gVIfpyZjSnZBfjRxmP
	 r1kh2ju2EUZFmk+22vodUfpaMcIdbJpzzN8Wygf1fcfG9g3zzdv32pn5ceY0URRYc/
	 DZr5fhllGmcRjW1SM22xI+ZGYdxvmViJn+6SNdh7TOikZF8Kq8dSdYD7HJayOCxP6D
	 3oPEv7kkIO+OuzI9bR3DkQsTgCLK5y3mjPB/tKcYyswS9MftziJgkHzoGRZhrv4qru
	 zKe4b8tpmREbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95889D70E0C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285015360.30309.6842800327866595452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70574d739861a7e4a55bb7dc8cb4b26ab8448cf3c9301e05500cf875dbf60fa
Date: Fri, 29 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732850153
