Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4B942A80
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777768654; cv=none; b=W/MOvno56q/sJZ0bT9KGXIwQOZRANLDW5yPB6/wge4KCH/1bJfajYNGgSB/j2bn1KT/q68q6ZkfEK6E7QYZli0ZTzGjexvRIRC+bzNa8hn6wplrcL9SW6yaQjQ1INl99dSBfzMz0aO3FzHCI437nbSNM5AT0DVz412w2PlECz0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777768654; c=relaxed/simple;
	bh=bebOQlK1if2DX13/qfFP3kJHQHD+Arv4orwXGPEWXA8=;
	h=To:Subject:From:Message-Id:Date; b=t7Ft8Ohejczlo0cwomQ0Nc3mQ677VPQLvWJPpHhSmksSUSfPq+fRQG2ADEJPYteWd1HvXLH1/Sr6N50YaHgCP9EFGaVKwSt1/Nj5YVaPeuGKW5X8z1N5pKZfyntSakcefu/NkitT0tuiLTsMEyNEuh7TMhmv01PQrcdRbsH/DxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY6KVGU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY6KVGU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24AFC19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777768653;
	bh=bebOQlK1if2DX13/qfFP3kJHQHD+Arv4orwXGPEWXA8=;
	h=To:Subject:From:Date:From;
	b=eY6KVGU/+STWkf8JXFXRqdw63qbOUgModup9Nj4ykxMfaqDjYXu9AVTlD8ig/rTX7
	 2A0em3JSOFin9i/ePE12Ar3Cr4LhrG5eJQC1MZ6VHABXkZPKPPSRGZmMEH09b2q4Kh
	 lu7PBuLCseF4MOB1T0wbwh084pW2zpgpLiIyPIl203iZUB2xtUpXJfrDSVXX43VPUd
	 dBXFZhb/XGEgcQAC68H0+Ld+hbztxx1KagroyJir+o56Iq4nEdLTFd46ZseAhz1scN
	 EXNkhfoehJDc4HZcrfdSc2hFfA57KFv0ppYarmbqVao5lDi1UPoyW/DqQK4rcVfzXi
	 UMNnmnGyKTqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD839CD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776865368.3286.5766711950116185684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bf267743b208ac6cb97b39dbb06019e46aa9001077002e1fcf163b1dfc24a4
Date: Sun, 03 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777768653
