Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2051EEE6
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748170196; cv=none; b=CGRFvdNV38c7Pnanhnjrbmj7ZfyJ+RgJJqhBvnaB3MNg377RxJDPKAC1MbpbnCFBKXy4FRvSxKZDw9uu/JGiBLQtdWrquJ36lMvSce/JJC9EqpNo6A7o/7bk2cpdHi913ZH0Ek1ttmRquBCyLkgq/mHqgnmoG67HLeWOnCWJ+3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748170196; c=relaxed/simple;
	bh=GgTGYcIGvN3QpcYfkOo6w9ef9wPtQj4vVGS3hUge8PQ=;
	h=To:Subject:From:Message-Id:Date; b=BrCYJJCOYi0e10NaQ0OUFQ389Pgm2YmpBp/fNa41C7SjxabvRPFw6LybNz9ZYWAcydziEdDr68rIWqv7u0+YodE3f0Ms6mtcaVRbmzGYLacamXwzCw5J9bzC6HK8J6rRSAIjkX5sDsiIjI/OkWVHbQFUJUm3GUkRVKfop9EucWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH3sP7W8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cH3sP7W8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748170193;
	bh=GgTGYcIGvN3QpcYfkOo6w9ef9wPtQj4vVGS3hUge8PQ=;
	h=To:Subject:From:Date:From;
	b=cH3sP7W8TDfZVEV+DQoJU85pMTeraEW4DOmoi9mIG880GP4h0iD8bWQPVE3mKXQdj
	 dw7/sWR7Wbvh1P0Fzi1eLu0mn17Y+1C7lZkg976gsyY7TidlI6V+K8Q5NS6IOwOQc/
	 RmSZnWH6cVO0blJA6+m+QIQNzCVDnbtchGXmuzg74WV/3zxPfcOv0rnzDhwFptSTM/
	 Pvftxa8L67mlnl+VjGxMzkagnXbV2EF+U9i0DseZOMQZiOVre5f2JZLzr9e19P0RCT
	 kmvtRlqbsz5aGSOAxull7Pz8Gu5pBOrajmIA+gQWqJNLVKY4FH+iddHrc4jdyRIIJY
	 zDEO6nhSw3Qag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD1C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817019358.3340.3387767080619423005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1229be291d1dcf4f54ccb7fcfac0b66a80474bc7a0ecccec416a0315c2e959
Date: Sun, 25 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748170193
