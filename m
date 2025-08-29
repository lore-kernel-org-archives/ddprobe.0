Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42729282F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756433394; cv=none; b=Gknry3EoXjWd9QuqQEoMMz0OPMEbK+QM+XUPecZQmpCUVJ50NHXPt4p6dE+8JkGuKxRGqEzqnK49QC2IMfnKMwWkG3ZqBayDwJDGrQmsFAGhgUBt5BoHpvVWoyDSxBMwR8nueJPidjbXYoy76qgaAQUigdZUJP8L6D5c5yQ9+Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756433394; c=relaxed/simple;
	bh=Xrf7G7dF8mAqM7JdEn4MSdx99bJZeMmQbQ55pvLIpRM=;
	h=To:Subject:From:Message-Id:Date; b=gqRJzzBl+eZZXxTIIRhyLw8twbq2B2JR2aTx+j75xIlaua2BK0DPTAUEa0pkaY9hk0jsF6A89ZVsujafGUQuos582TXtOt37KDeRbqs/+UeYIM/v/duKBANmKFjd1wEmxfsmryCI/eUGxbU3zF2z3YH9GmagPvQ4JzLWgh7I+zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al4wics4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al4wics4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F78C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756433393;
	bh=Xrf7G7dF8mAqM7JdEn4MSdx99bJZeMmQbQ55pvLIpRM=;
	h=To:Subject:From:Date:From;
	b=Al4wics4CinbxHoMH/wvmBryYc7mjjwm4kfs6jIcUnIMOEnAxTBTToFWQgw2AAnct
	 4mSiwSE8xsUhQCeDjau82H0+b4XYZHH73EQV1tkid/zUPF6X2HQtSY49n4knIM1mc9
	 Yon8AREFwweG5MIK513GJ+f/suW23B4eK2R6XK3/RGTX/ohLDJ7iBZZhUyB/uvAg28
	 kDvp5xXaE5y91nsQzzFqNSwP+0D3qZILGkoXucdY1n/jPMzXhryIPAeFUbb65YK5E3
	 VzWhrk7bSNseTiweiz3j9pf8hjKVnWWhN61cR5Fuwg59QWDoxUeVrZaudqrBUKOX8O
	 xy0F8GwD3a5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C7FCA0FF2
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643339357.17096.12484195219668751311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2b812a15e87c67517690db5ff4bc1a1bd670b972b2efc594ff41033b8847ab
Date: Fri, 29 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756433393
