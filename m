Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E02DC77F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783288114; cv=none; b=nDyCN0MnE6Gwi8A/4wIJFdilge9uyIWRBBZop2laQw79fl6JWa39chXw+C26Ccikzo2BIhA+J/vknbq8JWa5OSHoBGGlW+Dh0LE69lMLaMR8YnJrx8hxYQGc4OJ2q5ljBp81nXRUxODiN4K20WuiQtJpZrgIjsJfr2l/FLKG4X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783288114; c=relaxed/simple;
	bh=npak824gOA/G1qe9qXVbTBcYZtO40F4ff0rrN//5sRs=;
	h=To:Subject:From:Message-Id:Date; b=Gdj9vJxNHUMLeoKpzt0NtOes9OgWPRznPe4AMxvMuTpW2IHh5Qp+SKcUTnykGHoABBeMfYNHwFQaHWpfAO6fGHnEo3eI8DR+upUGSMedd/EW2qdTSvkJur6kkoxsMDeDKu0T7cKcgMv9F7F2Q3AO0YwVSt/Il5XPJkhTragAkmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5CeSop3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5CeSop3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FBDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783288113;
	bh=npak824gOA/G1qe9qXVbTBcYZtO40F4ff0rrN//5sRs=;
	h=To:Subject:From:Date:From;
	b=J5CeSop3/dPDS71FfRKpZ3A6Aq2SEZ9fNRsrkRGjtpeSTKpJmoN0kLmS2yBjtYbIx
	 TvQcsbaNJe3lIbPehCylnW+bMHkzVzE/G4K+ol8Q46tcfUt/Bo3gaWKTUqXyzRv85v
	 PRGG7ZveTZ6dP9RMZl/dDn6Lfu/9V0236VlLeHM5FpXSXRF/uKgjNAqxJgk8WUIGZv
	 0CB1rzs0b2v1nGD8/IUl//y/vElVusrzr93qKIaSnK1wiTkIDJeiqKdAe1zTfWkcMd
	 FfZiBaTdV5mjvqpoAS8ejDoz4obJIEKPkWZ+Gh9Tr43lKIDLnz0SVgBUPsMxyUOHfd
	 75WsFbxVpNjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8994C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328811368.11903.8778447768637595238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec2c3a04a0f75cf1d26d359888cc7f547b32e5ee2c207077945c80caaf2e122
Date: Sun, 05 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783288113
