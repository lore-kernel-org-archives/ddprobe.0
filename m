Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3324513C9C4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782180994; cv=none; b=IBS85pa/HVY09bWLm2qeybVJztj8hmL6glJQkIy0AVe/A5zP2HjLRXMz+L4RSK6BBJCNEM+OnRbg2I2vHuGXDBAFWcNs2N4FXi8hfEDZiaL0U6xKKAHUEkVKqEZRVrYYpNrmQ8++9lR+m1Js1CTiGDwMWPc/Dyv9BxBlpwwxM0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782180994; c=relaxed/simple;
	bh=aBT2nwk36QJv3PJwq/MzCKXX7vNb47c6w9VnJKhJC6A=;
	h=To:Subject:From:Message-Id:Date; b=EQIujKRJDJl87p8Ykth8DlDdoCCdLwqf7+QLe3LzbMwAfmnqqgdtKY+XzL+wXi74ie244LAEzcDShbsPC8u7Ilwb6YJGYPsjjrpAcQ5GSGO/jpuHcUj86S7tRC4Gn7YMcXkm3hhP7J/MCyrllNbcnC427/M82AGS2R86Q1XVOmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAZttl8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAZttl8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81D7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782180993;
	bh=aBT2nwk36QJv3PJwq/MzCKXX7vNb47c6w9VnJKhJC6A=;
	h=To:Subject:From:Date:From;
	b=JAZttl8oL65QnDKDjIjeYZLgHjUvAXknbRvsmf5bfU4y4Gpvl4TfbwZfhT6mpxhWj
	 jtf7z/+f9pKvs5ZAMQPg5A0Qsn2EgJasPA91li1cRAOqbPsfIgLTeF3RWEfzOPcSEA
	 tpUstP350f/pLoeBTkKzeV4f3DzP5kitXyNmfs76Zb0JkjJCNVStWs5SA22qU/aACs
	 8TE1y/IASydAhUCtS8+UjnQO3kc48gG27NjB6F8oRV10MUbFQ3xYVevRdj8gccpSjt
	 x/Tvor220bctSeB5uRBp7q7ztyl6siK8lOuzMDG/kE8fM5OQjc1nTB8sbMYhM0cW6I
	 Uq6LCu/8Wzpeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE13CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218099369.8742.15483766977392640312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3df99886ae8c228f9a60ba9d21bde6fbfd8a58818e88d24a5f4fb4ad3b054e
Date: Tue, 23 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782180993
