Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6F1280A5C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762272594; cv=none; b=P5sDtVM7LY7RD6U89o9JeCO+3s9ngbjNDrOGXcAy7a0v30z0yAVuZfeEH9XDgSrU2EmsOhJc4NOhyxJ9eYhRIitRO6Yzawus/LVF6bQF83jC4v+QR7YapRk+5BDP8W2UsxCd/e0L/lrTckqTErrULDmD3y5ASeY8Vhgy2xhuOo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762272594; c=relaxed/simple;
	bh=NXGFtiSy3S4MVAPm0La8kxFZGm75o3uhfPFocwyfyvQ=;
	h=To:Subject:From:Message-Id:Date; b=iofxHweMl1nCQSRWuObYTtTNM4xr7+NQZjRjtLM8VwYla/eO+2VtCWbpZ/N4BsvauRqDxYydM7AJ/t91bZCho/YQds4PMDyDFMuOIaVfDGyLc5NP6VWGB8TSbhdBorwVrB39gbM5E5IMKspHEgz1seUi/RFyk+0ajDZiBPSra3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBmIjWCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBmIjWCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C4C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762272593;
	bh=NXGFtiSy3S4MVAPm0La8kxFZGm75o3uhfPFocwyfyvQ=;
	h=To:Subject:From:Date:From;
	b=SBmIjWCAxfXszgi++FNgOXXlNmhpLW2YDFyFAE5qkj9dkQVbezAIiV89c3JEo9jEC
	 3X3HyATgnwsFtxJu9raXboaMitaHHiVZmBXgW5WNBRPofibw54qcQHjDTKyMdXZIE1
	 Js65FZvWhDKxqfHy7eM1yW5jKwpRuLI8xgOtDb+3m25LGaRLKy6jCReI/zbtQu6kad
	 HXVyDKwZTXJ3cOJlKk5gp4uDll58miQEwPQpmB2V9WWjqQd7HLYLMLI4rINUvi7B17
	 QBbMxb14DPfTPshXmFAYf1iVC94tVHjN9gZgItDc/Sjsjxo4kvmKI0sHYPQPSd9ZKp
	 iqHton7l63ytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9124BCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227259358.27220.8425002746881115381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc088af8612bf25e7ac94d0e99d3b075d96967f858f803a0934311539386d95
Date: Tue, 04 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762272593
