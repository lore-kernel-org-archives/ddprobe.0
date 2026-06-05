Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A33033DE
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780689874; cv=none; b=fwTGz9Fu/zFE6s8SVU190yMnO1R/wUGtJCOoFCoUwJe91nv5KusdiSBY62yske0JbJpkVCHQ3/0xxG4rFmC7VKb68F0NIBEefILdwCTLb6rauk7Gmwrragb0TlCH5VG4S/pASL3nY1VE2irG24b4qM3kjT/ZbOweBqZ5eE/Os9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780689874; c=relaxed/simple;
	bh=DBHK6PPZ+ssfX0YHVUZm23sSimiMPiSA/+84K0TXIPY=;
	h=To:Subject:From:Message-Id:Date; b=eFalES5rLD8KezbrW+/KYqFKtOi0AMLjLxmlPfzhb9SHM/BEZPACLcM5Q0eOTritIxgdB+yQekCzLleAV+nvGIUaTvSrZJDsP+PYMQZagfBlg54T7RUs9qFS/GtTB/9tBAXf2jMT6/WZtpyMLny/9odm/hRwSRciWThRrJPiUp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMxwh7MG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMxwh7MG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC1C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780689873;
	bh=DBHK6PPZ+ssfX0YHVUZm23sSimiMPiSA/+84K0TXIPY=;
	h=To:Subject:From:Date:From;
	b=UMxwh7MGrjyvhAgVymvaXIF8z6C54xpTSJWRL8JnBYR9e3JjbyDC+GJ6lidlu/Vke
	 Q0MICXQs2Ksyf/udPaPXImMr7ew6K+4+gMaZfiMC3/vReGMxAgLDnr2XE8+k3yDDx8
	 Zb/WZUC8wynMJTD852Hu5jlJYrpyUxw1lBCxlBmuXgfMdqx0AwzwGJK99wviGgJZKg
	 BWVndjgKznr7MbAZNWWeYppgXoWB+zzT0sxnG0BSM2ezSUUklseKB3FQU8jRmsFHTx
	 Y/al6qvZ1ddJtaB12vM5xrdrP1ynx5gAqM69+4szUxQh69Yw41ctIzUXID8WXpYXhg
	 2pIhpldDn5sSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C85CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068987373.2109.12939417703460893051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57266026330a837d5618d4e5d91dfcd660d49ce82dc4e368451793e46e394e72
Date: Fri, 05 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780689873
