Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A755352032
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782872914; cv=none; b=Ti3hULXzfH5PoHtdXw1Y/nsdyeN0RYpnA3MEH0QMX2TEk7q9WUVYht9SglhodLsLgwuHR4QSqXzv+SULNa63ubFMYj3P1TpKk8GcAkzCDd2zXd64wufMYqjiJNkzMcGE2NulRRKhjHo9S/itBWI7bEdm9DJYgNhGGXGPOA19sJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782872914; c=relaxed/simple;
	bh=gaOcZbNwtEofVTKX7AJ3Pad9ZhKCER+qjTisjAVjKzE=;
	h=To:Subject:From:Message-Id:Date; b=WyysJK8hy3Eb287U/4j70L9sK45Wm0XrzJKuHVipAgBUvE2CGzjfk5UNsFMf/jncyEOq1u+2JIyAPu3sPlWEvw2ksnvSB4/0xiugdJC5stGKYYAZY1BAEBPvSxH4AW68B/a4TE3fBWsM6Qc7w4+FAuM41B1dz8Af4Ij9WCBQUSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsU0XJwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsU0XJwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC41C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782872913;
	bh=gaOcZbNwtEofVTKX7AJ3Pad9ZhKCER+qjTisjAVjKzE=;
	h=To:Subject:From:Date:From;
	b=jsU0XJwi140hZ4PKNGp3olwfl0KKYSMaMt9RjohTZZdY2bRPtSJPpD+wLHqM4dQf9
	 b7srQQGGHTr5z1g7kP7+oIoomZEZBYhNd00xEubUx6OTTDKQWm3I7m1b9DnH5sr0Cb
	 55yqZ3ZU/a/pKIfua2bevE/ekqW0GUWkFW9Y3N56HCtTFzofbGDTVz0IBcUYCvQGvd
	 6HIA1OdKTKlZm+PtfjWBlZTQ0LeJSkEDHaZ4Gexq6DiGQR20ZGbfHlV8/I4+1crLJC
	 cnUrLW6+a5wLSJsNHt7pqLG1kBBJM1TW/hxuoFiQAFUEZXu9YB1YRt8FFum5BoZlIx
	 3UEGaexz4VhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9653C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287291368.28989.5755053375206709670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b2c673f1e6a3b0014765e628fc0b76eebc954203daf601bb4ddcf65b232512
Date: Wed, 01 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782872913
