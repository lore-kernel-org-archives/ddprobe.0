Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A10301704
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776629854; cv=none; b=AlV6PYhpCoSh4KUtAuyreKQfN9XO8Z++lJewgAjHl6MH9aQXGjS393MIwUjU8CElPw6Dbrh4bGfQPQDby58BHHu8pbJP+afyOMPCP240Mk4Rl+Zk97ilmcpdgrLsX/bIVypbgw/aq3IQ2Pw/oTtIgNU/g1oCxdfHtu+6jnD7S5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776629854; c=relaxed/simple;
	bh=IhssKdBLgOXSte6puuMVqLJaJNHmFky5kVEezGWyKOk=;
	h=To:Subject:From:Message-Id:Date; b=sNUQYCxHwmp2ei4FGwkMurRygjMesTWhhFOPfRvC2jJd1ADVdp+pU1yAQiTI+ZOmAaK7GiJQSkd1WhRjrcVS+odlIczNSTc37QHihPYZRO3iQb9MH31eO9NgzHHK3QVv6LjwJP9Z1qVcOsASSfX/IkqKPkPHAfcIstMxp+5CKEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBl1pN99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBl1pN99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE157C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776629853;
	bh=IhssKdBLgOXSte6puuMVqLJaJNHmFky5kVEezGWyKOk=;
	h=To:Subject:From:Date:From;
	b=qBl1pN99JythD5FnZqg+5+N2e14HyUt3LbVvq5NWxGH0bTxxkndYuGx3rfmTD07CN
	 TVgI4yn2L2n7JVg95cBCrADlgO+MZtk/o4LSQFl+5+4hD+jWhKsvPq810KdWk7R9YP
	 HKDoqzKI6mULSZyPguK2BYkSxq7IBpziqFVGwnFu0qVi4vhownXhy5FXO3zdYmB/8q
	 tNT8TLalOYOEvmM/M8hx+dknrUALiAex3w2j7Rs1i2yzITBDSE6rMgWl9NuFJ2+7tv
	 hxXO0AO5NBf4oElCRMw/eh0BQxsWhLTz5+B3ODtNrd3ZqFjBilEu+OSO8qS+B/JPuB
	 SAGm2vNRDr/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE996EA719D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662985370.19545.590822668411486506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fe6a1f7e2b562cda2af733bfc274f55834b0b004cf83725a635e61f4d77af4
Date: Sun, 19 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776629853
