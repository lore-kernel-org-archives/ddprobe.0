Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34F211287
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737561954; cv=none; b=MfWxDDHDhG/8MWA/GudHU1rjBobM1yHg5/8auF2CpiRNvbK8uOQk0yLlk7iRLRb8F+JSq5a38H39Gx2XXpZ7IcvOwSlEgPXoBacatp+r0yDY6fXsuNBmRI5RhHf576LiOlzXwzDIDQq80SKXOEx0u21C+GolR/IE2gjOhhXqHhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737561954; c=relaxed/simple;
	bh=gHSYUQ8U1KBhH7ICyzsyPlr0cDII7YMK9rOVqQVEnas=;
	h=To:Subject:From:Message-Id:Date; b=pUdrPmY7Bf0ikrtZJBacjKwFKpu1qDiuLkNhCGMGzJOkeKeGer3Rk32UVBiKmuisTlr5qNllgD1RojDdQ/Y8IuvOYh+vVjnXr+iDnqnsnomtRT2GQ4H5sMIA1SbEE6kR8lSsP0k6uSX+4uoaJXGZjZ18Eae+9WpsMtFmf/RzMMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCp7WOHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCp7WOHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9349C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737561953;
	bh=gHSYUQ8U1KBhH7ICyzsyPlr0cDII7YMK9rOVqQVEnas=;
	h=To:Subject:From:Date:From;
	b=TCp7WOHwQtnLZR4soIh8lQ1tCHAfrJwoZc37RrAgELOl5sbmjx5gUSisqsQ0f8+KI
	 xRO+UROGca0buiQ8KM6zyIOzYH+kx/ZcXiDv3WYJ0U6R/44NQHr1swVZim9fc1c8ex
	 ThhJDOw4JXSad5ttJ5kHzZgHssuwoH8JNmMLacjaIQg+Fm/4uQ9pf8zbZd9ukQ/2ED
	 +mkVinTouQSyIs7L+T/WMDFc+z3a6SHFhQJ1oFHOjZcYFE/0P590FAQOpB+Lcty0PK
	 9Zf+zpBU6QoL3WjuFObh5A1MtD1rSrOU625dq0+iwO6QBjjNCvwzhnRgx+seMnlHpa
	 4/F36Ch/8subA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988CFC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756195361.11328.14783919679031776802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025274cf04519aa15f71d89154399a67b38cd4c8106966449d1e23966b57d1cd
Date: Wed, 22 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737561953
