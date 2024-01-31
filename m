Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E679D80C11
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706714297; cv=none; b=mFbjTmaQ+q4eVeqipoyWdGSxWBJBYNGFIIIuzWQAD1JDNw+PMCJX/BnTLoiDI7dw1A+9mzv+9ie+rLRntBFu3X9q1faVXRfNObK4ACyfIaZwWMM4bTz4EClkLx/qEoGptMmAVIh9fzR6xF40akDoJee1fHTwqLV7hemtahG9a2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706714297; c=relaxed/simple;
	bh=7lwvYnWkafl2SYs6dlqDt7sfhqKkAbChPQmYHpr4wqo=;
	h=To:Subject:From:Message-Id:Date; b=U3j9PJiFSGTrWtBInzitJqxGlU10LCZKMStEnjMbXAfPHmF8tkhg8fcwOuRFX65y5vyLn+4q9OH6Owa7SQ3jIwFKu5IkI4rRkDRu/6X9ytfC5JwEghjMv4W5WednXySKmpGZuUqcTAx1ssXamPALUdTq7PrXHnYyAXfTDzc7hDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwIc5peb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwIc5peb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75068C433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706714296;
	bh=7lwvYnWkafl2SYs6dlqDt7sfhqKkAbChPQmYHpr4wqo=;
	h=To:Subject:From:Date:From;
	b=LwIc5pebYTpzgFZx0w6FOKCIB8K8WZJ9zdHZaOzgMtXiNTllg4xd9K3OxrvEHC9pq
	 9XRxgj0nACzB5LzZrc5yUjO51dfBegebzuqyeHJPbULvXn0MZGkwpPJVxqAgPyRodA
	 Hu6UbWVvEJxz/zIjGnwPYHEE+1omrMPHIoxyfRutRMHRgWtfiBlYEATw3nn5RoJ+43
	 CUa0kvQxTepcGzQEe+UxN4eadFniKzNnQd5io0C/zTW26e5TfyjCsQb4nHts5rvHZh
	 n3gg+yADG++e3AHqU3shxgHhDGnYe9I8hUu9OlSNKSLfd4PAe+O4wYASD7o7td9mJk
	 cOeaG9MB3CLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCF3C47258
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170671429636.12023.11931684492783311363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e26d45b95f0631c10903591ccd0611667705d2fe6bc932758aa6ee4c8da75c
Date: Wed, 31 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706714296
