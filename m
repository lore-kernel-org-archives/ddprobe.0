Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD661EF091
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780639474; cv=none; b=cS8UDu6CApQlPmdqR2H+GjklgJA6Z8tytnBa08agqjqixhrh6H2sosiyugrTWgnVQZVnlVBCPQgwuba6DwfqvMpOis4S0tRwyF/6PGdpzYxicvHsQx/VzIHohljZ7IMBikoctCamR2VmJfvs/Ec/oTQuwM46l2NZkpFCrUl6f50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780639474; c=relaxed/simple;
	bh=0ImmTznoPFzL8krPGzzReehyIDhyh7IjpsejT3z+sUk=;
	h=To:Subject:From:Message-Id:Date; b=Mhh8AyFT98Ad5w6JRlrpXGgOspwJCnVqnQ+ttyahaWImHEwgVycYnBJe8iqyG1rBI+Xg4FQJNXdNVOxK7vvsRiq9Q/3pdunCEjIOm/0TeYF318wb8uZ/0XcMQn9+Th+bRDsKb0qypmQbXbVk2F0nF3BGj4EI2xImQL1O0fWm7MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsvdBJqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsvdBJqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74B7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780639473;
	bh=0ImmTznoPFzL8krPGzzReehyIDhyh7IjpsejT3z+sUk=;
	h=To:Subject:From:Date:From;
	b=GsvdBJqjOJ0KvBx/b9G1kJldv4T0Di7w0CcithbQBMZ1sAKSYUqVc+mEwarWc4jG9
	 6yguIzAb88ocqUz0bOMPLh9eAwBXuI6BuLrPZjfegdhmKWjvYKhUvXU/GxU6du1x1v
	 lJ2dfnUYSNpXRRrH4+dWmz7TzfT0V6r7OYGwND7BQpkhBtp59KjAgB8C6YrVKOculw
	 uHkG4m54NqxdCIj8V7M+J3ZZpZHAoduLUqsottMJBJlDvjw8UsRPpottX1M22rPOle
	 Ky0S0KbMfFi1RD3+eVi6OX0DrQwGcol5pknD5VcrVOHQITfvsAPBMcp8ZvbywuDrrL
	 VQw9edg53NhWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB6CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063947368.12319.11025206570514251117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea932ab994857c717943f24f85bab1ddcab6d897d70592e2e8350709fb4353f
Date: Fri, 05 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780639473
