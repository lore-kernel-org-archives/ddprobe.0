Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154753DA7FB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770201234; cv=none; b=qw4l0PITBu89bik554xOB8VgE6CqRe7ziI1o2bJjyWWTHFkGGgFeCiY4Ufqd+/R1QJ7+5vI0fo/L41t4H5U00qV81Eo5mk2XqgNl7bsndQDxvA622HJsNW5NlG+//Po2osLWOoUSb5J3yomfr/5Grsb4G5rTQy0uson6COH1Qpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770201234; c=relaxed/simple;
	bh=0z65WzdFtFFH8F+yFiFR8Ws9KUSOM43tgCbcxm4bQP0=;
	h=To:Subject:From:Message-Id:Date; b=Ir0RhRbrLZ13xEyL/5ZOBEJhoZEGg5lV5v55mZe6OmG4rfVAtdsGMUC2JsrJ0Peky56WHMtares1p4z4jFTHcy7L6wdjngbfRSRKbUIYL4dljS+zfeEQKgSVou5ySBAu+TGHq8ZscJWoA0SpzoVyR+/nvKF2CKqVUyZ3l8QmTEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFw7dzI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFw7dzI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770201233;
	bh=0z65WzdFtFFH8F+yFiFR8Ws9KUSOM43tgCbcxm4bQP0=;
	h=To:Subject:From:Date:From;
	b=DFw7dzI1jNI3kZ/WfRLqUWnX3pSrbiOiFA7+xCTo0UWLaxMUTaxnMFAjh+IHk0nLn
	 QAkl+wNh8NU65+Mxj7dRG0QssiEBaO52TjZ6KYLDQZxI1T752bPV2mEm588xb45fZh
	 5R1mGfrGwi3QzNvrsnivN6OLcj4siCSRCxY/DrO82KlaLPFzItHWtE/2O91FAgBmix
	 zvSuonrkCJnQUrJkDmGPHjtqnseTHpEnCvKqQfxXMNtgITn//3xtRqoU5Y2cZoJZ92
	 Rt4u37OOAXZ/+rYetiHqXnAnF6Bu82O30tYK/ftJ8OO2ATefSKdeVNZkRsQBXXHlf9
	 34J5OTwnYKhCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD76E95375
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020123362.19901.8568847214811124595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca5398b37afab45502be5ff121ecc9476c43156852035eb307e0547f96704ab
Date: Wed, 04 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770201233
