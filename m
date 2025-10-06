Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6D41EA7CE
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759786194; cv=none; b=IE653r/A6J+LuwoAcH9Gym+vFomLgTN5QtcPTt7zwY81VVjLOVlZ8t9CnDR4DwJGR7Qea30YR0l4LtlwRaC6rxfWCE+vW8U8EPtWGeWiqQalUS8B4CDQKCZnYY+aaCQ+OOKrypkbrNLaYvSajW3TgHBCxYCP9AV5lUStAjRTctM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759786194; c=relaxed/simple;
	bh=Q5fNp0SvKUmTaE5k07Dz1KRi6VxDEi1lJK6/RMEPoZg=;
	h=To:Subject:From:Message-Id:Date; b=WVw/QSTzZkXUaXWvhtPaQ3I6PP8UYFfivTDF6AfPzkKp1kTayLhgBs1K3WQcNiU/dvtzx169+wHIFAtXdqnF+y+5RotVl1tLNTY3Pnigx86Kw7v9p7+/STfsb+5yxHsHJhLDtn0h/qD/wZ5XTLwZhC+VNb+jAUpNgw+Hcm4RCec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRE+dk80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRE+dk80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1160C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759786193;
	bh=Q5fNp0SvKUmTaE5k07Dz1KRi6VxDEi1lJK6/RMEPoZg=;
	h=To:Subject:From:Date:From;
	b=XRE+dk80n/qlDqFI0cKXDEtQizsNCb2hMx7UUHvhjub5sdaNqYp9DDg4ZKsF4sEoT
	 ShFMXAS2+uAgGZlGTYsBH6jRkQLZxpjaykrLTr0PPSbrv1OUXt4TIteZABZz1rXCLy
	 lC8brFZGc3AVKZ3wztlAk4VTTXnIHhVlB8BY9dOnRMKNM8HtjUNFcEZ3tgH/j2cGjc
	 hn0f5PlPwq4Oc3oYKky8ba2LR8S+o4ADxrIbkfTH/5yUPAaR1MMBYJ+0B9sF51xuKI
	 5bAI+pRRHmgjX667aJHqYKgWiqZHdnrY7UZu7YpvMGazIGaOtNz5TE0u8VX9ZrruUu
	 Nr1jjZzNMJUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91614CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978619358.12938.1471458521966832086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67736b383a799556edb1bab5fe06379a5d728e39cb3b9b8bb03c142fd264b6e
Date: Mon, 06 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759786193
