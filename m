Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8C8371867
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787589634; cv=none; b=n+0p00nIB2dT5TxWlkB45C0RuNSe9T8ZEN6jqtPJ8VXj7EwKVBq8YtAgEiDSNtkqsikO84L+8W7036I6Ta+VmB6t6aQCcJn92yFb+KM4Ti5Dl/8bcq0D4ZyWJ+VBawWQyY1nCkmI8ddE/XohjZjRD3bsbB+42pceqA7nu2WmHJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787589634; c=relaxed/simple;
	bh=FBuwm4zTbzaqoP8Rk4OSQdh024mj1egzruZ761aAJQA=;
	h=To:Subject:From:Message-Id:Date; b=ScoYCLs5WfYJmUpfEQk2cSCafB05NqV5piTcRtvjC+1FotqPfamVaVgd15JAmClBTAxpsDsAE3Pvmw4PVgNQ2StF0yFUqs54HnrHkC2OZ9OnGfngMkTMvCmlrz/e+Sr9esetq+9wdSt1cbAhkmqlnsWY0OzoGcASJwPeCE/a404=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgarYg9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgarYg9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11FAC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787589633;
	bh=FBuwm4zTbzaqoP8Rk4OSQdh024mj1egzruZ761aAJQA=;
	h=To:Subject:From:Date:From;
	b=dgarYg9yfoWWamUvnXz26WQIAIooQnqkXwxy9cR3Gl4Ivl/vRzKPPuwENLvpR4yU2
	 ayyrmVolFbAkkJUM95mCPaK0FPYWQTwxx/gj3vbtUY8YpoLTSDDy8cWM8VyyqtRb6j
	 nW9JItlwocb7j+A3J3/R1Qj2+27MgcRiUMpirs4m+QY/nHdvlVWNELi4vGVhgtcZ0Q
	 Nq5l6LwWTpR/CxE8jzI7uo17JnGfWxXRwdi/5xZwX024PCwMP+/d31C8LPxSKUaNx7
	 ++biT/eEmsrKQ97JgXjiNitOk1PPgQ6SYKmGnBOzp7YN/CqR8BtBw1wH6eqmNhDB9I
	 PFeeQbyq6QC4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD5EC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758963370.16021.2842113831288164543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29f3ba30059d23c5240b3d9be390e4a55bde37642d36db41ef4a49d3dde05da
Date: Mon, 24 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787589633
