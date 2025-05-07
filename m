Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471F51DE887
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746594595; cv=none; b=pXIiW6KYoMq60yd3p5ba/v6YQT3fdlvYdknBfeLs8YWNYQOYt/tN/AZd4izm1hv3pxACCNKawk39cb2BqE3tYsyrJCEKmERMvtMyZsDe2nXBOK5rmqQKlazCFqk6VTqqYDTDoRJLqOBGUjlo+ORbW9Qtw5utV3GHFmjzJk+JzLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746594595; c=relaxed/simple;
	bh=EU1vmnaSCjhk/T9oxdUSnWCALGCttRUr03WBwD3OEFw=;
	h=To:Subject:From:Message-Id:Date; b=d0zhY8v7NUHvbnym/eJespKQvbuQ3LhdvSzOgNTQ4qY2Hqsdokg51bXcF7vO8pnVrwVFKmYhHOlFvK4LBCRI0RMFn6PPyqrwGQdHY1pPIjShffe9HzBqVCrOMjCoSYpxs0GqIpalckgto5Kbklt+emVfQshxJiLX8Wv8BEwFu5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQRwi38J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQRwi38J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3643C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746594593;
	bh=EU1vmnaSCjhk/T9oxdUSnWCALGCttRUr03WBwD3OEFw=;
	h=To:Subject:From:Date:From;
	b=vQRwi38J8CRV4Ka8fvZqBGqFV52NelQx1B63FD/Dcg48H1eR8cxkNLHBGnXqUhJwt
	 BhIDr6POixtm/b8ai+iOZQb8aw0qnqPMz/RKQhBR8UofIYfH3KGS6KtlyQwSh1GmK9
	 A3U8TA09Lv3SnP8mf6gWVvcnl8oXvEpMcLPkG1SoQs0/ibTT7c4KUkfwOe7zEoo3+a
	 vJTFwbEgPCmNjtiiYVuxRLJSM3yAVJsLOXIaLoD5a/EfDN5SHeeZE/zY8PdOL97lU3
	 wImoGwQSPwWWyoTLWsMiUK7kTywwDdJzQ5obW2m0exFxPMrZgI8yqZY4TC/eHjgU8D
	 DqZs4hTPLmVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CBC369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659459357.23031.3748532910822101722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d5fdbe2476fce8faa3c1cf664ed2863219658311e7c657ad46206cc98ce33d
Date: Wed, 07 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746594593
