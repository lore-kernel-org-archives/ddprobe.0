Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0364136655F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774923294; cv=none; b=DRz0UGUKRDrb+9iAusG6uiYhhqt0bgl5yOre090FQ5bHQwy4HMiZ+xJ72V6LcQkK/z31DP8o2U2k8DtPoXHR27IggllvPEtafieZxdlIoTWukXkFEjLDy/RVfCwlgtIcgEtJKmACaVfTJEZFd4/+vptqmXHFpdURtAjtRcfA3i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774923294; c=relaxed/simple;
	bh=UxWAUxRpykiqW8yEXkWcKfXqwPq3+KnWg0WXvMCVnK8=;
	h=To:Subject:From:Message-Id:Date; b=rLxOEctXXkRjewXnu0LqSoYOO5mNtEB+VJSA1yS8lBvAKJyZgSvERjXdVrztstjB/yk7D8FOODnkUazA5NUj+moJGPv7bAX34mMSiWIdAXvhuEc4lSx/9wGnr6UIBnL3jPBTVLMVC72qPbXqtMDyGO3pp6bvxsPwnYVks+iuD5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aACkLDjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aACkLDjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774923293;
	bh=UxWAUxRpykiqW8yEXkWcKfXqwPq3+KnWg0WXvMCVnK8=;
	h=To:Subject:From:Date:From;
	b=aACkLDjc3MkYvsZVwPfWuZS2vKcisg5Tm07+4kawPGuMvCovuvb0qP5RESC6CWodM
	 Eq99dBYkTJ9EKwNUiPdMoLjgINNsQ3xI5mmFrjU2XXJnPC0hEd4PnuIcsk+I47B9X5
	 Gms9AaPqdqIcc8nLscRhkFEXHlZVbP+ktL1XGyBeXKkPbFeus5DtC2YPTUbQ6ILgYH
	 lIQ5Echb4cod1ShXRSxHzjGj+F7XVR0R43dXy2qgTEH7kk4oZqysF8QR1DIpRm8ufm
	 a7s0in3Z4qM7dP1z03LsC/7ihe1waoK7N/ZCijHedPG21Wa5VEwWYHCiKrOpUtQ1EL
	 m+EK77saZz4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906BC1061B28
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492329358.27879.3758441204545357099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b651733bce4d3a06aed297700181cf834898b4807fe630098fbc15ce811fc3d7
Date: Tue, 31 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774923293
