Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD11FC8
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758175194; cv=none; b=Sqot17w6JgQMxXBNdMiDoN2kospXCWqJmbkklD9ejsqhBYu9fvCvj/J4j9NCHO9ZDcPUSP/RXtfcl3D8qYMdbNgnWtAlk9H5vvNx4SUrYzdi0zyumXu4kuSVGDZX388m4+Tbk2OgYzDT0aG5Hbak5FGd2KXVh9sk/t0uhJX3njk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758175194; c=relaxed/simple;
	bh=z9WtfoIck/vg6oFIWzf0VLiKG6QSf+HWW9YeH4ll8eQ=;
	h=To:Subject:From:Message-Id:Date; b=V2slOl/Y2Bj4pdVYXdaQ8xI2GWiZwgyvsiCV0S8fT+K2v7tbWjer1/QbMlJZZKgkckspkga2OROo/GrjaSNP5Qe/3Ghvd0MP15ypAaQzyDiT/Kqexr8vBfIdDiy9m6UxsGfXQa/caEXoDmbJA6Q9N13gY5FjayCn85fTFmVgr4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb4VA1az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb4VA1az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758175193;
	bh=z9WtfoIck/vg6oFIWzf0VLiKG6QSf+HWW9YeH4ll8eQ=;
	h=To:Subject:From:Date:From;
	b=cb4VA1azeXAB5ujnaQ3N9K0G05+eREb2zi5Ol+SsfgLW8wadS/XX6IcEJXiulSA33
	 p164hXQnqXgCEHQ4z2gxY9QWU3FshJPa583lWaXNEyJd8nvbbad3tD7YW/xz4MPKNN
	 MIRWrEWO2FeJ/u3YLyK6Wknd7VAw1u3ynf8QB5v9nuD2hzyByti+kvDi04pCMoIaRj
	 FmTX3mlPrqogQaOkh6Wm5hiu7kHKBnGc2LjB97auwaWTrjjw1cu4hjdfOeBbdgVzr4
	 eMADUWEjXtj+A7jq3WUWZa4b4nCgrIzbbCowKW/TLVHT4xSJArk8pQHwcWN35a8+pd
	 7lAGUbB0+ZZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96768CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817519357.28122.2629050731886938905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1bc2e82926ca4415aecdb42e54fbb8ba107bfd8ed5cca17520219ca431808d
Date: Thu, 18 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758175193
