Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0577DA76
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726830354; cv=none; b=BZoFO+5r2FXHM2abxn9p3U4rwa1Fyd/k8HZyrcFrWZFmv5dJOo4GTB3BlWeBnMNbubZmW1PtWYy/LpdPgQb6ExTUcz1/0KpEi2WjzeuQhdA2Do5QG8WUL2eQ7rlTzRFcKzpW3p8Q3IuQ24JD24cZzsOW3wCyco3Q3UejQMot128=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726830354; c=relaxed/simple;
	bh=rg//nEcoImr5mH7gB6E3GNT4e1LB18tn2NrgqaB7ECk=;
	h=To:Subject:From:Message-Id:Date; b=tb+oaLdZonbjQVlEWwFS0Pf8/N8ozVqGt4UxXZDkcJzdR3Pg5myC89MU8nxKIZ3/m6L0bpNOOON5IRIsGHUkFLNQR0u72pSK2Jl3M5grWtPdyW7bHIfP/JkTxB4HoUlmYQuVz9IrYDJ2itY8wyZxDAujM9CBfZjN9rIhYo7J288=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtiXXs7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtiXXs7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A852FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726830353;
	bh=rg//nEcoImr5mH7gB6E3GNT4e1LB18tn2NrgqaB7ECk=;
	h=To:Subject:From:Date:From;
	b=TtiXXs7QhyKkVDkdCArNjjDU9lCdS9ffQezgXXZR+fbeiEeV5JreiCui+veGpEtCf
	 Zewe5EcNr6DO+jzbolH9Zo6TvF+kyswvRElRDePedf34FGfqXVN2140NhhnejbPzJP
	 lbnqps44AXQcLXJM8LgFBEQlPQfrzBWf9mzhQ3Rntrixx1J5/8RKfOeDfuAahnNG/c
	 ASntgP7g6KsQyN6M5DT3Xz64O4PPIGYkXU9ntxzPw04S05fZF/J5z0uelIU673ZqGQ
	 VmwWQ6vuIxwzULU9lbwysq1St39kqI+8j65RuEvCviM8JLEyAPtcpSkgcDPGy5tGNt
	 fJFBjN+HvpYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93190C78820
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683035359.7200.11602170881059704131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d598c0ce3efb645d796a5f7f46d66d50c8ef4870a3178ccc6fdcd546c0bab62
Date: Fri, 20 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726830353
