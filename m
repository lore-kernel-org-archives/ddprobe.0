Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB8C1F9ECB
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771190694; cv=none; b=BjpDnPS/zITOrPOFhtlckOxLWHFHFJpM/7feF4nXq0/6/ui65+DCbe9E7ymBiUXN+4pD7qx4jveOVicZVRd8nvtjksjwZ5P0SAGGhPiBMb+TQJtGTRvS5ErPB5kR8audrnugIlte+1WvBey9p22MxMPgmBWRfjfA1JlyDtRrZe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771190694; c=relaxed/simple;
	bh=wHIW5h60aETSh1tiLuzMSkwIEnVsGMJdia1VTVW/4c0=;
	h=To:Subject:From:Message-Id:Date; b=LPPjEeNmG36RgHZXjuLpM71G8ciT4Zqg4WWWpyEbeopsPFHzP3NbIZMeFmlZmjtpCpqAsDT5gCUbSnCD/7GdgbtohSWmqOM5hlz7PeegNPoNiViLSzRTE3gHnDC0VwEJX5OLbBCHBQeEiN4DBsbg/utgTh/ilYJuDhtmlHusIew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw2h7Rq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw2h7Rq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C50C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771190693;
	bh=wHIW5h60aETSh1tiLuzMSkwIEnVsGMJdia1VTVW/4c0=;
	h=To:Subject:From:Date:From;
	b=Fw2h7Rq60P3MP6IhqQNne1yUNxiS5JoisRPXuc/sZaJPXbgwux+gcNSZe5LhsxH22
	 ReL+vZK91dEVasbXYbEs8Gkl6yrEzWJeGdKbekVdwxHmKzASye2OnefM1IfegkuyGE
	 iUTBe3y4Gi5nbWZWP28xnel3FBwWLGk0raO9TgR9L5EjeRzpeW0M4hVuttzuhjFtWZ
	 w1AUcBSmHc+zS1IAoJvUwPA8Z2KuRIKtnQAwMFvgMFeGhgaPYvLkoqpvUUWOVhZivQ
	 26vIZ3Gfvr07JwwRGdtDTqJtG8l5D6jRtdhGdM4zBy5fiN8E8dJVfVejjJyFuIZcWX
	 tR3r3Xw/AMEvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95583E63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119069358.9642.18143279089688674743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c63b78ff334e99825e5cfee382ce16278be3bd171843c42200f7754f435bf2
Date: Sun, 15 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771190693
