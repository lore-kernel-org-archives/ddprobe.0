Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508E545198B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791244234; cv=none; b=tWGToZgx5cbRz1d2OBLDY/q1AY8GuTViE3YZmHMKRTm/ILSyvY3eQl84rcAdF/AlqgvkJQ4usQTVC/DtNqtHBsUppmHMVr3WqG8L9F13DxLo0lfI5v0i0uGWPOoyfngtL0IDrNeDNjdOM9942LoGYa++yGL4T+7zUj/1GLVgYCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791244234; c=relaxed/simple;
	bh=EF1M51Ll2z/U8ElvqehTgkJSFmHM5EuZPVxWlnPgab8=;
	h=To:Subject:From:Message-Id:Date; b=D51f52rxLPQckg3LAbmMKVKEeK6vJV60bY7MjBQ+Gb2rk4lYMz7lYhoWSRI14P0TsVw8S2+XZdsWg5k/Y5m3xyeO/z49dXTsM29zgcKw/YyWMciDBCKF+mR/hJ5gwOOyctcRTskO7ssTOCA6sffHLGHeN0iCeLBUnqfbpHFT6yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeppiw2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeppiw2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D255CC4AF66
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791244233;
	bh=EF1M51Ll2z/U8ElvqehTgkJSFmHM5EuZPVxWlnPgab8=;
	h=To:Subject:From:Date:From;
	b=qeppiw2I8KUiVApQ2X10f5IS4BKHCJ4efhOlwlmvSQvf5HEuyyguAcoMCsF47D8Bv
	 uDGEpBDGALgw8HTRPVdTJVY9rS7BXqW9nKuKNRtk30Z6x37cWb3bqWr04zTlqVagpT
	 0yH0HvMki2CyWE3FaHA70DtEtaGnRW9mTXW8iaDcRu9SYCySnGomxkWqIuKwBEhLr8
	 ofdB8LLUqODs3M27Eil1rTKGKnEZiea1zM/iQDDFVT1sQ4NVdU67kK4RX509+tO+uR
	 MoeT1Bgi3EGKREtHbf1o4FwFz+huJqvolVzv8eqSaibOx5Vf3osTnOAzNlVtG6YIuk
	 TrYT80nE2QlRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B924ECA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124423374.13607.4542332509474141966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadfdb85dcad51a10f91ad4b51e16acde8ee68b49cbcad0ff9fef25264e269c6
Date: Mon, 05 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791244233
