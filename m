Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930403043DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786378834; cv=none; b=Rv4jL62JSH2nxsQ1nhF8tvSium4+tpSkZT8+s0QMOBoeYQqldzilAF9kmBOQABaYJPjv/uRJv4eJGPtjHTL8hBDbEUyZoQQBg3FPJqO7/BozHbElrWt/KhMJ/PNx0t6fJoAHwv4nHiOf6GqvXGOfyOFvntoYOE98QjG7pVpu3kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786378834; c=relaxed/simple;
	bh=bSqq84rEuwpTb8rCYuGPmgtw+GB6DXCSFcPr9qlwzAo=;
	h=To:Subject:From:Message-Id:Date; b=Q8NQQ+cYshXPDRHgKtiHskH0ab7Bcdra7E2ZB/Hc0NmfJLxq3KbRY4puPXEsLEcRN2C7Sn1gfnpkug4/iaOcaNfq08ZL3kqla4ruy5+ELVdKpvdMpvrvtDYYddIFy74IBQe1pBLEU5hfbXomwC2LnluX29P52FRGu5FJ6zP9Tqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ermPvQUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ermPvQUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F9C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786378833;
	bh=bSqq84rEuwpTb8rCYuGPmgtw+GB6DXCSFcPr9qlwzAo=;
	h=To:Subject:From:Date:From;
	b=ermPvQUqMdSr8SGsFSVXhsy2fix6YWrSx/rN+TUZqZ8a60iv4RVBHxMYgF8fJWVuI
	 7A/cSOikmUEC1ffuNctM/N6VO+VfYoQgviT04/5yFtroUdVRmwt8oPOOqxHCIwj1o6
	 jpcLcIDjAXaqQwlMKKo+RA6H/EI8S4L6EKCcGEfaEIx7WLQNnYekN3zpt27dENh4+t
	 L+kEKaA0oBV8whgF32LZohzccJ/C87OzoyXr74sj+tmelp2SbBr8LBDZWOLYayk+5o
	 MSjUxG2eXkys0/lGVQ0hxNZxQv7QtOwZHf0PQkZdXRhyY5FYktidWz1En5Y7JnEXCB
	 xdXkH/mrmbOqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E5DC5B56A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637883371.9110.7600040379498080940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0814c1a6c8d9f4df2ed42e2425789feb724b708c8a293a7a7700efec79b413f
Date: Mon, 10 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786378833
