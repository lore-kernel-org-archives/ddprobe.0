Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F78712F585
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791066634; cv=none; b=FZnOdbP31+UE93EN0osYlAhlTk9cXoNEUl5tcfgpIfl6aUevrHILGKLy8dE6MYiHn8aGA91yE3FincXxNyEke5RAShg8D13fowZVUkYKBHUfkR+e+6p3hCIf533JP7FI94uvHM1kIOLDckb98R8wwLrvlatAM4fI+tIJGh9t9X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791066634; c=relaxed/simple;
	bh=t6+0okltbzu+QfmAdu9fdd9C/o2hfceuJxtcWieIlZs=;
	h=To:Subject:From:Message-Id:Date; b=j6PB9kA8xRHjtb4vT2qrTSLjDqdSQw7GvaVM3cJQkTu5W5o/iSENbwpPyEEWQa2VtwiP/8DsguVL9M9PJUmhoqYKdaAEEFPms6UXi1fdXWuVVEKgh9PrUkamq3WDO+4ld9f+GQCXFNeXa2jLIH6YqpwVZ7tHAvpEpkcRYgCvd3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBN8B9et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBN8B9et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E46C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791066633;
	bh=t6+0okltbzu+QfmAdu9fdd9C/o2hfceuJxtcWieIlZs=;
	h=To:Subject:From:Date:From;
	b=UBN8B9eteuROJk1MVAOQquFcc7gECNRKg4p9WpYzPlA7zdx7ke7ef1SniFDkXgUw1
	 42PWyT0X1vufWdTt7LcexCSKMUrQWJGWEtS+Ipa6xnTcI6aJSZVNDEuamNHF8BecNg
	 q2zFCke3vp2qMQ6PQ8eaF6bQ3hJQa9hxDYIgRtpka+PpMMxgI9AQw5tgXvdmtEEJFT
	 2tbXgG3WO3xtj7VpQ5ns1afugwHyZQNfwSt+eVEUqjDCg7nKCcKASlALe7kwT4FrTC
	 WevtAkSZn/tGQykF/jO2i00keTdNIFX+DB59QByMcgObhITftGxARl26A2XnETq5eU
	 psNZtC91jijCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2C4CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106663368.540.8452556532141221287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cdfffd2be119422d600bdb5e109a13fa754e853feedb22497f0f573fb695d8
Date: Sat, 03 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791066633
