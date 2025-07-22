Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446B0288C0F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753180795; cv=none; b=b1yJ9XeF4EegmJWvU+ldJRDQvOhdoOtLTQAt75EDEQdnpmhTmOHLol1n+F1TdZyQMt4T+ohe18ajjKPeMcWuA+o1H8gbiBAAQmn5oUTmyXGF5hymAA58TYnVMhiKFtOIqVecQ1xs0MLnxOxYW4PDp/mKPCplddC8rJs9unb5VUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753180795; c=relaxed/simple;
	bh=CObFdvrR7pFz5J8PH7hsjKM0rycBoVy2tIyYQE76DCI=;
	h=To:Subject:From:Message-Id:Date; b=ffFvS4ma4HJKjA/zAN5tJeA4QsBLS0lMglWMR9YPvxZdo5smblwPKZ3fdbUE4ie/X1UQc0WWs5qEcq+vRS/2jtvqNdlB+GSk/KD8eI1BWgXSLN8LFnncgopdOu+jWVYExzlk4Jrt8aLuQn9d7t5qz5iCG+kRwjQlc8lSmdwsNkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTBtgY5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTBtgY5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90B4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753180793;
	bh=CObFdvrR7pFz5J8PH7hsjKM0rycBoVy2tIyYQE76DCI=;
	h=To:Subject:From:Date:From;
	b=jTBtgY5zyAHCg6uEQCAzPCAyosLVKbVzaLwIilD7rB9rUYIvdMUR9q97wkAZPpac+
	 gUubF4lcubXZTggja5I8rf4fqqYfTFuigHwBSpNZJ4DSh8D0BpqaVaWecaZ50EN0Up
	 OXp5v3EJaCkzoWwNsmBHe4VMCmMaE/HKS+YzbGjweuoihPXGlLDuWm6rE1JNR8GUBJ
	 Nw6+L98BYMbOufnP/1nZ9N0UxjQCz1zM5G3zIB9DAt78mgUyMaEJ8XFBvtKAHhHhXn
	 vgO90HqzUGMgQWW91j+f1AzVkHPfgUkaIdSvHyaZ5WU8uibbc7EWtN/kNIP1E9Mnqh
	 +sBRynSoivUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A16C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318079358.20115.6761184228308649019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42dc6c15cf8e4c3db110ec23a2a2c75efb7502abf916eb62e2971e1b58090e9b
Date: Tue, 22 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753180793
