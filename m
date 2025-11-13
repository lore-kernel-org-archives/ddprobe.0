Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6522A7E0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763057394; cv=none; b=iSUz6EFXmS9rtstxQSH0qpIbfeWPOBBjP72urliCOwjGDnG3xMeHDIKAxyG/M3rU9UiIc7AOF99bwJbyhX5dpUpbm8+sEVvBF2VRf7C0eIOqwOHzkPXATz0SCtmEKHbPN9K9WN6+clHopMnsjzF6A2XOWlasF9gvnX5obMA5n9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763057394; c=relaxed/simple;
	bh=44RjFPanzj6L1f1rvQcW9vNs5DY8UVSi5ESITQFkeMg=;
	h=To:Subject:From:Message-Id:Date; b=joVlyPozCMevLq8nk1B8OR1UOq0O5UoqO0HuNShfZ5GZD2viV5m/ex/rckDOb4JaPOWZHM2W1g6gRq5CYoUQbWfvrUjI2Oh4qiUvo/9IujGQeraPJwavhNeGSefZ67o4qAZbKuesu0SIrjXbHcSSTbwW7GnGnNEoATRONLkkym0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hhpe9I9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hhpe9I9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4063C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763057393;
	bh=44RjFPanzj6L1f1rvQcW9vNs5DY8UVSi5ESITQFkeMg=;
	h=To:Subject:From:Date:From;
	b=Hhpe9I9ygEJnXPDZLJCn1CiIyVgfnNe9tUITtPVFRckkzHX4njQLB/bZtXSHKD0l8
	 /tGtHox8KRW3obxpTY7r5DdBi8/3241BGMgKX0EgmB5IJ3uXZbSl5XwlGKgDck5q2u
	 7kjy15yGOPa/Heil41PJL7DeN4gQHPH8F5hQ5LJkqOj70LbOy4vcvfU5B/2u35pnZY
	 XqfIGmpInSubkCzsSnG4Ky+No9DY/dMbC17rr3hQ3T+59epRL4ShqIuSt9JeGhUDvg
	 h/cfc/rg+ZkVVvTvsMGPQYVIClfFyL0fp2AbzfkII7Os3jLoZd/tmvy7UDxu20MfPt
	 0LZgy9MDQmesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D88CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305739359.16293.2524017891828929664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a96fb14ad23f8d95063f8a6dcf17dd1de350d0d73c386f37aebf96b7af346d
Date: Thu, 13 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763057393
