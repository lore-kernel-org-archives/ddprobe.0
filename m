Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD081519AC
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754164794; cv=none; b=CGTqs7JO4OrHBXdS3os37YpVJlUR0DRGvl8RAaR7MMi3x2+p/p2iySN9dNO2g3Akgh2mhuCiiDJgtvBWCsc8xuw4tEwIkRTCCWNViEFWovA8rj8CIvXQNZTG/8lMvwBk/qdGIJ8yBTSuKomW185FfozOCYYvTQ4Yce1Ekbvspa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754164794; c=relaxed/simple;
	bh=VUsPQPYsNL0MjoxKb4/11Q9xstXYHkRLbXKWXejZF+I=;
	h=To:Subject:From:Message-Id:Date; b=K5y1T8SbYhkgku8TVsHudZoB8KPWKuKDUCPsdpSLsy13B3nXLYmtMzmzeYG9NK5s9KEnTsPOkYEYnvpcAmq+8+5JVMezNxI+/CBBwogd0nTQgdEgRl5WxbWezNtU/oqsg65rU7Eq3JpYeS9FGDWpikltgLsy6IJdkYArk57Y5lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeB+m1BY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeB+m1BY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754164793;
	bh=VUsPQPYsNL0MjoxKb4/11Q9xstXYHkRLbXKWXejZF+I=;
	h=To:Subject:From:Date:From;
	b=EeB+m1BYH91QKmoDcMevupH91LX1s18Ek0kP/pYI0wpPWsg9v6/brYxBBydOeCx81
	 PBgCzs/jWn5y4vBHXygyQDTGBe72S89cS2tOVl6jb5L+dm+6oFYmOodnepeeVz3Ayq
	 bp3lW5eB7Ha3FkMQXy5UQnmrlaovD4MgMVXovYN6E9IBWtbxvC9e5wU/Wnpgqe8q3+
	 L/TKF7UX1ah/2YS8pTxKpHiab4GitQahuwTwcnjvYwysOVobEWAB8YCUHE6FUQOK2T
	 TpE6rIbap2DgnNs/qxhRVkNQkKLmdHr5ZvCc1bkYV/w0iybnbPklosrqGbud/LSJzs
	 PcHSNQ3L/6gog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85DC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416479357.648.15823429689312221502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcfb1205dcd6f1b9b9073fe01c83da193c93000551489984a2e0743bba3e847
Date: Sat, 02 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754164793
