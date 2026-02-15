Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE723D297
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771124694; cv=none; b=jxRSByCG0QkIQ/75LzCMX6FHVTcmZFmFo8HDldtQ9DbjxxXkVL3zvHr1kwqbiifzx27rvatG+6+AYt2xz0DOBKp1ZqMa6ZQTn+M3vjShlwL6KC/2y8lW+xi+S1VX5Cm1Ch3vtFv4ZWCBqyvpDZGJO0e070pu7KjYQp0MoLpcTNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771124694; c=relaxed/simple;
	bh=k6Mw8gTbnhu49PaW9za8COCJ5HxeSZ3475oV3LkRsuI=;
	h=To:Subject:From:Message-Id:Date; b=K+Nn6vTtI5KAL/1PB9Pi++Tfkvv2vJuXOS948aZGwuC/FpFigMRGhSwl1Fk+CTGHrwwLAYjTgA3drQ0AkExn2GooTAY+73ENeTjGWKobHtGjp++1Yvgx5YW6zQm9M83OEIt3WezDhPF41ZzMw8ktDTVAvGERAQf/h6hT+IGbwV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9rj5F4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9rj5F4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AADC19421
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771124693;
	bh=k6Mw8gTbnhu49PaW9za8COCJ5HxeSZ3475oV3LkRsuI=;
	h=To:Subject:From:Date:From;
	b=r9rj5F4L9qqEncSITsdHMDtgFN3aQZVJeMkiXhdBr4MU+dc50u/wwc3PhRL6NqFkE
	 u9Af/XqzEFwt9zBZMHZV8Ms460E3gXlUCQCE3mvyamRjlVjxGDoVdFlPsdU1IVbCSx
	 E9GagkKgSO6uQAHzxkBYVskpfbFIdLzO/ZGpvibaYMHlt+Cht22NSIbxcfWuAfOezw
	 IeSYzT5WzgvuLZbJ4buAIUV0XxCGDZe6lvY47DWUhCe3fLLauTbmvXQCl+GaK33lx/
	 JOp0GEFci9YA59nrXFU0D7DYW7Ec8GgIIqV8fk56/q4PAoQaofZWAGKNlEW9Me3Bry
	 Zhej48MJuo7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84EFEF585D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112469368.8036.14574831076980733092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3c6211d22e36bf4cfb6aba94d4f9cbbf66010ed19d55d63c4ffdf99362332e
Date: Sun, 15 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771124693
