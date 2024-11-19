Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BE814B06E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732033554; cv=none; b=haznU5DWdFqU0LjUMxXg1xYhk8IuU9d5xgxH6KM19PfNLx74fsyrhimK50xQIuea2P9nzUEomFN+TdwdEPKarT2+GFiVySXyOKhzFnNQ1IFARToRd00VBYplwo2yyvWApLx2LizRto3ghK9WDgloTqkCkDgxRDZQcgcmGqP3vnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732033554; c=relaxed/simple;
	bh=L4asHNprLlFnLnlpU027eKV/mypu68UX5PwH239pbZo=;
	h=To:Subject:From:Message-Id:Date; b=sug368kkeZcMNwOmyx+miB5vt4DrwwLJoHaFu89+DiryhZrQAqkrhsmm+uvAZoCWNAcmu2S9EH9DYyz8NAJGoHXrD1IFHy64eg/PeRFZfA7VK49foRbjfTXDMyNXbG/CY62iEb5UQ1/97l3nbvz3wHbXoh8K71/3zhIQDWwULdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmiBBMWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmiBBMWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E7C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732033553;
	bh=L4asHNprLlFnLnlpU027eKV/mypu68UX5PwH239pbZo=;
	h=To:Subject:From:Date:From;
	b=pmiBBMWEokRebGkfAxr75m77O9n/CxjTzMfySXeDk+uOIRK6mOBnRxiPYyJHIf4Y+
	 gCqq6LKYRdKnMMHB1K6legZZMPxPumSrnIWVpDn1irWoJqCdssOJ8pRUZU2FnXKKKL
	 MrqMVP2KcOhXtz5muzU5WQt5i5oGT8tywnlpbR2/hGWiJ7FTsZdRL/htr/KZ85iOdh
	 uJzEYh9eGcSMua/041hjgYEYLnyErIKGszvqbYV9nak4ZjUOawp8YO/T3Azu+RN2m5
	 07ml1ivdThF/6Qb7bbfqn2RcX3ZGMi2n+QOT40YPJ2fLMIq67s6gOede2ftkkTpMdM
	 uJYVHjqkTXbZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BDCD591A5
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203355359.30938.6784013557113638498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60226608aa317e0007a7d6eaa8810cdc47c6a71030906ff01e4477618a48ae5
Date: Tue, 19 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732033553
