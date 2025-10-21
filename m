Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332FD1F936
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074394; cv=none; b=W42QbQqcwgxSzg3HOIqF/gd2ecOHjEvqhdXqZrdf3NjUDyMBJUDtUcZJJakOcy9/UdFun38UzCeNMbTZFmRy0pZmykrHOh7O2pzxJLV3OvjoT5lhHfGaCD6kpkZAL2ZbhI/bhxzhlQgE6shPkCjPcKiUEAXMY6eG++P5Yz7yMps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074394; c=relaxed/simple;
	bh=nLReg5lojv31YWp3L/ZfQzQSpfgU0RHaSlQTq6Yo2Ps=;
	h=To:Subject:From:Message-Id:Date; b=PelZsueSQ4rfYQfLGaNU4cE98UYc2KdfKpVMRvFXdTG69Vxj5p8q7M5ppEQVgsFP+8mTttgZSJMM0ZCfm+pfkbPBvJeTi/Tz8JMuJSI+U2FJ8zLCYWZd5CezfIF03hP3Knx2ihmS2LXi44bqeSuvA/hNsiFWAncDOZlaROIkGiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdNv3XGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdNv3XGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C50C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761074393;
	bh=nLReg5lojv31YWp3L/ZfQzQSpfgU0RHaSlQTq6Yo2Ps=;
	h=To:Subject:From:Date:From;
	b=UdNv3XGHL0+ELf9wkxh3L/OHJzLW9zRBVW891UsU00tXCKND4O+IhnyvinOifg5E3
	 w5qGtcN8Q2OQOI/yy3NL5WazUQIjX6pwGY1QQNViTkiHh2ru2r6Sm/yzXWjXIxklYH
	 QBjKmU+Blwd3cIYMQQcka4Y/Wzlg3vbwXsSCmESBcrmLEwcsdQTo2bQvNHExqjR8cQ
	 9PG/HewgCewzvdfzrzFoSJivdQE/C9mHGtZFL4Nz1da1Y9sjoefdZBayxHnMQD91Pb
	 NBl7OJAmJxinEg5MPUDdibXx1oN131dJzGfMKAkhU/oyawFKKhpFuMGYvOfNkR2jWY
	 Xigxg2G2BnaVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB67CCCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107439368.2540.17905596585856445960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ec0db22b97ab0eadcf4220a3435c6cf99cec78bb5e16608647657d62ca5fbf
Date: Tue, 21 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761074393
