Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4849C15531B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720736843; cv=none; b=KK+Jm5VjgL7AhtFEtVPN/01aLjcJMojPlXGaatSEBE8Ij/bRvJftlX/v7FOcH+0D7gIx/4vljUCs6EX0T09OyFW3v5znH7QH1YQUp3XWuw8XzNp4Qoqee1YIk0VivkJ1g63WyKn6o7UlyeEDdtTd8YLEJxOGe+Cyuq0teUAqVz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720736843; c=relaxed/simple;
	bh=yjlg5OUG/Vxkdh7Yye+MQ5Q0jX/EdMJnpe3ctfz7NHw=;
	h=To:Subject:From:Message-Id:Date; b=jdTsbHD+UGLQZqrZ//Fq1ONyOR7B5cd8tUBf1dBVa/4M6P5aWgKC9TeKWPJAdNegfp6hagBGmyh+dROhz+1PT7CQ4nNtwH21PMBtYN/ONQM3VJ3bUAhrpYfrYM4HxBPBewmDKsGxUoKG7T7GzwIWqiscI56cJpjSz3tZQ4b5rIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfFNj/8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfFNj/8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68D9C32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720736842;
	bh=yjlg5OUG/Vxkdh7Yye+MQ5Q0jX/EdMJnpe3ctfz7NHw=;
	h=To:Subject:From:Date:From;
	b=LfFNj/8KPagaBZoFR3CCVSP5tMrMjv31K+7VJ+Qi+dvXLpMbLyUUZgMEIt+CpaRF+
	 ypI+RcZcDkWgS7LQU3JeJspAHAzOv/zOOCFIqcavGa4u09Sim48l2VWvihA7CDTtXx
	 gU0YEAkl65JcANfBNtl/uiWO30/mYnrfg6u/DQw01oCOVZft2h5uBxMKypHGHNeICE
	 X7mTp+9EpzidL3JyY9BRvVyamChWnDS4ZBH4hQULs5KPfGmWn5E/pTbFE12yrYWmjQ
	 XIsMG9XcjmykVGJP8Jz9G+ev3Oam2gqJ1nrlhGk/P2i/uVe/dbL2PRvSMAMV3a8EEX
	 fv2glNrXGeryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C399DC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073684278.26464.11870218741944581523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bb09c43120ea5e1fb0a8a411c9b14e4595761939c1ab537c8b8dd2fa8b0fa3
Date: Thu, 11 Jul 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720736842
