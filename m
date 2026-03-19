Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050892C3251
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933894; cv=none; b=UpqUuwjc4GhTC8Qoxh1ER9RI6ofQcDz3Z8MyEywb9Qd7nHzrsRQqNZHMhtrZ1vBJza7BizrSN67A9AE+c4Gol10trA7Cz9fzgcedqms78gMM8xgLuUoq7WV5tNsnMJnXlb/cgXGjsoOlzUgeEGk2guqGDrigKd1UtvmjUgQzBeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933894; c=relaxed/simple;
	bh=wbzW4C+fn7sGjzBGZci4ZQG3TigY8Lyb/0cBH9DDb10=;
	h=To:Subject:From:Message-Id:Date; b=MQiET6RFB32yKlLY0te+cJ9ue350VQHiqdZ3IxcdnxznDUZxdBwCKgeBnjEOrTGqfNjJbJGUNqCPCd/xyKQTA+43YAOQgjZxLg2WXqvohdU1yUzhAFKO/BzLOkgQw0Pj038gL6ingEEVIE/JCkbgabFZub9fEKStV5SB8AYC2YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq2ff9eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq2ff9eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E52DC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773933893;
	bh=wbzW4C+fn7sGjzBGZci4ZQG3TigY8Lyb/0cBH9DDb10=;
	h=To:Subject:From:Date:From;
	b=oq2ff9eZFWrCn328f36XJs4bwXdoo5azW/D1TOzwUHrtrhokcGne+00GmS7rG3T5S
	 43CAYDEe2lTfVreXADjfFGMACO9kOKcU54fWWyFJ00dWo07uAlllhDY9cYgYvvIl5o
	 RrSTRsOeU9Hr4IZY3yVaTVmffIFImwRXat31sof9WyO4c3w5eQS3ctz3JGmqQIRPFe
	 7ez6Fybt6N1LnqQhcFvQaN68qvQlU+cieydndfGygxZA1r+hraq3iZvz0uyr7+J6pW
	 IqM58QnJOc4ZpxzmiQWcmlDytiF8WrN7J5Ek3MmYyZRJgTII5RvPHmkRPYS5xvYw8O
	 SF0/OP2spQ5ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBD1090240
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393389357.9255.8202568472001172324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272e3a9ead6156597d7b058da068c7378c7a36510c449ae233e9995c2b54e3ac
Date: Thu, 19 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773933893
