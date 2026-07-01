Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B5921146C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782874114; cv=none; b=EsmUhGVONpj0QdmaaSAwVgiJl0bhTt/VFJvAqmekoxKWqoEbtEOVK6mjBT+2WEogIxRvEPowz4DE/nsUB3j/ZcwPBivPCeTLep5ihZVFy4lewi8t7iqWoSOalRvi/FbiXzBxxOFvJLH1CqU1T9WPMJdBf0ZZ+R91u0uIZqjPpXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782874114; c=relaxed/simple;
	bh=wC630RW7Q+yV5E4/tJqVkhI89DMbMZNP/DOkv86ZGE4=;
	h=To:Subject:From:Message-Id:Date; b=SnAY6I03kF5waQ4gtEAv3TtIvlE6wzgcedd7WjTRxGPDFnc0kmJqM1U8Czq1bw59XPLInxYVPTnLudE4SU8/a2pQv/cx8sPpilIgwxQM7UgZN+SO6MQX/0swBg5vIHyuzeVFTb5aBHdJ1otRNVPIeUpfGvShhZvHZbxpBzZZ+RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ2gWoKN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ2gWoKN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C11C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782874113;
	bh=wC630RW7Q+yV5E4/tJqVkhI89DMbMZNP/DOkv86ZGE4=;
	h=To:Subject:From:Date:From;
	b=GQ2gWoKN6wDyiuqCv+03TlR0fPTFZothftwfwrUwLtWV86qzE5/njgciXPzIDcdAp
	 NXt6GZGSc4hvg5fQxPPis/ljEi+tHsIONj79qH2tMRP2Q+zf6VRHMpCw3qZp254lLp
	 +tNZmQWhDvwVVZukI0k7qoR9on1xFbnweaph4rmIkUB1vZFxytmsUbfmJYkIJGrdu+
	 VAiCbNSwXsWHxs5M2uPdujc0C+urhppxNlEwRLgKdHOohETk2x4J95wP/hZyTyPYCo
	 5KwZpI5AZjimPfqR7VM0FDhweVTFDRENmwV9qtjh6FdgkyCxJsPm4JPCgInY8rWa58
	 Iy9SVH6sPhp0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F94C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287411368.7525.11188212400973193899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82b826fa88ee61796fee321fa2c2484c40483e84d3345eb724e572d61554bfa
Date: Wed, 01 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782874113
