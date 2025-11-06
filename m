Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2101F21E0BB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762396794; cv=none; b=ZPHucobU0I+XBPTfT+pcctA9+Pm96vLchzD7WoG5VeRHBq1gQKf+kLOozCJuXfrmwMjtGvvK08Zz6PEzJ4FbmfVdwykpv/d5CwM9VfpZhEqqJFyxZGJQIIxBfkvJiD5xPqY08iQxJgmvzvvR88mwJ34u6XN6d2n63ihqtlUhgug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762396794; c=relaxed/simple;
	bh=8lCT7oIUMdqndc8gzalQUvNsLfhcNH3YiJd7SQ0pydY=;
	h=To:Subject:From:Message-Id:Date; b=ufFacDVxH4nNmqYe7hvEqNpbGIp0LBWTRYZ6tPBaAzlztyuclnSeZ+XlUy5Lg8xhqFyD/3LqJYbwPTzGzUhyqz6IoV00px6bEOXTmYGRU1jNIEIWGcnId4iXofY+zlV1pLW922U+YEmpOeAJQ9K5Nf5I78ga8jsKgzN3Jur5C0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR3AghwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR3AghwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B410C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762396793;
	bh=8lCT7oIUMdqndc8gzalQUvNsLfhcNH3YiJd7SQ0pydY=;
	h=To:Subject:From:Date:From;
	b=FR3AghwJZMUD9l5d2FrD8YhJnGM/BX6sMxe63mXJJ3ophXDxVviyT6eOKWX9gTbHs
	 XqNB8nYuZrmRfD63mHCGNZ+JDjEvJ031HFdJ01w8AybVvh6b7hPeX+afldC+xBO/KJ
	 y4/1yDgfQ0RZTYuWGGpgK0KtwGI9092BSSkvGFuxfVOXSBjpjvJpCkja7LyK3aocEG
	 szvdyCKC7yyXp1JX1boSVgUiuomgaOWgefuvhQtVwOPbR91x3AL/rQhI6fMyRsXUQ1
	 dEOb9qXcBQAakTW7fug9tKbMh4JXBP4lF4VzB3ar1yDw0dn8dkcZQv/1bmaw7slXMW
	 EJ92TpyMVt/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1CCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239679358.6896.5266039934336245337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee0c39e3f0dda07e97bfe69c574ce8eba947ed7ef0632a26e16034ca562982d
Date: Thu, 06 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762396793
