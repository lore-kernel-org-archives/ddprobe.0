Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB52ED846
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780883076; cv=none; b=h9DrcW9I0Rcpo4pITzGb9H2I+sZqK+2ez8NB72oUAAnnIDbzPiN0juIyV4Kyfv7pbNj4N1orpa8FHpyIp4MIJ7WbMN2JU8TYNwTsxQxX28wuZwgfol/HlQI4E3fxWqDuu4M1mfc6SpDxx8tCifBcurC0BZhdV9Hv9w3qpm5NKTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780883076; c=relaxed/simple;
	bh=V0dPycO47w2VlofYul6lsSu3S9ENttMwPdeHIAFgGbI=;
	h=To:Subject:From:Message-Id:Date; b=UAOA2bXuHKV6b6xB/OJhml7uWvzYgWCeq4asvPVZw7LB+hqB6qZ/BqNOA9zwCpI9dMXP4dnxI9ztCGyCfl4nzUoVe8lw8RJy68vPsIVpddMlqbfd3mQZEbUNn1JA94aJ51NRlA3doLUAfGKHIw+co8VLf37LSMNDaAMFSho6aFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuCTYp79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuCTYp79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96C8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780883073;
	bh=V0dPycO47w2VlofYul6lsSu3S9ENttMwPdeHIAFgGbI=;
	h=To:Subject:From:Date:From;
	b=WuCTYp79zk9mmhDmsHEVgDPR32I7AzoUIibJUZDI8LN8nmgTb2BuHuTtKuiNaKbvE
	 DIZcuIr2Jmhs6/irOKNMRmkeGOnBHaKUyHzNSo8b5UlbUlK3J251Vz2tN45o06ULX7
	 vL1Ciu2AYGt4s5RfBDmZUGA7NTqC4YSgvNf/6TNvqzQ50lOVuyKUYuutY7CpF54GGf
	 EkedysyBjLhMmSSSDLhteD3WrXGYSD3X6SFU6tXNqkIz+LfFJS0y52cVFusML/wSRP
	 ku1dZLD9UUfxKbOOTd/0vuBkJaFchizODmLc4ob3Pm2t35/k89nUQ5s4JLgORt66zN
	 RKbMBXdZwXlkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE72CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088307371.2771.12170503817307082737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5791960055612c1a6a1e3e9a15313b36e26e21ec99b1c6c31dc2daa6ca4ba9c2
Date: Mon, 08 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780883073
