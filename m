Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E663217737
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751191195; cv=none; b=LsKsuo6MsQ9T0Mfiui0tDN4exac6bhrbbSJczPRPAsD63MDA+cU7t7yajwmhAaWk4n+m5+pa+qsSWBTraRDfbV4YvQVE5HD4UIfh4gZwcsDPpsksvibJWXsSkyiBZ2Ut/DMO0mj8FKJKJvAcl+K6Tg+MhgAnXHdiitcUuBWFv2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751191195; c=relaxed/simple;
	bh=4yuO6YOOVUPgyKslyDIbc2DO9DiuexnvusZ+qM0p8xY=;
	h=To:Subject:From:Message-Id:Date; b=hxZybYfihGNZW2KBTriQMTOwt+3NMMlkbxbfdGUD4/UgB7FfxK8zvCszwPr3hkwyakyog3+i2zEjTBch+RuQWYHbfUseaWSIGX/q7pta6yMluaU+pGGz+HjxkKgKkA5fYH7mExayBLHnHXUG/ijokXCPQWr8+BNtqfG0KvJUkpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShX49sby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShX49sby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751191193;
	bh=4yuO6YOOVUPgyKslyDIbc2DO9DiuexnvusZ+qM0p8xY=;
	h=To:Subject:From:Date:From;
	b=ShX49sbyDlU2/XvfT5cltx2yf1eymaCtfvjkuCrtpas3RR6D1IyHh+6YL/fsGr6sN
	 whjjtuJYhGjuJV4TblJtQK+KIzg2SIHCF7rHFYQsrfDbqxlRxzkpHBFrLAiA+ye04H
	 /JIU0lWum6mKKQUKanxgo93EhntRIDEwpDSgyu9LpATGRU8yQ7Qqxit85C96qsDmW5
	 FwS0OfhOpmq/zBaYbhSdeaQU0gbDhIkypNNHoBk4TecnT1eImEwFEszmEALoVIyy8J
	 +9SXaGUAzz9J9xc0gPcrm1RNkuVT4tM1KuI5A0sD8scQYmCzpiYSX6i0xlPkUK7D67
	 ob7vM0QV8lQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C2C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119119358.24148.10230154755455910798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496d303671885a25898cca3d70427038ae6facfa17ec4bab762a231a6acc8843
Date: Sun, 29 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751191193
