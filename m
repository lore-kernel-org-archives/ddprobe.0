Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D9C2AF1D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728453354; cv=none; b=d8zewBt7+DjlWyV+t+/RaIhZosxf3JmG+d5yMEL5ServdUUsmaJGHgK2X4icQqG0LQdCYYplsyAy6IHzNmx4U+tAeyu9Uw+ho/lAwTwhLqkWDoBclgVEzhabNKA/YmgY3+CaUq01YXksZHFVZyHxD6Bpi4YKMCLu7I/laaUP1Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728453354; c=relaxed/simple;
	bh=3UnnqLB74vib0mzugGbt8zgtKwCErAiCyd+t4HQE2e4=;
	h=To:Subject:From:Message-Id:Date; b=rLd2E7HtMF9vMXE+KOHNZGNl6oA0psAKY4qiVV244aG44+jV/QeVr4HatbCcHrVpni7QqrExggexKFjD8zpF+rxy+3qtXextBc3cWW5B9XYOFV1eSOpHCO+UuKD8oTUf5UrcsMbH0T8o2NoYKGXUUNvt0TiFVoHghxX8mEKSThg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCwLL9xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCwLL9xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6354C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728453353;
	bh=3UnnqLB74vib0mzugGbt8zgtKwCErAiCyd+t4HQE2e4=;
	h=To:Subject:From:Date:From;
	b=HCwLL9xiJgV8Z/BbNemlhfFP75y485wpm4vA89S8zqYtFeaXIOsR2xg9Bea6TzJKN
	 g+bvsqbHvI8D9oN7qKB+GBm/gr9tOnSKkxuK9GUsDDvm8jyL7LKGxlooA1tbMMrTdn
	 hEJykyu0aON8WyapXC90rCopVSkUbTH97q3ZRc/yIDUPeYzePWQlFY2x+IaGgDfSga
	 sBWYvPOIwZ/RXyVEb8tSLVFv1Ql20GOC3hIzB9htmkRihwvFHqqcEYu+6h2OD+ng2t
	 cbcH8af9MtBORuLaZBBbZSP/wQKXAhH0CFzCCnxTLWAf/eprc4rCgCcAidMRgVfdqe
	 lJJT3vMaXIa6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C18CED608
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845335364.798.3366577708291231739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647908916df4f398e8de9c248c235d2a50c27546e673b2852130dcb3634de719
Date: Wed, 09 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728453353
