Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B048298CB7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769535234; cv=none; b=LodAdMdV52hloNCvQrempf9cXE/bP4IU2h1OWLt2Wf68EjgMN98OR3bJGa2OaAz4H07TMao72yqpgdqrsxm20dhG9Qv3Jeu0SPnhII3K7x0kbRZFPVf1Pn7x9DOMZhNhwouoE5EvTxjuec/2g5BKUA9V7tLUiXOdQ2/j+MIVPDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769535234; c=relaxed/simple;
	bh=o+6ZnHwffksp6ES1A6UMQY401At4/zaG80wPIloau5E=;
	h=To:Subject:From:Message-Id:Date; b=TRYb9mxzBCzOotgXFeEQyPZYeeXXqZ5bWOKUMpqxpP4R5nQ0J7vd+/pgfudzoiyN+HQ3oNUxGta6bnL720Lky0qXuEaJxHXF4Geo/w0o8XCfIvU8HTP7YwPxBprBKE5pRSz46MVwShTdTBuhyz2cFs4hqXAekX1M3w3tUe36uRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4a72kgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4a72kgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6875C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769535233;
	bh=o+6ZnHwffksp6ES1A6UMQY401At4/zaG80wPIloau5E=;
	h=To:Subject:From:Date:From;
	b=t4a72kgmzG2oohqRZlzROVvOFVS1kB9yBUdd8ZMU3JsEl5ymuj1Wwa7NrZ1XFQnO0
	 ETFmKCUOnuAD5O+xZFPDuz/eq6Ivs4ml41UF68FovYj2tuf6Tu6311bKcGCjCJdEnS
	 jeHdYEHd+OjFWOs7+j0vX7H3CjDvy6draJ1l3WKLqBsjWFMlK0UCQTzpw6WzT6nIY1
	 p0AN23+yn76GAEuqKq3oCLLxVnbECUcHRWo0VJNap8qyI/zTvZygS0s+wFuk7+W3eI
	 w07mvXJ6dP3ib6Qf3N/UdZOQGBUU3HnCkqYW3bmhK9cwZkE3R3esnpAWzG2j2IyDev
	 NpXiPQRygpxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DAD2FEC5
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953523360.20735.4874154233683305431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d44e25138dbafd122d96d6fddaf4a7fa01730e067a598f2d2010f7bb2fef890
Date: Tue, 27 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769535233
