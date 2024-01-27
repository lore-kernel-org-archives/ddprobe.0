Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9F625611
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706362697; cv=none; b=RJI9PH7dJP39QIo2vWmRtgvjuJnj5fpfBnZ+nEV1QGX/hgye6CbgrQlcig0zg+SlyAoJ9X704DLC9SiobYAlOhjJoZ+H5I88+YhRhIvfgVABsoXyRtK6zhyGs7WGBh+pHqrGyQuQiY0nqegJDgnUPfL2uDiyPnc1hfp7BMTXFQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706362697; c=relaxed/simple;
	bh=SjLa8IbrsPf3EtEFkvpp8Wdlb+U1uFJBexv76zb7JVE=;
	h=To:Subject:From:Message-Id:Date; b=Uk07RDU7jpaJOAVadKx5innbFD7luFc9tJm7SQt1zdbt0rPvZ+JuO8E4azwV9QWU/UshxaIoa58cIFc389hMn5dkLjJj4oMiP9hWsqCFbstXNAT0GF37r/ZvOSTrr4zq1m5LoxO5f5I6t9G6Fp2z4XX79PJ3aEiyhfni/loqwIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z77k16SO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z77k16SO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846E4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706362696;
	bh=SjLa8IbrsPf3EtEFkvpp8Wdlb+U1uFJBexv76zb7JVE=;
	h=To:Subject:From:Date:From;
	b=Z77k16SOrRBGTcoFNhWN1OlyaodMBjA2Swo0w5ixaaG0bANlTmW5M6+6agOqOMIHw
	 z58MdPwh6Gd1VugB7yR9eGT856PyX305Z/GsdQFJ5+fxW0m0Tmiwlfg88v7rrnqIvR
	 QVQlR+lz68mOicX7JBtekuHmzYcfJz8tdHYZ3wYEb2rn4Su6bGgqBk1auiuKGPZAfO
	 acek87+ikMWb66KQignbew8TBhQAu0Trg8q2FzzFlcKrCUMVJfoa2etrokdg66d6FC
	 SWaqo7oSbDMC03LjrrCtUMyejIZXY/altA39oqKqsU4+edM0tvV8ZJJQORNwbeXd9G
	 G3yYSRELihlpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62151C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636269636.10469.17760160618596974349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20c40242dcd8632a98da509be1320be5b4ae3983e49d77e907fd18db9f1979f
Date: Sat, 27 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706362696
