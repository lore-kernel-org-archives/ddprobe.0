Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C86B11CAF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719206543; cv=none; b=s/lr8aP5X883wa3v2wCnMzfyCV1VU1YpFdcXnRlDfh6uXwpAfT4/GJsijrKQ5LPGUct/BfubbBOSkgF7iAk1D+ut5HuzogJxbFcSHypg5hqZtnL4SWKiARnC/30GSrDxunGAzcFBSWr2VAeDF1/g7s6/G9XqIMyBLIEEArl1bqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719206543; c=relaxed/simple;
	bh=lH/2dRTzSCrcklNXhmrwCX9wOTHVc2oW0IOLjh3wffk=;
	h=To:Subject:From:Message-Id:Date; b=ZqqkKVtrfDvkkJApH+55T1K+TqPmO/VZdnhlON5wW6+yyVhLl22j+jzFBlXpXFaRBxKFjhgorm9btEGuogNXjiVF4auF+ZGcIu9roSBwf+LhUTd9I1rSfH1eoYuVCReGTxY7K47qo9aWnKZnlaTBFrXsFeTcdi9AMIgGO3j+6y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp+L2bGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp+L2bGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AD3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719206542;
	bh=lH/2dRTzSCrcklNXhmrwCX9wOTHVc2oW0IOLjh3wffk=;
	h=To:Subject:From:Date:From;
	b=gp+L2bGuedV4fHjjW4bkH2OPIPc4fc2Zj1+OhWzbjDRYoQ4EY+HTDQRZJlYrkPWL7
	 JwND0wRiuC8rzrIjxc+lM08Tpf++BOVppxbo9JkWvOYIopPPC0mOUloDHQdyrxTmxL
	 ys3MFuiupaR2Li5gp9jRJIyMROwSAaeFAg8/nw2miInjBnoqA6ZVo4szrp56jE19Lv
	 Cmy8VkrbRW5fOpaTdYj5Rt9sx6tD0KJXGttwrkJwegCFB90Aef1yNID1cnYy/vaM9I
	 TyHLhJUxRjMh/MJ90oMTE9YmeVc+IkiFCaKN+Gv+FjsOTDUPLcnL6pw3GbGvfBno/G
	 gifTpgX7Nd3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C097CC2D0D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920654278.29530.8288719931843930050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07074aeabdc281346273af7fc244c5fef41b1a63289eb041c2f1d8ba0690f3d6
Date: Mon, 24 Jun 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719206542
