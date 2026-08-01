Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B9154785
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785558634; cv=none; b=GE4h/BXA7H3TvWxp6DlY4fEjnhqB/Y9t5cuujL72nVrrbBqCrsSHimRlIxyL6GN/MUZTcCP3A9swdQ0c/We0V4ud7Mvx79AB5EBFM5gVQ1vwuFhIF3WgPvMEB0eN5uGtPNKFrvRqVQ5WkkZwvWYnMWbaO49KtSL94WFo/hH2lvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785558634; c=relaxed/simple;
	bh=4dhvmVI/buW4C7DWwPhxxJhahMTigoFrxSt8RsRtLVQ=;
	h=To:Subject:From:Message-Id:Date; b=Y6Nk833gc1yw0glPDr4ZxYA+jpmy8F/qpoSd5dECbxd2PYrBEukFwqvbqats2wQbuAXisoUJiushJSfTCvMslMObwuTwgJEcHaYoqkUv/Z5SBydGKMPp2OEL6pWvj1jow+cMiZgOcVBSzbW+o2asr9NcXf9ScahT1BeYZxxKEKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4R9HeBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4R9HeBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E037DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785558633;
	bh=4dhvmVI/buW4C7DWwPhxxJhahMTigoFrxSt8RsRtLVQ=;
	h=To:Subject:From:Date:From;
	b=k4R9HeBfb5UDdeu79++UAN42XzbjXKIYYvhd9D0cXq9dDizbppO36u7GSIxDpSBJr
	 0a3xLZlcX0a4VGtFRk8aTjZGNMlkcc9Iyl7Y4EHbyEFwh28jzLqWoqBzJ+nYNKctQV
	 Yhp1uguQtP+zp+dVN3dLOp5eZ28EfuoWs6t8KbiQ8IhKew9DbHb/ffBm1TOkTln3kw
	 /cqbX65csFgGqVm9bdE3arsgCkmUHmUlGhx73yX7v4fKYBf+Uy4NSqfxX3xRlRIm5k
	 oYWurgwSGkaadp9uhh28oniD3SYo4dZskt7mnHf7jSH6T6yv/J0cwNYCv4vSn/jYPJ
	 t9hixZa9R5fnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC69CC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555863369.7044.4131973436690708920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844de562a136d84f687781ac9b84086a0b987f78fc9547817aece168fe08aad1
Date: Sat, 01 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785558633
