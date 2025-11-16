Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1543B1E0B9C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763317314; cv=none; b=rcdQPGE9/szT5UFeYmqLeDIMV3SqGYsn+MbC1G4j8W6TF7h6A0wL+eNOVaVJkPayf1joUDaDM4v1GlxzlH+y18ZjO1P4u91kgIMRMOSfcijuHFYxAGQlpK3IGb+hPRKu2s5JG82FkjYXf/BmRvlaffKhfAwKxeE1cvaacmndYng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763317314; c=relaxed/simple;
	bh=A9zyAdys6hRBM/BGQ8b4HG+AGpwO7WLjL+GMVbAEKPM=;
	h=To:Subject:From:Message-Id:Date; b=M6hgXyapjsdNix2r8+Ba+PRRJUW4O/vd1eleds30mml3FXVlccfAO3Yg7/xhMIlLYuL8ju5Dw4ZZve8LRZkNssDwvm9IJdcRHJS2yruMN/PNBQw+v1e3lEXeQWJpF3bGg7Gz/1fd1h/4F61/62txdbGKNvf6mdo8qPARe/Jc2Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJqWNTij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJqWNTij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9FDC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763317313;
	bh=A9zyAdys6hRBM/BGQ8b4HG+AGpwO7WLjL+GMVbAEKPM=;
	h=To:Subject:From:Date:From;
	b=CJqWNTijNsn3W4RCJ8n0+JthOoA1+uyYrxrhanUuea/yOVScO4YfcLu6kOCmlH2Hf
	 BV22zlunUbHeYxCNRSUaUT9NnfuaBz/KPPc0Y0fRxubM8ssFVCV13FYYoSgD8XeYYv
	 BRVHjMRXpISYNMld6n8BfqmI0VuWIFd7extMtcUKNUdkd0iYzn24JGXhkqTnQ/Qiz+
	 2lgdqeZS/NRmSk0u/AN3Qukw0Dt2jSCxfGr4FE4Q8b8bxY5HYQYBGXM0WCFPxO4ZnV
	 RAw9JfN/4M+uDjvNETTbfS4R5/Vfy6oiypZ66QV4Qm6FxlPYkd9h7Lc4Cld46BCEDT
	 o72JxPPQRAYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331731358.3034.9480268799241904740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc92c91da3a6be728f8bc03a1af4a5e6a4aa48ef0add28641cd4753ae2cd9af
Date: Sun, 16 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763317313
