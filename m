Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2823915A8
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752970794; cv=none; b=Yc7/wpHQrSRwoZB+nhsYVvZCZvDKPcGvlx7A4990mPp5Ly0nvzRDQdNnjFBY/rqZ5TkOtA2nUvqM9FPkrZ/IqhyTZM4XcpVYDEywrdyElTz2wGWA19cP+FaRjF9b13YHFkoZxgqC9Dz3rwr37zjVtABDFe4hSDpdD6wsA5laMGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752970794; c=relaxed/simple;
	bh=PD25aRpsYZnw/vAASJAESVsMoeezg/63HkW2KCjEX4Q=;
	h=To:Subject:From:Message-Id:Date; b=o5FNko30UPoIHflN92kE34YHV7yxD/7+LVWfagpEeQjU9WzJNUzlxJw4afGn6S8JhhMSktUoyS0t4z35kbc6JjsTiT1dcqe1RjUg+agnOcepteLeYaJR55MdI5RkEZ2Iuc95DeXZeXsE1SnuQlMnvHFOgd9Yi45W/scHQE8+oug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx6Qg9jO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx6Qg9jO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B64C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752970793;
	bh=PD25aRpsYZnw/vAASJAESVsMoeezg/63HkW2KCjEX4Q=;
	h=To:Subject:From:Date:From;
	b=Fx6Qg9jOfXnZCtZzJ34/X2Yug3Yd22i1VnNYQkchkphpDIK0RICe6FwQD5HjMgRzn
	 DlqQZzCBfrOTA62oU1GR48Op4JNVhwiOCoQlcU03dTzJNKfbXn/75ZX5WqP/A6m+A1
	 R4r3+EV6INJPCtGxsc6xzP3Z8YlhauAd53sLhsx7vUfsye7X67Pirztny+29VG5WdF
	 VxWpjkwKIdzhAqzNwZjfiR4htzKJZztmKPFkhoobeqAYYEOyfW+VcU4ci2d3GBn6rw
	 cq23ee2ypmJsMsSuTgxYrGBVVDVfx1ecx89Db/pmFMPTEkvFwncx9VP8lw/abvyPpK
	 ccM5pBfGf5g7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A102C83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297079359.21676.5722973189601388014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1a2154785fa5844e1866c88a0f23f2dca012208a6dc606a049cfdef7f10063
Date: Sun, 20 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752970793
