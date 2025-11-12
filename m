Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE021D3E8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762969794; cv=none; b=t7kRmkGiGjy52DdZfQbvtyh9bVxAaahFzh+ZJsb7P19q7PCOwpwyK6Zv5k5EWzu6lARi1cBel5ME9lyXQ+OrQqRuPxIHIyRpqB3a7yPqyWL2DuA7AAvcYMzNXqcjfFysBjIY01gxjUiCFOJAxmPDkKXyAZXLHi6RHLp48wA8exc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762969794; c=relaxed/simple;
	bh=fmg96dTQAHdgOXkWWC3mHdKbo4q81OmxFSjEht2pq30=;
	h=To:Subject:From:Message-Id:Date; b=IQT13z1MknvWWztj2sDShAefTkwAB5aga34V8hFs5qFZgMoStNfvkwsJ56cTq/cgcu3zss3Insb1GD7PrVWDSM6fOe3n6uGsAeDDH6EKysdm3j/3dUfYkooGcwrkvb1U2qpE05gjN6Vg1uh04tEEdI+tmVW/XdrurnagRfNZMXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPuJRWe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPuJRWe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A177EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762969793;
	bh=fmg96dTQAHdgOXkWWC3mHdKbo4q81OmxFSjEht2pq30=;
	h=To:Subject:From:Date:From;
	b=GPuJRWe10V2rcUfWW8n2uUxkLFkziEMdjfsAEZ2uZumAKRBLBRqVbZcC+bQpzaaEU
	 7egObqSHQ5UBnfXo10Hh8v1dURpEMJe+q79NY2RWYhMrFVBbUJMqdxHd/1054wa1Em
	 SxbZq/TC+JIg0WcgK67OfC0wcUmQzaTO9eDGxuMjyXHDc8tWvNmkPxAU9GrPiXLrVN
	 c5u1dLtP1OzOYs9Wa7QK00mStW96jp1r86MRXRvsCj5VTwlrVFJSuSUvt00OQgVg3u
	 YfyXvXbxcoXO7aUhPwR/pbiRaIqYDIxlRKaBQIZuKawtXa9R/JokEZf1e4o/zWa4VA
	 oY2wCOCMV7AXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ADFCD3429
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296979358.8359.15060386571486757610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c48683460fb8859513f47795a5529cd4db193d1c5594da00ed71b167968db5
Date: Wed, 12 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762969793
