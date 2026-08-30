Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674CC3A0E85
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788099634; cv=none; b=l7z/ro+k/cXM+uXQXBZy+ZWaPogJH6XJDq9c1SmlhK8/RP51a8R/H+txPXN2Cee7QKMib3qesmRzZMYhRauTPjEHpBEfyHypsbV8Lp5nb74ptn3M9OhaVvcIGiCiL4bNsVA5UG779wpaqgDjRaEbf2tFJOkgcT7+/Je8QS+PLX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788099634; c=relaxed/simple;
	bh=Rv1Hn9suizFLCfD/NPnaI559c89DCiWJOfngkMtfkpw=;
	h=To:Subject:From:Message-Id:Date; b=Kd1okKSkW0Y+N2fwqHkQ775/Cqxdv5zetdZHfMrUCFpY9740KBarxke9La1qWUM5t0SsLJ8pi3dIu4P08rim5pzLmVLfA8yNbNx2MhDLQZAUc25pxrfSJJBqA/p06GZHNFb1PU/1+forZ3j+hUlVep88DC8Iq8OnxEDnyC7BLsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBYOoJ6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBYOoJ6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7ECC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788099633;
	bh=Rv1Hn9suizFLCfD/NPnaI559c89DCiWJOfngkMtfkpw=;
	h=To:Subject:From:Date:From;
	b=YBYOoJ6iUMEX949EKtVsg4rNtra/rg/7H33Eif5J/c1P2iR5dXuG2Hw+jUomENAT5
	 P5YIgVEyfQyIyv24au+QQBwQ9tZak5gLlomWJzpuPrzZ5Cu62kmySEZ5Qmv8ELuruO
	 GjnKUr04Kia9J0Y6Bu/1fdJ1s0vkHdNzfeR40VXSXehIi/WK1TzNwOFkh6ud8KWPwd
	 FoESO0cchPy/UygcPquh1oPEK473FvkTLCExPyj7jKI3DrFXmk7mOst3aWN4luE1HE
	 7LXrcMu7g2X3Q5CieTieiGROgj+HEHsWHtg6Pq84Sfoze07n51ZBPgO3SWfcMlOPDF
	 kl7AXGYt9lOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA886C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809963368.16833.13892640233012337471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69177dfccccbcab744e9039ca718a200d953cf642efcb2398e0b905c274f8758
Date: Sun, 30 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788099633
