Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D573DDDB1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774608293; cv=none; b=ilXEXJL+9zkhGFmr9tQz6LxPuj3boX7CGogDsK5QopXsVfNeH5zEtrP0PMMT9iP1iEpAagDt0mi+lYimu3mJf+OPQ5ZPzF2129EP81RMeyzzNvfFScOwYjxa1iikH78l5OQ0+4xYVd//ylI3iIrXGc704GeoRepHoDgMvGLhzo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774608293; c=relaxed/simple;
	bh=cpy5F8MC1g/vaOb3bnD7KNNOyeW5GlD5gCrfIYM6jxk=;
	h=To:Subject:From:Message-Id:Date; b=LMBtrEHIgV05HRoSI9wYHyl39Fwwr5JbbunSPkGAhy4oZvxTtGlNH7vwgjiGKWu5hKOiHewdDssSOuHhCYtQujdo3y3j+o973PffqvBJvS5wOgFGnKTdeUyOTkl3+tJ8oQL2MN34wj2ANS8q7nVQlJOaPGMYSxE9egyK3tiTaXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gbp0fCAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gbp0fCAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A884DC2BC86
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774608293;
	bh=cpy5F8MC1g/vaOb3bnD7KNNOyeW5GlD5gCrfIYM6jxk=;
	h=To:Subject:From:Date:From;
	b=Gbp0fCAGEc96LcFrZyOcMTCC+Nth0QfC1BoZ/qiLcWDJBC+5d14a4U40R0yueQdA2
	 XZm1d3POFfU7MOlJWr8WCHS0XISUyUueIBheaCKYsf5v25kZx/7BfYKd/Lzrp3lmSj
	 pgB53pmYw7SnbDu1Y82n+geIZ42UbOmG+kiE5z2bM0mqyfXfMa0zEBVQ9nWPELPAY+
	 XcRLF5V5WMiseRyyZQ6i0sND6Rp7yXbPjfEtqTixQhjlehLCtCdUQFj+ElIuUxxoj/
	 76lgw3Pc+Th0GOoBI9lZiax6mYGB3jj4CwHvQSAjCuubt5F3R80OQG0dSf7Px1nP7D
	 7aoybfO7d29/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BD910ED659
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460829360.26641.8462027462836440795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93df32faf70c0fe22be569080e2cce490d6f8b604132b39695b44da2c4d60468
Date: Fri, 27 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774608293
