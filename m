Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F641BF33F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750911594; cv=none; b=fc9BaR5gdKIiHoUseppRD+pUirqScH1QQIH6eMLjd22LOVb3ogdB6vdHuFrLQNSp/GqQxl7zMmG0YOnTJLgW2aXHnROs2X+/KVVpLSpJdu/QNTrCwYEg8GWcYg35tUDy6upJ0tWgP3hqhC1di+anbYyCHXOGurvbF+pRJ5dxefI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750911594; c=relaxed/simple;
	bh=hqnhphgLoTCzHOS6Zyt2iHHGN5HJBPj0Sbc9sRZgxSw=;
	h=To:Subject:From:Message-Id:Date; b=AHM0xKu+vLrPr+W/itVeQFWC+l4eEJzdVWGzdyQsXLqelPCotbYCJQjkvF3zt2muuE0QP8ITQGSOmkSRQSluJSnJM0eLgoCcqa7mHrafKmcwDYU8KP7/vNYn8ae6d5JiUx0iVqQn6Q0AYXqqgBvDFpsckkH4w/MGOw3iJp5nraU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMEMifwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMEMifwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC33C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750911593;
	bh=hqnhphgLoTCzHOS6Zyt2iHHGN5HJBPj0Sbc9sRZgxSw=;
	h=To:Subject:From:Date:From;
	b=vMEMifwvDxd3sH8h+5by+rk0h28UI32vxX+gcienAPYZSmeF2S9687CRnGWXwyCXX
	 WXq51ylYt5UnztxsvmpTqx4pRE+bX17TkdUGPRlEuFDkO8v4TNd2nzIJz3k/Unnfza
	 h6XT5abFCYAkwLo12/nzKdr3wuZRlbegtxdjvGb4rRn5mSMnrUIZA0og4RnxQrBbwK
	 kMAqNH9OKAfgT3EJuFq8A2aocx9uST2F8SecUZE6A5lgBdLkWNE1UsCXDsNZAwo+Yg
	 pqDYI/W8aj/3wiWpZzvO/MMhvvNYcBWE8UaPOXN3xwvYigIuQqXaRP7THoLtffuz0m
	 snfI2KoIq0Stg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C1BC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091159365.7379.2703199186931917584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffef65a0f82231778eb1b99d4dfd7db6af55d99c26180c054d216d85b7fe5b11
Date: Thu, 26 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750911593
