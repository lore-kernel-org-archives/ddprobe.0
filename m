Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF9C1E86E
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714683743; cv=none; b=FLLQ+drRcZ1hX4dTXdGk+9WI/s2vkvBxGhStvLovWhwp4iYW2ZQWszTYRlPg821DX0J6fERoIBvPUMRysmrq1qlOVlnI0vuS/ZYqRR6rZ0kruOmLRDB46s0K7DIA36OS/R11LGdXvNO20IjkISUJyAtAcrlSNFdlybkh1+wlYlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714683743; c=relaxed/simple;
	bh=acbaO5Zckg/dK4FQFz6NnOOXkqvo7Jj5mgMniCFRIbE=;
	h=To:Subject:From:Message-Id:Date; b=RDzEOejzn0OixBGrSATqO5LOCp4ki2iM7JUB0LGm3o3gxR0tLFFs/BuLJus4PSBnxXFTAzo712iRmDavTH1LBVOTChUZwIb7EpA4GYDjeMfC4x3qYuGQGcR0EikXFoRYcsZ/Y42toKl8hWZVfWRJHkUVXVnhJogSHZbRcb8pHXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAtkp/mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAtkp/mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF48EC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714683742;
	bh=acbaO5Zckg/dK4FQFz6NnOOXkqvo7Jj5mgMniCFRIbE=;
	h=To:Subject:From:Date:From;
	b=hAtkp/mxBtLycTYPp+DXbqcgXxRf5l+Ja15p/E90mxW6Sni6/QEhW6p744PkEGndP
	 Okd6TfZ3nWpdMDq1E6meHB3V8FqB677I9aKdm47nksegdBjd1OSF+3nJfRCrfNrLDj
	 rgU8fK70hLt0ea/AoSvg9H9DWyd9/BrsVL4zTE2f14fbcCrYVqjspsEWHM1Ty8ALMp
	 FUsX1a63cN80S1a0WyJbIDhFOP+LvlHmZs6qcxoFf8k0DyVTYrl8WH/1rkuIeh0zQF
	 5fNLbzfQDuQpoxaIz+K0Xl/VxLNNRSzIo4FtNDNc3wBkIZwUvBA7dK/yIqdIZMf0MZ
	 hRARjnhjMOrgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C432AC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468374279.27127.12807885530782942733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32acb79353ba0a075b18de39f3e33aad8528bdd878e6842df3864d1d73a52cf5
Date: Thu, 02 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714683742
