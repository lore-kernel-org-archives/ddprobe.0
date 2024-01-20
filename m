Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07301368
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705775897; cv=none; b=YltT7inqLH/2Z8884zUo9odJyxkKoORi6UXFAegfBDXnXyGdzBlEDwOVEtFKXLRAES50tI2fsN1se2JB6AJ4JoEMLdJTzRttVB+sUy69/8soO3QcC4ZMox4x0J4Tx3M36ZgM3Q9T+aiN7f5X1CXpTTwrV2NH45FK2yQlC8ZpN3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705775897; c=relaxed/simple;
	bh=KSIb0HH2X85NRSorqUax8OK0SVlbPvLTeKy148YjW/M=;
	h=To:Subject:From:Message-Id:Date; b=Ly+3DgOy22Bb+thQ820cjnh5aqXPNB1vTnv6JcNVusJfD0j5xgLu6XD+FvRoRbnYrUNla8EKRsq0MqIwQp2ua1/SLnAOTqvJ+FN0wAIsyPKtny9o0uf980xbsxxE7AUiCgRRjONGBypUG7JMdL0BSd0wRPpDRmWW/6kAlGM3sFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLohtWmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLohtWmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C35C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705775896;
	bh=KSIb0HH2X85NRSorqUax8OK0SVlbPvLTeKy148YjW/M=;
	h=To:Subject:From:Date:From;
	b=hLohtWmDnRsaIBGp/nKuIZKLzfFHs6mZDq1zPOJMvMJbQMOtxqZpWHF3fWIX3w0zt
	 sk9V6n2aX4NqMkDGCUdEx6IpYsO6l7ot4MglT6LdIjVczztxv2Q7xN8W/9vpTeM1gM
	 3WfFRvSYoJt7icNx77Ln0DoCKRxA5F0CFDuZ0Khwmj3xCfWTFn/XuoUubngSp7qIWQ
	 ry/S2vgAM1JzsTFBftfH8LLb0ed95/sQd2hONTeZD3LYYXrj0APHIOxgrxUz65IqdO
	 FFzfTVJQnoSzZpsXfE2LOv37xk/oe4iu867pQ/QLfeFEX+yY3dVDLv1IIyDKkY6K/n
	 cKTX4YgkOawWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF0BC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577589636.25087.8494837698900348716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ced09e1b46b576c8d416c5916ce437cc91b3fee578c4485004b0fc304b9f2
Date: Sat, 20 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705775896
