Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437A518B0F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750698594; cv=none; b=LgnEWFVvLNMwlMOJmEjZGslMxMjf3R8W3fxDvSA+QqWwgz5eIqnllBDaoGxN+/CLyEVZIuAftMYC7HTkukbWiktsHdBNDBWwlBkBrs9Y4fac/jQyK5vTrJYXkaL80UTUGqG1td3NbGnZ13nbgPWUNkq3/L6Yk4xX9VpliXN1eTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750698594; c=relaxed/simple;
	bh=1QhKa1ePMhZqhmxhnyg0WC3zrMjXrBN9+VtBVGg7ycs=;
	h=To:Subject:From:Message-Id:Date; b=TGzbRs0Zt9LJ7bJ34gXMYHKzhlQOAQLMHPN/xHz6x1AP2+AX3dwkKdhEYO9raqsAkOMFTyHC/P7R8oEsMcObYrerafDBYenDJxpqDnqDRkxqRpataDE5myz2sm8UzdjhNB2e9YRBaHFGH3hEKrhA8R82ocUknXDU6B91niRAwxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGlypQcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGlypQcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C5C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750698593;
	bh=1QhKa1ePMhZqhmxhnyg0WC3zrMjXrBN9+VtBVGg7ycs=;
	h=To:Subject:From:Date:From;
	b=hGlypQcZBQ+/PxevKonjS6W1OYZim3zpo5ZpekzH5Y+dsfVmQxMjPWDqdHe1BHnQg
	 N2uvkkunA6Y5brUPCyUevUoI/9OfATJ8HvYAz1J1Tl5eD7ybCHlyaIP+DYJA+3d5lH
	 lYllZt+rqwLKRr04bTc87jkz2AN9akJPshigcTd/KvzCKopmmznXg5gJnOWISgTlQc
	 hHuWN3Bhd4J6NKuOB+cXkfdN/2KBEH5ArG0n0FiW2hoRUJdhXuXD/t21OavGdW2+o+
	 skYBueV9MK0ZRvpheUZY/c68KFAUysMLQX3coVcPrzMzPJB6a+ocbcYaT1s5VuRWoP
	 +VhsUzdXwNwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE30C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069859357.23962.15364990958117501346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f22fe9a763c3dc1f4e1da66e9899e95c336ed59be9c64bb430cdd21d4b7af67
Date: Mon, 23 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750698593
