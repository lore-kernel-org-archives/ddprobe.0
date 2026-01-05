Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BF32701BB
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767641034; cv=none; b=oYFkEFzvXZtU9/NFA5VsRb/IlIlgg38VhImdlF9ZV6TOSV7DdX2J+2R9KnYE4eE//Et7OJ+0QKrALGYsru6l6FLlzjkpuwnnG5TrRmywWx5ax8uqHI7t1ib/rtQuGP3oKzIRwW0G5h6nbw5OdYBvcHn18sxRE0OqglmUx6jIAJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767641034; c=relaxed/simple;
	bh=jxuP9sf7V6sbLWUgmjuYPwGOecVTskuh7Kl+H/aTz58=;
	h=To:Subject:From:Message-Id:Date; b=C6pSf9iNu8bzkNZUVlz3acDavtegdiORsUSoGXAo+a/kqlJYLrXkAxQISItVPLx8nfeST1hZXWJGUnPmviNWrG2dTPUDWemtLkFbbFqlaVhDCeKO+yckskCKdXpZBmTccPns2o/lmfPMSU2O9UM98sNRDGptX5L3lHwxnoNPfAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjwwqzrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjwwqzrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFECC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767641033;
	bh=jxuP9sf7V6sbLWUgmjuYPwGOecVTskuh7Kl+H/aTz58=;
	h=To:Subject:From:Date:From;
	b=WjwwqzrE8IlNru9icWznNKoCaLEIU5L0akyE8tmodH/W9xtunl2B8xocgyf0OHig7
	 JMcQDzc210ETlF3CvY0Wepc04kJnKmQPAqKeDSaES7JEieQTgw6veSMOkOStpQz8fl
	 zjVe91LPQlX7Tq3RJRkJqmXrDYAuYEpnlIuTA8poVyEB+1MYWrlerSBZ6mpWtuD/SM
	 7uLMxTH5BzoGTL9sSKRdoW0/lEzLVmn9LzHXPOA1/Ld/n/k3Zcd4x5+6/B1PSZpzs/
	 aPkPqlWGtigxyCvaw7AkrNEV/frRBWzteOdTaQwYk9qOoHOmtatPPACkFU5HlyAmpn
	 eZlqZ6ulck1rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F9C79FBB
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764103358.24653.698267512998807815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bad34eec4bc2da7847b16de9631800df6ed40aedb9fd934b35a0f76465fb291
Date: Mon, 05 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767641033
