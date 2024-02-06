Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438EC12E1ED
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707236897; cv=none; b=sLczJ8JkZTAyuwVygk7YRS8fwzKvbpvxat8DTJICDuXZc98wKIfl6kucC5ilClG4XcpRr1vArBohPEM3GcYLRTv1fV+t7rHMshgwNE7l6vswb75MFO3KLetQkBNqZJMQaeX7yXmMdBj3Xkac4QpTi6ty8ND6gixzt0NALhJItBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707236897; c=relaxed/simple;
	bh=CwvlrHdXQ2EayNjhyGLMMiDmL/ogdR1gd1ZE5vpmkXQ=;
	h=To:Subject:From:Message-Id:Date; b=tzGSOR0TqjfrjHkYvNwA4krkQANj1kc1afZh33UgS41YBfr6ojMXu/N+nFxoW5FQSx6U5oj6vDCCcyRAPJo3zKYvMpLCx36RXurF/A/pBjuZd8Ns8XN1CC4bugzaGde38CaTdl+xMXfday+u5SH9tUVQUgQWOOwPpUlcJEOkrOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTE/GNOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTE/GNOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C13CC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707236896;
	bh=CwvlrHdXQ2EayNjhyGLMMiDmL/ogdR1gd1ZE5vpmkXQ=;
	h=To:Subject:From:Date:From;
	b=sTE/GNOo1qMc6sSVcj1WYNgFwfIfXf9r9tsVuuJA0M14d/AU+iscgsKfzaq+8Yqsu
	 LZkWhKsaixndkIWDTE3sQVunfA33C83jMIwGxEEFypQHBsUBMRnqa65CE+3aLPEUsf
	 JNfAKfsWnV1ogj0kV2/NoWawvjmw6Jgcd/b/L4THq4FqbeZOcyK79n9YGKA+mWFfOC
	 AbCh5n0B7c6osL00VaDjiMa7IQyNGzTwG/qINXECQhjSBbkXVE7dwnNZzu5y7n3e8r
	 op1XCoCs7LJXdrlNjAJjz2Gjok534tkOwV1Wz79TVLBxFqwoJq2nG+VsHU0UtYeY9m
	 uEOfkAt29nOyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F53C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170723689639.24376.8324769499674410023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ebc13167336199433d6573462221e468a96ccff82a1457942693d8980aca59
Date: Tue, 06 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707236896
