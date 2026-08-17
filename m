Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496783C2B92
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786956034; cv=none; b=erpIoNvZ4Yyi1Q99n+3Cyyc1pBAnmIIhCcgHqtxxsRvtpiOGjC7n2ElmnPwC2TML/heO2UV7UwJ/3PY99fi4D/BpUsY71VvP12a60n0/Yc6cC9UFQnspH5tRSmWj3jVGh80EcitA9YwAlJ5ledLn2Ml1W4ofVYWHJA6euxQCQLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786956034; c=relaxed/simple;
	bh=NKQPVqMNUXXlX8hNIgYbGYT1QVJ3OUIs9nqFUYYQVgw=;
	h=To:Subject:From:Message-Id:Date; b=c1oKP72ajHgF9T24WbOem4Je///T0TRpXGvkOlTcSp4x8VIdiarf+CIYlpJ8+A+dNquslBXr2S5korgosCqtDt8jgcWddDnw3jP70jeyIeSslytgu0cvsi88kiMM9CIGHkG/tnIVj5UhFUFt/G52lD5/gzpm5FWhm/gpGXfdbow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq3X3gQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq3X3gQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40ABC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786956033;
	bh=NKQPVqMNUXXlX8hNIgYbGYT1QVJ3OUIs9nqFUYYQVgw=;
	h=To:Subject:From:Date:From;
	b=Jq3X3gQwqguBpUoajdtxcFPb3k/qF/RS6pEQVJ69skhGawcgybKoPGPcDpHt662vW
	 1BJ2dM5Gr7DV21FF/AXXeewxVcd51nSpdUcc9SYEbiFAiXwU5IMtKuJY0s7xrW0d3M
	 K20DH2twClH7+ZsmZHd9FCRWbrLRFaZ+gBT1ZTFbtlQjl6McZoBLrC+/m9TDzcGSmO
	 BptytT6JwLnRH/qOcy6h1AFKvZ3F+rcFiQQL0qHwkTJevPOPyCpBDTjUxhIqiMDfSp
	 5PtPm1cOT7+0TAYNR3ZuMXTQR34szPt7xxWg3YteVsn/tx69QlRczWfkV2G5twCmcv
	 ro6Ozbpqgs90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB17C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695603370.31440.14935172069917338272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07861c38d02b01c571a678137f7ecbc8626bfd76fd42c361379274478ab0794c
Date: Mon, 17 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786956033
