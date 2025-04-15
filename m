Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72119C553
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744706994; cv=none; b=PpsLa/wWrG/KT5t5WhkQSJja1RqVZWO6qumbD4ve9WJeYjAsRYEYODHyiWP43gEvzPMVBeGelbI/CJM7Nzlp8nZVoMRzvCgV8upNXhYOYZh/Bz/qDF0jf7GlLwsyWiFYd2DUUu87j1Lw7rdIUbiFkarQiesnumYVhX1zA2iHzrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744706994; c=relaxed/simple;
	bh=q1pugdznc58PfNb7rUF5NgJqcWrLaSCF3jwY2/GRXak=;
	h=To:Subject:From:Message-Id:Date; b=pJGC2AjllIWJuoaIt8xwQZzN8ZgSHolci7okH2650bf30Q3tR2cX+QlbcW/FY4E9DKcW0+rmAwC4MGpzfZWzokl+Irag1L6yqAwGGuBEDm2TasBPe6yX2FlCOvZyblZWawNuFYzt58dN9k8jhBpV1IGThd5ZUtuyBvm8Bx3xo3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKqktAK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKqktAK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C94C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744706993;
	bh=q1pugdznc58PfNb7rUF5NgJqcWrLaSCF3jwY2/GRXak=;
	h=To:Subject:From:Date:From;
	b=UKqktAK/g6zUora55VxC0fucr9MTY6xdYeI+NtFkbB37njESgtA9lM4Klf8RrI63l
	 CwOHwJ1KdXdVCcrYYnCohm86GOh0KxUAWeXJRcRMhxP3sapVqo9Gh1ZoT5mYbDTNRk
	 2tzDYW+3T4Q0svaBQVwD63fT7AR4036asStjlq6G/3eOmPx2xLDyUgVqctrzYf5d1R
	 wXQuajS05Uc1XQ9r4Jfa60ciXTwnOvWPip3LjbS9UGERHePX//vJPDeBO57xA8KIfk
	 +/tgOuxshbJNYIwCPZGQZ5E/im4pgFbUeq5R7/npqzf670/YvYFmPDmfYurhPdKCCH
	 3QbvYDme89V1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980ECC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470699361.30064.18440366935521919269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e393a62b59418840eabe85988a750fa8adfc8c50c920b20d6b54dbb742fc774b
Date: Tue, 15 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744706993
