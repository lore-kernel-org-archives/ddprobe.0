Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18743340DB8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769090034; cv=none; b=fFfUnAccrYGEaJe2CpagsVmQCBZ2zrSiESvhLur+sC+VQPuOktPg8RBLtL9ilHkO1DFDpdz2OWJVTab5ZuF2myBwqGoz5h+uhkhuNUvIboGCMF5AHC+BKk8VgKsfeNOockOeibhwLrllgokBUvc+n61giFKDPWRpOLLfXrAxDq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769090034; c=relaxed/simple;
	bh=ixy9DEXj0po0EcKBtbcyE0fCyNxF/ZNVFeZuRIq0U8M=;
	h=To:Subject:From:Message-Id:Date; b=GKbiwD9/z3w3twJYOMeZiMWwqMfjjOazKdE6lsYdapFVDgXsxQzdq4cvPtdEQ1e35C2Oe80tTMU6eeW0ASp4BlypLuo0eOcJtide6w2mD/WlpXrH1VtUrUX/IgFJHjId9Vf4LVurIY7L641IbGgdCXkoRQkPZggvEFbODLBzuM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f99cwrkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f99cwrkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769090033;
	bh=ixy9DEXj0po0EcKBtbcyE0fCyNxF/ZNVFeZuRIq0U8M=;
	h=To:Subject:From:Date:From;
	b=f99cwrkb+Al0FRjVzLmk2BBGBDbpKP0JUMhKrzrHZ+CfaaEEg64cIIiP1mX7b4ZKt
	 wQPTR8jOvu40Fq/9cGz7cguHpQgRBHojJPTNJrVbvL/1De8Insv+zSAPgX4+d1wm3v
	 ekyfWq98eEc/6WyTuPckOnqgDO9wKD1kmkEUInvDs5/sFYRkctdVDbiPhVKtcL/N2m
	 yn04yPAQvb/gOT5tdMMHNrilIFEwTyrOJblJN12i2Ztyz1u+txhJ2EO6LJYuILEy5p
	 TUxi6O7uLl2WtkLE5dXbdYQ7nT/J1g/L7G70bNISNVmwg7vh1K/oS0pv4bZU7jJg3D
	 KBEGXUHaXIbHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90276D3EE67
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909003358.4809.16824944148046643032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5064a360281eb53e64c192ec359478a231bb06a255df414d65afa5f1339ffd57
Date: Thu, 22 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769090033
