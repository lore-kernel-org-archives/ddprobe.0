Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC03017753
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710669497; cv=none; b=lw+csSBMdm9yqmr3FdboDGNsNKCpgoSeduQo+pCzlaDCtHo6Amxc4t5GKd1t54nzgsbseMmiHJX2gSwKG/EqtEXWacy1/VIDhNBVVGnkFq7/KeAa9ZEb2G8I3w4V9x9yPPvXixq94Vxsdo+3duvnnW47fWR5qs3wnvDZcshv1vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710669497; c=relaxed/simple;
	bh=7izuHUuR8qgL6ZffOpr5n00rZKi7y9MMjVZTWgAsd9o=;
	h=To:Subject:From:Message-Id:Date; b=VZXQKxIUCEmr9xvRPXkUlJMsR861p4fK9qKjk8Mu46sRnHMOdFArBGLeWYATml03wF9vzD4sW8f+H4LrDOMLLMITcuw4soUeF13aSSw4xu3zEnxy5gPeP8NzX69EMOWkL40+RXQAVvblRK07iKaFjkDC+hwINnd1AbR12cHs41Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7RerZUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7RerZUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C2CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710669496;
	bh=7izuHUuR8qgL6ZffOpr5n00rZKi7y9MMjVZTWgAsd9o=;
	h=To:Subject:From:Date:From;
	b=c7RerZUDfcpDHJrQleNf6PZgnm27GwIh94BRzV5xajYuwddX4b34lNalKkS1FiwW4
	 qB/7Yvjgv7sHWNjOYf/l1BOs46tgMdEaPKKDXIt7L1KUWiRhVdSCpkMBzmSiu+4HQ2
	 k/O1MSmYd3uOhusRW+myYgktUA4aJSy3xdWj5UIbT4IItifpiJiksiSjf9ax3amPur
	 vSxqNfuPDUc4ZVpoJkiA6XJPmCdcFCuUBHIUn4SNGggt74c74rkkQkTirVGJZ/kclg
	 h2baRhnX+IA/zBet+cYuw04r7RTUQZBij9dV2CRpcWYjITAvUtc9pgCwKayXRqoBFy
	 pcIT7yRRQinAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623ACC54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171066949637.30966.12720633641357283054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b27ca5539143960f3d3224c6ece0d8362eaf7384c0ea4c3e6ebcc6614f59b9
Date: Sun, 17 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710669496
