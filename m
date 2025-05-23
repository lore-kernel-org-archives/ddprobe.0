Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2363D146D53
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748043594; cv=none; b=W107pQ4ceqtiyVFWo3nSQ6PrQt7FHpXmG2zrRUxCwljBSUZmlsrTAfVexXWLiD5YOrd2ntpgNzHO7aDA6RKbV7UehB8M5ZclSQF/4tr2lUPODNbnGCHyjIfYE+hQwxbmQ6lGTmGJrJFhnA4b1IfJGa2ZlCvLiqfgA7n3oj6A3DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748043594; c=relaxed/simple;
	bh=iBghq9QC84xA1O7Uvcok6G/gDrBhmOiOLgWhHxktcKw=;
	h=To:Subject:From:Message-Id:Date; b=dxU4eOraESY0NghRbEC1LLLt1tpa4FASK9S+ucuG+Mc2KLIkq9r7roGulR+kTDWsfNigPKMCgNSeArIfK4tT4FhcVkOfH/bYH3EaoCbhM+5gthaiWZdXThRJjfSQsj5c7zWsxsghHbG9D+BZjP2gnXHi/t1Rs+BzAhDbP0uhnQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCzxq2ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCzxq2ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4B0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748043593;
	bh=iBghq9QC84xA1O7Uvcok6G/gDrBhmOiOLgWhHxktcKw=;
	h=To:Subject:From:Date:From;
	b=kCzxq2ihwJIt5C6316GJ/keiC/qz0bRmwTmDBRjwIszFyEVKaztPw2krkyAM8mQIm
	 wFl9iafQfPd+FDcsOD8zvZwdalnvZNxdb06Cp5d3PhJhzmMVUY3LSbcNtIV0Jdq5Kj
	 Np8AlvsWNYD4b+izXlixNm0hhFNDT4AsundcrMP8XlAeokbSq1/ukv0KUQTiTkUJA7
	 6QivG/RjZ3LAL/Zo1/eH3bQ8RwUvaMPMe6maW1dGMurw3DO1DomDLfZMwa+AMky69+
	 TA8fiYyvacpcR8LDEle32xrJCfqvFrForc9QYeYJJau+S2UuorGTf5AhAdDJ+ahkes
	 cZ2ub53ev6/rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DFC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804359357.17726.13920444805146006987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b54d3909a858635c91c7771596b0c0c2cc21bb87f46c7bea743d989e6ae2bea
Date: Fri, 23 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748043593
