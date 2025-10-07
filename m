Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377DE2E2DFB
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759850394; cv=none; b=Yc9G+liiSOJ90pcVT8eGUQDhCJ4xUHwkXSoJ66FEQSCSwYU46CA90E8dKoBMMSD1tjoXfb7gjocVaduQWCxnizx1pTxZFFomuZENVPhG/5AXm5wDfTxJ1UgrrJ3PTKTbIZuIDEbW80FfWZp4atjIZuA8So9/BJKtPBPvvW8xWeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759850394; c=relaxed/simple;
	bh=wKgXQjFEk55xjMlEzBMOvR8baEVcNy8iypSeJD19Wgo=;
	h=To:Subject:From:Message-Id:Date; b=DekIR6+/xdwuZccK6iXK22IHzZaKFVX5olTfmacKGPD7minwqL06LxXwHnqxEXy52JKWVoa0G8OJ4ix1e9BVClwtksai50fFOLu4TY8sHL8+8dcrdEXmhG0RpRYHT0FRheZRmzeVkKAw9W/zsQOsPl2TbhpkuqdKtWbVv0vNLiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc3dzjbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc3dzjbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F57C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759850393;
	bh=wKgXQjFEk55xjMlEzBMOvR8baEVcNy8iypSeJD19Wgo=;
	h=To:Subject:From:Date:From;
	b=Kc3dzjbL40akWRZySHhUoub/uj3VyWPryRgD7PwLs9Rr39GS3XRJ8opEc5UmGZSAa
	 LQGKvQFqBNM0RG3GseUg7IiGVoZHTb7rRL352zNyWBVD19JETam6464IhCp5sGIUem
	 gq4qOrgAxMBRwXGniad2lJStItosmIWO0aKoWggp0yAiXo2ukS3g6vytZUejaiIY+R
	 ONMlpzM/5Y8ESTtJKpsARceMp54s0eJlWIZP6V2vXIiF9gRlQNzUDMxxpCRLYorVOg
	 TaUiYcGHesDy76U/TqXF0sdroH2ZIBdR95YWDyk3H2cKS62VNyc4+Wfh/bH9PWI87m
	 nllhv7ZpMLXMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5FCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985039359.15286.17864262126907479788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9dd5ca4434edc4effb809a5ba1984d5cfdb757efe193c79afbd0e654b939081
Date: Tue, 07 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759850393
