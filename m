Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004321DFD8B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771613694; cv=none; b=lfDUfYMOih3z5hSc6npLFgzPw8Y18nWf46J7Uyn/JVxlq9Asft3+3WT9tfVbt7dtGI3/lggmHv5at5jVrPWgiNdezIWLdKiB0GRORRd3PFCzdsaPNmjkQLqBXVcHEMQcxJNFuf/Zq1cmnLAv/ONRpuQkTw8LOoKhdVs1Fndffx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771613694; c=relaxed/simple;
	bh=5Z0K6oduYeYVicuVi+hJcumFYWoWI0/k9SE/94cXlT0=;
	h=To:Subject:From:Message-Id:Date; b=OLQ2zGhj9jnFFcRz4hpmvEmJy+btPZgDjmEl/SAKcQ2q/IoGjuzbdnZT7jlwPD3YLdPj1lLLPU8FpHi7DPl874y2KDtBVWxeq/kfPssXiVjCIUV/6nQhqQqS11bMhdEDvgtQbyQtg5JyigFlD8xele1M/eEdkoVzbp/k4v++0OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9Z9bnEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9Z9bnEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771613693;
	bh=5Z0K6oduYeYVicuVi+hJcumFYWoWI0/k9SE/94cXlT0=;
	h=To:Subject:From:Date:From;
	b=S9Z9bnEti+4vwfikWqtbjgTOV15GSFmUw9XUSEAanNIAuF+9HLsLoCJTsx4a1Ih/F
	 ++JqHuYzK7Fp1LC9kIuKoXh657jcb5RqkPnyOSqL/3UHI/esSGbXDo4qJagEsVotM6
	 RJYv22e/ljf4cZ/3Fu3DTDCLy8KVIpwgnHp1sQ7q6do6qHRgZ4jAnHlK49KUmdOTdQ
	 FA4Eol5opDjSbPiWiEwg3h2/wBL960LlU8xn79k3Dzj6oVCdDb+GvUeLC5j02yfv2a
	 /zREWtoZ9wKTnTmYEHuSa2Pyz+7r9tYsmr36NaO2YO/J6F152KO17uZK7RdorhZqwA
	 irUSZyT6hBXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB1C5AD57
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161369358.16512.16662039703739240956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f82dd1e3e9d336926642118f36eb2ce3285467671834e3aec68464f91b4e0a
Date: Fri, 20 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771613693
