Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562F03FA5FC
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785969034; cv=none; b=uK0by92xgAwia1YEjnT+Dk7HRpfsOtu4FldANbMpZW48h/0ufAfXWyVp2awUGikJgFuvThfDmtukSO1NLs2VruEYYQYArW3EGRy9KBnQNFJnjwYFHzf1yADrHPhm9qOtRrdueavlUZ6kXKBYgGodj83h4hEZkDu1da+ByFDeQf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785969034; c=relaxed/simple;
	bh=3Eb8alF9yjr+x0l6c4At1d+hzL8DE3KXrOTaKP13rQg=;
	h=To:Subject:From:Message-Id:Date; b=i8944oSk7dv47eoE4v0PuTfrFQnE07pQdXHG35pVUc1hskdO4o+TzMg6LwczWzFow7k9d+u2mZL1ADZcCXK2BaTGmuoWK+Xy+jtU9usc8bQVByOE3WALeacFqV2HL5ZBBLThaOs831NaHN1YKK/F9bwRKMjmxNjS427kREiJig4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BC1J7ZOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BC1J7ZOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62DAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785969033;
	bh=3Eb8alF9yjr+x0l6c4At1d+hzL8DE3KXrOTaKP13rQg=;
	h=To:Subject:From:Date:From;
	b=BC1J7ZOmyDOqqkuAXDM13749Le7fnItteoFvc4POdBGEM8oCS/YLsOCN19/nD/YzT
	 ByEfRBaBhoUjBZOlvtJDJTxd+VOelWHw1n0Yx61JEqebTQrk+8DqgI0Tra2PxRUZZ0
	 7efKZNrYv02gcQe9jhYmkTFWvFqkBr+cBg/yWR6xaLOXyaFK4C2MD7Bm/O6H2kYSsn
	 TjRwk6ubcins7ohpH8xwcR6QfweVIWF5MawwaTmMgBEkLDED9Eu73uk+NRhVqeHB5K
	 kdJlz/fmbf1LNQYbwsSY0VltqPWXD0LYX9X7wr1Va6UBhpBykDesbB2I+140R2YpN0
	 OUre8nbz88V2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2891C55ABF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596903369.416.13325143717609910135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b954e41316775c04852d6444350baa59596fe39042580ac7c1e726d716f71644
Date: Wed, 05 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785969033
