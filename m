Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195571E522
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705510097; cv=none; b=edzXyPe7IiJ//3lMuNRP1GvLrbkoFK6ES22KqQg4kNVwS3dTE8zRPxKFmzJX44GyDkoiAm7oc0lrkdPvswaLYEfdgPbWCBJJjxvW/gh42+vufeIlmT8SjUysuAZ8FZLZ8AamCbV+UFVoQv94Ne+/AkH5XxVPCfnWMcvhCE0pCwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705510097; c=relaxed/simple;
	bh=c5rruMboEb6Bwow3F2/VA2D6fDjGsSnBeWtxb+YbDfY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=W6Q8GmGkxjkPMTt68xvki5kXY+w515kFYySFNkVbqC61sNnbsW/nS8uRH7SD6cK3se8NhFJo/D+RfMBquHKncJ8upBQlvtJxX0MTpLMg7P0Lg3VbC6CjIW2sor0OFsLuO6bpfJ+MYVHcqkqFvsewXtTtLvGycRPEpUNykAtBnzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XObFQ2ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XObFQ2ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79900C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705510096;
	bh=c5rruMboEb6Bwow3F2/VA2D6fDjGsSnBeWtxb+YbDfY=;
	h=To:Subject:From:Date:From;
	b=XObFQ2olq38ReP0APXhMyrWZjDe1el1yI3ugekG1wZJfdUVOfrLc66j2zZi1w26Jz
	 cGVjD/NRpCUwKENGfca/T/DJWOHSAGH3z//wb3pIP/2BB9WnoEHRK/fYf3AwhNtzkF
	 5qthnjCdHL0L9AFKn6tnHpWmOhDPANv6/EMZGRkqeiz0CS0aHQiJoWJh+on9VJnK1O
	 EYZArr3QwuXqh7fVuc0EWfskH5B1JUbuJBl0z0Ws+BDuc5qhr9unxpNQNRM1HpjUJr
	 fZGiF1xQZfhTza5KdPJkg+SlNVzHeC3BJorvbxTb6cX5qPVrerUTutMJ+0qo9aItAD
	 +DzggN5ocVjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D051C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551009637.29572.13285670393551516980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d714c88ae9161648c7bd71d6916d4adf74aaec27b091638eb37b6cf85b0d3c0f
Date: Wed, 17 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705510096
