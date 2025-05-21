Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F028E7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747802994; cv=none; b=sZKHexLSogHP4VWMAPR239cwwgbLfl3RCcQUG2bNc2YC7/imX0rVyBhW4hatM8S+Q6EW3PUTInnDFPLZ387JwqyPemkSx9aU+uI57z8Dwhg74NP9sFYGsXkU4mTlPogR+ZihvXmDoTsr+rL02yDBWzi2GI3POToDosEVagGePzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747802994; c=relaxed/simple;
	bh=B/lwUFYiVvKm/5rJG0PiXd2tkyhTZmD7uBpQBvuyHUA=;
	h=To:Subject:From:Message-Id:Date; b=VPLuKBEWfpMhqzw1NhoEK9d+ksFnY3VBWT+6bn51aF/F06qE5dUvBvN64yGzKvgAvrXV9OoXGjQKiopTLU0xuTl8yw9aHfEGcFcF552WuvxQMT8DeHuM/wULFdU13aDN8y9LwnxcKoma2GFs3e1jdg4z85qzRRYI0ntNuet8lpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwpI3wFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwpI3wFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747802993;
	bh=B/lwUFYiVvKm/5rJG0PiXd2tkyhTZmD7uBpQBvuyHUA=;
	h=To:Subject:From:Date:From;
	b=gwpI3wFCjGO7zTOc6jFrmPTylS0dT0ZuVMm1LcIXRHuEUVkU/CNo/l3ThBpBdvmw8
	 gud80DtRMBr5MyaM04AIiNzxGtalSvAGbicmk25Y0bD7XmCg83BX+R5y396rXr2uZo
	 naZ6o30L9ryeq0oq5ZWmvSZlUTGGe+5ZQBC1b0btet2EPMZHgQVM5DrGRLy3a8iNka
	 iPeXilV46SPRT554AB+7M89FUBZpG7fe2mOdaqhY5i/gCHZ0BoGFhlHwVL+ZYXF5cL
	 /eaTu9AIDQhWGzNxeyAST44N4x9V7QxjiYY7n8PhJJ6tgb9FNkzV6R/Kzz4+A3VThL
	 iDdEH4qXMaFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C7C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780299357.22501.4564663130751452693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e3f0910e0c4e0397476491ffa5b6454203198bb755dd31a378cc78f6bdbf7d
Date: Wed, 21 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747802993
