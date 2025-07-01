Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7F72621
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751411394; cv=none; b=PJ0D9xQk8ZCJ8Pf7TiK5+zYjwghP+YYKL9N2zR3YMA2/inG+LJbHEMRl+GPEBCKsxhBsaR5UIaLKAorWtQJKcNX9z81HMqE6+cZdL5xKJTvmq6aaSko5bE77xEc60X4+KKAmoYdag8GGRVU9sX+OKhpjfBJxA5ZE+8/mHKdebzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751411394; c=relaxed/simple;
	bh=59gzdcQVuAfG/Wm0UCR+cNQTGCdHHUiOwKHP4CuStfQ=;
	h=To:Subject:From:Message-Id:Date; b=UeYXUf9/rfy2ZhgWXr1Q8j1/GI9OQ6AGbZb5jDhNRXDUYq6tKiwsw6l0eme5zYc4Xb90+iy8z7YBU71YCgUJlBd+8GKzBTQK4dbuZVgPEUWifgLGfmHIULmppxqLngWq4VZDT5y2k89WT9LktR8/fICa5+tJQKArhc7ti+pBCXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA/OaI4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA/OaI4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751411393;
	bh=59gzdcQVuAfG/Wm0UCR+cNQTGCdHHUiOwKHP4CuStfQ=;
	h=To:Subject:From:Date:From;
	b=pA/OaI4lrwzlSLGAuyCOfP4gXHCfoHmD1jym/w8oxKXLexJoJ9tYsk5huxbOgAbs9
	 VnCx2FHPuG4HQOffp6jnv304LhfzeFcvQ4A9KWQ5YGU7gyJYGyhPSNhcifGU9kjlsd
	 PN5148X22XK9GVXTwbiYrIfFzv+hGr7VlaqNHbRpuz995ei+neNkHDeKSrIzSZT2hx
	 5YbYjSPI/BtdQBx7/T3pUv+0WlXSxh2QB9oOxzJu73EmsmGCTD0D12AgK3NhCC/IZ8
	 rXGs3Q2JVaIeiDCzk1hVZbeIxMapkXTI5+mdrEjzJK2VSCxNG0vJtKtB+gY42RuGVz
	 hFdNag5CWV5bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA5C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141139358.2629.7647837915505582151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3224de5512bc6d8dabb6b83b4367ae7416a26f2b52ebcea2838c7b154d1262c0
Date: Tue, 01 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751411393
