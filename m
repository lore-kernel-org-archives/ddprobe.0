Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515CC4A06
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742124594; cv=none; b=rm6KFGLEA7Bq1ElAOZYcKrwOBdYYNn3hUaCXoEqQH1BNmzbrUQ4nR5Xf/EtJbrkgOCCJNVQZqp2IWyXsq0Jt1/PY8A6gstyk4Tt7BU6NSGYZgjGS0B1v7WmNr7Dni+mk4J3xuqKxDcksu4bRSzz3X/4Icx3EQsuXThK3e+TBr0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742124594; c=relaxed/simple;
	bh=NkS1p4OSUzSAyhAF6hESO3rY9zdzGKxLQ4TH26quICk=;
	h=To:Subject:From:Message-Id:Date; b=sHjCfnP8bh9w4GoBKzbcpuLWRCBNJX2SnHeM9GIfGfi2LWDMQhHwuTjIVWG+jVgXySYzrEssQXlk3ucH5KjPloWugJTVZkyDX2gNirQ1rRs3Oy2ncA9HzolAVAVaapj2+loN1itvY6AplwTxjUYgHoX3mAMrwej68YO6BMIsOxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocDNT6Gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocDNT6Gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80F8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742124593;
	bh=NkS1p4OSUzSAyhAF6hESO3rY9zdzGKxLQ4TH26quICk=;
	h=To:Subject:From:Date:From;
	b=ocDNT6Gtx+3qbJsg/pB5D7xb+w0KKx0R42vsw52JXf3Q2GYI4ycuwFndw2hx5C6pA
	 8QRerdbt3UnQ3j/k8CEHXKsMiGdsoSG6bB0jyFCGJrYTDz/R8esLe9pzmzk/9RTBCO
	 5s/1SMp0Kj7EQS3BhUkHMeT33WS1Ps8nzHi6yR1+VMTq9CatKL84vlsG1ENG2eWzp+
	 3Eeen75fI0Hhx2XGSH9lZxrnifF/KjyzXXpw2ichET0i+T6yTTonGzwqnpdwzvNB1j
	 F++31INfkj+OvsheW2XFhLudqSIal52QAM4Zan8R8fL3el2ID5lJCHXKca5HVgjjK8
	 7dXzsJrf9JvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3354C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212459371.26757.7385382151710698338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424f62676bedb9b2e97614ddcc8156928910d4ea4663acdf9bf03d118920348f
Date: Sun, 16 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742124593
