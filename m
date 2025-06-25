Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4D82BEFE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750868394; cv=none; b=I6OfxseTQup9HVmjG5p0JKHHjbAOgGQCUCzsluLtCgSugN+1ii0IHtPMQnJFXaqGKTFmytL1u3K0BCYTTEwphPv2fpII5GCmShd2BPwHExljUVw3aHt2esQoe95Il/QnnAOYxoNtMrLYfnE/T5ntCVGn+n8mOXJmql6Zh3OzYbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750868394; c=relaxed/simple;
	bh=Y1myYx8KuZl7yLlEOgQnn/V5+seN39dPW6qaCI+V8zQ=;
	h=To:Subject:From:Message-Id:Date; b=cM3PhT5oG6FGUd5e/qJRV+9CeUXk64vjDJi/rFwPMRL+xxq6bMAJx4CkvDvzjhu+R9cmSYPKAuAJBunO0+janYbc7uEyXdhkA/S1m2QokjA0mUbrFbbxScE1+XBHcXylPwTzaqTQUIPVlW7+K9LsqrVZveY66J8V8P/GxvFmcRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/bo+Gzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/bo+Gzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DBC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750868393;
	bh=Y1myYx8KuZl7yLlEOgQnn/V5+seN39dPW6qaCI+V8zQ=;
	h=To:Subject:From:Date:From;
	b=Q/bo+GzfjOlmg7K4lvz6g6gscQvKmI5fKDEXowe0rpbC0VTofYBb36tY+QnYFZLs7
	 cQqZCVm+5212Jf+HZWCKa7360ZnOYOLoN9CJ29AyWMfu8UZMtQkx+O7k6B1S7sH6Fw
	 scqPjzqbqNCdNEu7oLcr7L9AAkAZ6JVuvk02M4St0aKi+zCIII0LRBh7iqHq5Xh0Pr
	 BqNu6YHS6V5NcWyRJDh5LEb9oZDd+OBPgildU/d/J8kRyGiTt+fzQOYYtQac0ZinAt
	 VeQBcKuehUnlkegxEJ4mZu+qaRrp63Ddo7FOefzCUuP9aQWc47cC7olexiZnqm/UxZ
	 w4eY5x2/8CP9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C2C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086839358.18431.11762438581346954178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db10690fe77dfeaaaf8410479d67f7b9d5f7a9e0287af1640fadb0614a682da
Date: Wed, 25 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750868393
