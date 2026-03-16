Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E5531D72E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773633894; cv=none; b=QPBQ3norpzlN1xTsxw1A2ZSoVVUGXiZTGLcRwm/4Ds+181M5HAJ1FNYLtWBAcOwqSeosOoyMdMyCiZAO5HTcxXV9D5rk1hBpzYOpb+Y1Sr7ePI2+c2bwddp1ZSRy4Ea6Yf6uoumoF0H+k7eFhcnb2Nsj9Rd9A3YEVHphNXFwfU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773633894; c=relaxed/simple;
	bh=ftZTcD2UYF/jEd0eMtLNrQwlY93d7TownDSMd10ksBo=;
	h=To:Subject:From:Message-Id:Date; b=g3YXldzRmKaUEb389GAFN5Q4HP146vj1NiCSfPmqXfXjTaoGbkxcb7cv0Anq5xR6zWIE7nPAt95FbOSq6kEgoli9IG1l4oXSAGEyDTaXKnJCsrdoBuOoqFNuyOnu1mKOlu0NXCpz6vtvbe/pu5RtFo9Qpj3PtgHg6pqDFUT77a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht1Ec0Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht1Ec0Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5006C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773633893;
	bh=ftZTcD2UYF/jEd0eMtLNrQwlY93d7TownDSMd10ksBo=;
	h=To:Subject:From:Date:From;
	b=Ht1Ec0Bvub3oUr46l+HllIEyBiAvcOBBVMyQ3gcm59zeRIXSCEa5TcmBXdjX9YLCT
	 nKTH67QXWJP4cvLw/PDpXdqyZfmCsgwjcAn6AZc1h6cy8aoG/GXD3H7aFyng/MA7xq
	 0KnfduRpq+jdDZV70LWh7Wd7KIK/MX3tlA089uIzJqc/zSkfxxUxEr7wHB+q9FAq/e
	 yNTnOtSvqssuQaIdnFIBi0fhQIjuDhzLyGZMggHguqb8IrwQQcXN3W92hZKt6xFwEN
	 DOO2KLCIgZJGMw1eVM9LCmJfoprT7xGKkVcdcjXcTdZdjNOZIF3S/zfG4j9OTQnkDY
	 336Zo9cJoIqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646AF3028B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363389358.8918.17380500078956993016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b1152861358ce8e6a2c25c5e3ac4db6724b9bf3d5090926b3fc81aa1115db7
Date: Mon, 16 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773633893
