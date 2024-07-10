Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADFE13C3F2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720654043; cv=none; b=qFrpq8aP5oA1bUB387O9hHEFKeKrsx8sYCz68y6TxGP1bfFaKdJYJxflURRtXgg3GQHLWeayawISUu8rZXnzr1SrMiRqSOIKRFEs7NKJ+8RS4c7l+9Wel8tysI9IRktRn2FRUWzJHSnnAUKjMG3q6UJWATURt3I30Mydg4OoPfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720654043; c=relaxed/simple;
	bh=4J57NzCTQqUkWOjCIpYNCyW9agAzRM+9JAwlPJTkVTM=;
	h=To:Subject:From:Message-Id:Date; b=NlT1nSs9WqdcuL3MMKP7GbQpikuCs1lfWdLiAF7v9/qyjL6+VvfR5dEruxaBoEooccpINpp+gW5cVI96st1iTYDN226eiouOPmNwpOUGQQ/tYa7SiPE7/kcNxwbh74lBPMQEEijdygmQ5UKLuG9q7JCMnNNII15jsj6WZZPaaGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZnkDbpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZnkDbpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F6AC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720654042;
	bh=4J57NzCTQqUkWOjCIpYNCyW9agAzRM+9JAwlPJTkVTM=;
	h=To:Subject:From:Date:From;
	b=oZnkDbpHa8pS6cxOXVDjsU+nyP6o/DY/gjA63X1eCPBYpGaG7MAemWfhQHP09kJk+
	 KUQ6GBcthogTjbrGBfuTUfFnuqRDQlqW7JA4dzcxRbi+K/cpWj4iDOv9qcUVsJbzMo
	 f/NBMnIgrW9iqrFfWLnHEFVMdXXu7N1cVs7pC6W1CcdqY8FTDRAMMxsbU/2uCtjjry
	 04A/xZNde/UsA0pTw6HyFxPzsBZ8TUP84H45EfOmV2ZlJgKau9K9jxRaarEw3LUYuo
	 jPuR5zsJSYTNHgqxwBT4nBlhxa4qyMa2NlbOxVHNKuapekkLwbpHG6qg/UOewIYwAK
	 1nHSa7HkDUNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D389DC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065404285.25039.10277203276862235712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5887810653180f7233ff87ab988acfbb5b50c6c0ec305af3c0b05dcd4d0fc41b
Date: Wed, 10 Jul 2024 23:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720654042
