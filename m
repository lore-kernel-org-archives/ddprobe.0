Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF63138759C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526893; cv=none; b=U/tYuuTtWn/yx57AH3o8hg2W/ycEDEns+oRS/OrTkOkeofARSAtVTzmDFguNUVhJpx9kwUz7eRGXfd5m9voj8W6ySlz1en5bZDZSZHMZuGOuzive8PYGWMSciIz+sDGj1/rDqZp+spHuz7pJ3dd+dhjLk0DHyLFyBXkqlx/RLfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526893; c=relaxed/simple;
	bh=2zjePTPGP7dXdYvS4WxmZPGK+rsbXBFl3PgAkBqKYgg=;
	h=To:Subject:From:Message-Id:Date; b=RKL1J954HCeZat58daQ7nLLm4eaLIFUfi0qmbMcgb685DMWVvUSkDOyUpnSZB4295XttZX4EBWOdhosNrrebM75ByfSzmcV0upFbqps2ri6KioMZh1Xq+RuGmLe3ktBNZVR+nR64Zk/Ti4czE6BbLIbLpYnh1ndDvtqiUzl3KCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhqV7/ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhqV7/ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DF3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772526893;
	bh=2zjePTPGP7dXdYvS4WxmZPGK+rsbXBFl3PgAkBqKYgg=;
	h=To:Subject:From:Date:From;
	b=HhqV7/obE3/0wOmA+AO+wFVgrUHJJbmez7plsWNc/yYR4DokQ0nF56ukHE6BSDqR6
	 zydh9zLNAIxGRzoZefWGNPS9gkdwQzW8L0iPLO94rWyeyu7enIWdd9eJ9pSbFzDv4k
	 sS++4WKJhXD+M+bKRVDEVD5tOr79u6UFYF6TIK7HCPvWvTC6r6M0JcfgFhEtWzXqRK
	 fzlpBABd5U9MACYilE8WsZjIYbR0BzgBWaz2LCDLHsgP4ywEpEHHv01lR207N/begh
	 2Wr2Cn28bhGbjrwe2tEM3fdKleh+rOK1/lG3MYF820UasOUpOgoYErlLu+gWND7DPk
	 g6pFtf28h9E9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B30CE67A95
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252689360.8965.6777686495883787442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227c710cae924f847f24f29406ea20002c71aa037803cb7d281b06842fce987f
Date: Tue, 03 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772526893
