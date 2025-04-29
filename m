Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5F22517A8
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745948393; cv=none; b=SVhUzJS3ZTUd6POogsxgRVczivSCaoqRZY9XS5cs0rZuo/v2VIJUP7aiSuzOLgzX74MIV1ibcXPRAw3d1EzUIhL/B5AxpG0jn+pv/9TjN7s6VFqEcm9jZHMurrhCBvezSlqvvQCtmPa4nwwuxxH5UuEKtfSrnTSMUyfPxLs9JAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745948393; c=relaxed/simple;
	bh=fwE4yQzZJFojFf6ZxVpq5QnnrlYw5Fly8fsV0MKVjkg=;
	h=To:Subject:From:Message-Id:Date; b=PpOmWpihJwiUg/Pnj069uwpaBPUD+6ijrLDVl9w0ElyebQlztknevCu8IIstBIYmikhoFI3ni5ENFtzKozrqC+90IM04PGNYDo93USqX4qt1zKqjB+saIpQhtdFLeiLJY5LzC0QZsnztYWQFEiuat0qOtZQwCtyzJZneVUn1OY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAyp70wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAyp70wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4936C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745948393;
	bh=fwE4yQzZJFojFf6ZxVpq5QnnrlYw5Fly8fsV0MKVjkg=;
	h=To:Subject:From:Date:From;
	b=iAyp70wmpELvmRrG5oyLOrTIcssygmWoLEh98SIx0pj5hPWDneotk47RbiBLh8pDK
	 GhR15kgQX5vExv987YakoWVGCuBfzih9a+7JjQypOU7r/9v2A8o4DB0UV7ccKFWfBG
	 QXKFbOcIZgeYyjBixx6CptAICNr6dHT7x1dZvkMZ4v/R9PE0Zg0jT7nae1m2fD8vcc
	 E6hnXaONEKiBJjkcoLhWaxFFPgNXHkf3EyIdwbUi5fh4yskr+sHZorom8t4TUiJ/Jz
	 2zWAP+IC7xCIxj0btfFOy1kUOpF/C+Czux4d186V2LbhSPqcosxt62GDtiAlMDhOVx
	 xudF3gxtQJgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92030C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594839357.13926.8419340504748251057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8e1b1857705623c3ace35c419624b2d5f9f30ed4af23e96b22720b491e20b1
Date: Tue, 29 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745948393
