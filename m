Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E924288C2F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783465114; cv=none; b=krHLQegFKtWunzTkEqBmdXQWHt7AuF1SdHeYJUozmMi3qp5vJEgm5stqpvNYZU6CRY9S2YTWeMAFPIiZO/f9mq26gtqJjGDBrnJaxrubYM0FvS1xD3eLlueWRTgjCxXlVsM2WL92+YiNL/SZC/2XRaN4QXDKcuyKy1ICqBD8aSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783465114; c=relaxed/simple;
	bh=vqWnyo2Qi8M0ZSeT5Vm8N+Q71n3RNdAT5G7NMeZDhYU=;
	h=To:Subject:From:Message-Id:Date; b=Ev1vVVWE6vqrleNso8hW5ussBcVjzqkd4GnUtoFBCWm/OmcNeFhNJHwagnh6ISVQjIcqhGhJPBoYJWeeedRMXl98e02KJ8gjkElCf0nd14Pix5RK8O7BMs4VgFQPCRyibg/xQeZXanS6Ew232VhkI++hZ5enPB9G/GuIoajoZUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnoU9SMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnoU9SMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF06C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783465113;
	bh=vqWnyo2Qi8M0ZSeT5Vm8N+Q71n3RNdAT5G7NMeZDhYU=;
	h=To:Subject:From:Date:From;
	b=mnoU9SMnrNQfrGJiBJmA43C4AljGbJlpk+Vu8/xo8ojSXbMZ2ZTZK8fD76xwGsiom
	 4/d8xITd+ha4VCP+MHzTcy9f2Lbjtz8soMYwF4wpzoOz6MdrCmhfY6VGdQ/K9SCT8D
	 rW0Zvs10xJCV8M8inrioteRPRR+WGKrI+JZReuTAoEQX5U78QK7M1+VZxDHn+mtSgF
	 t/avNLFgUCQZ8KQ28M8C4SVIyVSuI3t2v5y1/wz2pdfIp9MZYqRBOR/Ry6dpba/HUK
	 xlQ0n//3FDi3049rb/kZH2z5ZRJK5ZVO72GWtGxDbsAnQenYUv7ipWnlXQuZ3N5nrj
	 ErNG7dfr+f+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE34C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346511368.28696.17838347181062514263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac4a36bffc7cbc5a85d9ed4ca0b220223dd5fa66b71b07be1a260078019de0f
Date: Tue, 07 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783465113
