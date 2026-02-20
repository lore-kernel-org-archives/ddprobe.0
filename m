Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB6B366077
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771610094; cv=none; b=f2IGKWwbs2NbiApIgv1y6bd+e9YA0Ge+bFZF0ZJovK+mHvoFN+bWbuvrJKiNIecdnfEfmuY7S1ndyasi1TC76I2s5Yd3+0NFl7nPx7EpmGX1Cq9Zroy/i5TaDbZJvDBlFle0WwRZvhxjrNT0gsSIQWCmwUFNvb7vLFjcX2Aa8nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771610094; c=relaxed/simple;
	bh=zu2+xGgn55pOzD5uKTQAgFEelVLzsJneViTY8kWhIGg=;
	h=To:Subject:From:Message-Id:Date; b=XcWGapdrjLB5DkG97Bu8fve4h3txmSRCuV5poBTC0//OI5A7gKvvNRYo7p5m5bKfbNHky3z6mA6IAHrl+no2SjP9UKrmeAfY6ic146sluriW0iFVTCQiYg9Y2csW+Lfc0vcEIQaRzMWTaTLZhhwuXXD1jxNDw8A/m9OclkbmPik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewEf2fdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewEf2fdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A03C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771610093;
	bh=zu2+xGgn55pOzD5uKTQAgFEelVLzsJneViTY8kWhIGg=;
	h=To:Subject:From:Date:From;
	b=ewEf2fddow4D5K8k8XjOwI6kFx3KS379Sy3WR2k9t3oFvdx7mZK2+5MsBTlviGS3T
	 T7w4mzqV4IhEnVcK8/0F7MZEmjhCaQHp4Dz9qN9E8fXuhcEbvs2bSkc++0o6PyHeDV
	 XgmUW17FkMXWH/GKD1C79l0S9AFL7tedq7icLEwhh1e2TMQCuRTUmtpCYay9xE5Heq
	 mJSM/cKvxPfLGpsAws2NCKF1Bz86ozy7l3jvGOAAeWyW/TcFa2GxZ1fmThWFY92tlV
	 sVfG+bURiEm2EpvfMG/uz+iqyr48aQoTLGxgB41ufat5KktHkanKuZAt+21rgq8uTp
	 Fhb/Sh+Ue4fgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A57C5AD46
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161009359.13881.12977728721852329579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89acb9a9c86b9c0200000ff7c21982cafcb42ba747f431bff67484bbf3bf177d
Date: Fri, 20 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771610093
