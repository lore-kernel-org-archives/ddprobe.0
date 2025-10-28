Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203AC221F20
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761640194; cv=none; b=TQVpCb1MBKz0qh2GpgWVJ08MCRaK0y4TZsvvcrZcBi8kwzIvfsHr0uayOyN54bnJ8leuyOnB3ebC+jaRPYhCGv1DPtv/uHh8Gkr2pD8DWKF/UGquRKT8j3+oVxsmlRuYhrbFEWoRbwkn0OunwW9S2FPixfE18xIDRxPiBGDByEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761640194; c=relaxed/simple;
	bh=L9zFF34pW1XBdhr86BC0mGELtuBfhHyR1Nv1TsVZ/Q0=;
	h=To:Subject:From:Message-Id:Date; b=aLuI/tdoQReq3WR0XYWNPp4YzNNAHNWTYG7HQfQr0SL5PG1RZ88h/vme9LAJJ3Hk9bzmOP1JrFl0QvT3MjJyGFGiJqbg6GlalC+SMXPaMuCuZe7MUUtVThtKtgoFLREl9j1VrHCu4KUZTxV7Jj1dty/j7uvw4fPw9yJpFVL95hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCkUfRLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCkUfRLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1278C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761640193;
	bh=L9zFF34pW1XBdhr86BC0mGELtuBfhHyR1Nv1TsVZ/Q0=;
	h=To:Subject:From:Date:From;
	b=tCkUfRLudyh7LzGqy+PWYAUUiIuhDoEOdxR2Q6thRDU8GrOQSS1sFkIY8APniJFVC
	 YX66Nc9V0QkKsciYn3Db99R30mbVnroPWyFyi+rkmKz+RfovwQ/eNWjGQ3lDkVuySb
	 wb1n3jl7fGXCHK4qmLF/8eI1wf0Tf/q8YVkpW/WbFqfyn5j4dSw8Yj0sN3+xf5fsnb
	 ee6xQ8PMoq+hrdDfluqNKSS9hM11EJ9u18t/MUVwUVSZiDEz7OvxHVKe2IO1vsi+6Z
	 LPDXRDjQMC1t/s5kxC8KS+ROHFFuRyrS1hx10S78dVLCU54MwUzOfV8qAg6K72CBvF
	 JbJWzMO8/WKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009ACCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164019358.13606.13469297187636776514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a866ed7a50a6a81d5442a917bde934fe8e7b88abaade0df8dd8d7237752e937b
Date: Tue, 28 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761640193
