Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80552BA37
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727751954; cv=none; b=nj3NGtXf6LzQBTzNNInB05Ir1OsxvrtOOHymLzAijraN3m2g54qAsJr/8ZODASrqSL3Fyq7Jq1nUepOEiU6cG7QF2TwPZ82UoOIz+mPf/N8UGwvAZfy8hxn8tzP4++WoQffSf3zUel1mMDRS7GIYyH0nqMwzXQtMuUJkMqRBeX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727751954; c=relaxed/simple;
	bh=jVpTkrV8lJ13TvMKBZ14sNCFdCGc+T+vI095qvsbOX0=;
	h=To:Subject:From:Message-Id:Date; b=j90mwH/3QQb4Y1qx1Poskz7gpm9llsyjvIFqL299Bo2cuytOrAQRyi20RNI/8lfmFLFmKZfpD04FWWco8ORmDRagaVNZy+ge6D/FbByjJ3/14PNlS4BFo6Th5urGBSf5dtxg/9VX3Eje2BaRoG/TXzGiJcFtbropAb8UcgLadOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/GxmeAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/GxmeAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1245AC4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727751954;
	bh=jVpTkrV8lJ13TvMKBZ14sNCFdCGc+T+vI095qvsbOX0=;
	h=To:Subject:From:Date:From;
	b=k/GxmeAkgiM/nn57QCy1orMHmqCRPYtODIm0mO6BgJ4h8c/UbAEweD8h94h8aCg3J
	 P5lVMGP0EitMbqHeNyu8PWoe8ZFm22nIGOIA6VS6dLb0JQyUidpGc+iHIruUpVID9G
	 nruKq2BhPrv4luXsj/FgElEiwNNCsYLBGEKpj/ACclE+8qhWqttYgTuHvZSf3FHAh3
	 tZCrWuCbN4YUHGV34PZBbJ74MYoEMZtV6CgGFNVP/LHhY4d4fJzgzjfClkyQxKugTo
	 rTe7zph+EgJrShecemqkAVIajWiLNWIMEq1kC6T+CjLJRA4qr2YWIfnCrfoth88a73
	 j1qWPWTaXHDFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EAECEB2DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775195375.8742.3781638750464050097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36c0bdc2d0b6fdeb97d22a50100ab911693a8096c8b1f2e01681e4a36b835fb
Date: Tue, 01 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727751953
