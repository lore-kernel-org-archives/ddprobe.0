Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935E744C97
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712117897; cv=none; b=b8MiaU7ZKKTSViiPS7+FxoqeEWq1ao/BWMvlHScAUSxSt777QvAsGCu0M37PIhHsRu4byg1j4HDBFfK+U/0HpfswvUjZaxDLKGuznmDxG/FvqGgZP+r4/uwJECNjQRMrddDFHuCB5kB8EAdB8IEmItyWu3zvkOJk7zOJ7HCRgtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712117897; c=relaxed/simple;
	bh=ydoew+0zYYsSMt5NKvPzHKZ+JWOldHQH2WxFk8RXCaE=;
	h=To:Subject:From:Message-Id:Date; b=JnExxRkXyAt/DfF/ajovBL2LUMH7fUL7gpPpOeQrdWnEGmNbWPvxN+mnNc19iop77IoxG8dA3BzjIfNn+Y+KftGbrNOAREwOGbMNjE45vT56X/hk3lZgwVg7S3RlfyQVs5IxTKEWbO23b00YgSygZJRR2t74+zT5TsubrBibbhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI/EoLDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI/EoLDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E2DDC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712117896;
	bh=ydoew+0zYYsSMt5NKvPzHKZ+JWOldHQH2WxFk8RXCaE=;
	h=To:Subject:From:Date:From;
	b=iI/EoLDnNA+bWzVELYgtAYmzjlc2Ei2RzLpqAkMoFTR17XFvHIVlOlCUOYq5qGxx7
	 bKXlnz1p11xy2oxEH9KfKisjPY7P9IVSWCEGX2MI+4ezHpI3+rc4Px8TuyhIvP5Xiv
	 SCaCJl8nbL8EUdazc45KDLJ5crxjssWga4zOOe9Yddgmml5oUea7i0rfJRyQ+qcOUp
	 07dQCdm2pZ+Ch+HWRlMJslItC/i3jrXrclrXVhDwXEkshhNzmTlDYyjI3tReDHpU5o
	 xbrBGWB+33PI5i4daBhSCvyvVTMhmvFiVYOZGkYrYpBpjCctgNHW/nC9LQeP2DPBjV
	 imiVUSstr8+tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66307C6FD1F
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171211789638.10484.16406284334500981392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af03ea2668e5cfdf9584e7818c2357f9608a175691c7cda06677420153ff692c
Date: Wed, 03 Apr 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712117896
