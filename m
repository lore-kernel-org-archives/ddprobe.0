Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C113B58D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736238954; cv=none; b=gYQtixwbqg3Qy9zB5OdjKVUGgk+etjziHXryQg7Zj8/0fqHhgE77sPv7frje94KzJHQDFRLOlXMQZwErEzEwi944WdawRVfLLMZ9KIsGe4miBsQqgoK0NbnE1Gavy5p4wP75UoqLOoVm+lmOMevd11Hpy0gHsZcF6eThLwKDEqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736238954; c=relaxed/simple;
	bh=Xt1E28RHFqFIJIaxmhaO18/WQ6IznW/D3vMSRRYHudM=;
	h=To:Subject:From:Message-Id:Date; b=D337uo23hCSeP/bYwfkPfZ9jxC141svP9IoWPcB/sVB+ipQmizN1VlskkSiGxra3RkVZZUIPC2HgwlXGniVp508CaHgwmLYh3lHAX80MiCzsa5wDbiMwCFOOa/nn0+IS2wp/SHDjlEcovImiTTIptDMCxQpob0tF58xtukBcggc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5/Dysyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5/Dysyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE2C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736238953;
	bh=Xt1E28RHFqFIJIaxmhaO18/WQ6IznW/D3vMSRRYHudM=;
	h=To:Subject:From:Date:From;
	b=M5/Dysyl9DPkUtmOkbjZyF7bguJgB9RXZ+Y7lcnNdprDQJI0lhvgFZyFpRtQBD+s/
	 QTyTiNqznaUyLT+TQGZr7/glEjHFm1e5WhtfZ/5DIwszgrjEJeJ579RkGc4a/8/iZD
	 dVj30bl/lH1QXL2thXcz9JFKRK7u9j0QRmYX2pBkhlZ1tKsnEOuULeO/cnLK5InesL
	 ikngv1hfk8kjTKMW6BHmgFSGkK4ra6IamJye7j2da10nFdB0UBpSwEaUXbwB04Awlx
	 XyN+vgRefB4fsxKYUmZuwyqChQlHXXuDL845dyfpUxf0+++EkVENJroQKEJFkz5q3c
	 fsiUUndauN30g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AAFE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623895361.14461.894084606614720524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b634f9869be8b77b6846fdac3c09f13c6a95048a1e01a2010b55346e793c31
Date: Tue, 07 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736238953
