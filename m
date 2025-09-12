Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0B1B043A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757693994; cv=none; b=XYicD8/XfdBY1e+elSMxgHrQ172m94eGKCulSYxnuF0xjjRxAjab/j11Cqd+QamoMtAJhUk3/2mCcWceKNiGdoujQib3Pa3D1PWDcAKExcPWcv8l8yeOtZrqZRvVnpkxiWPlS2XpyzGjxxXmMBldAt8XofYSntDd38FE908qAuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757693994; c=relaxed/simple;
	bh=Y3+PKZcg2dp9w6rZdAIFUupXZqEmpPjqtTyvN16smmo=;
	h=To:Subject:From:Message-Id:Date; b=IqhPE6XiqVAJXHgACpIq+i12hE/k64SNkJndxbvZMJUHsA6+HZQm2fYGreW1xCEQ3JhDw1AExBxyD1V40CiemlJ0vh+uwJ61aEJKKRcOUnrZiJzCsfNX4zV460VEXTLsVNyCdo6IvNbs0kpYSq4bIDqbYa0c5ZG+C6TQ3eOYlMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVAMfW77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVAMfW77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757693993;
	bh=Y3+PKZcg2dp9w6rZdAIFUupXZqEmpPjqtTyvN16smmo=;
	h=To:Subject:From:Date:From;
	b=DVAMfW77LOkmsuM/pHAKo1eAbqSCRzPo6xQ4tuxP9lYDr/gZ9HwauMZxFtmCJwTxq
	 WyjF+SrSyWpUi9nyoM/KK4OjuMyYB5dD/y23PFPPezc8xvSi7kkbxLGQ9rXJrsjIIM
	 A8WAhmb0mZJc4J1N0Om7aC+JGlC8hPTsssx5kHazxwB16Fcko2iPfbEb5XSUDL/FKg
	 364bzJL+MANIStTuv+aPqBftkz1tHrL4xbX4AsX/6zawgsPhxWql8Me0ajd+McuVdT
	 kPtNM0Nbvv4JWqZEoOkBx5rLAvtFYcE/1xunwLNz+Lgf/HyIx+3bZWazPTaHHxtEOQ
	 02PBl/8lyPQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163FCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769399357.29196.11205961078606572233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9586f0d281b28712d991a6cb96e7efba4d382821cbfab07e4cc7816bfdba64
Date: Fri, 12 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757693993
