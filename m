Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B1412B93
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740883135; cv=none; b=dMaWS8L8TupthEZkEpctrUKaKoPWj9Tnj/yiaUGXhXNlVlTiunjkoJLxWiq1m8fvcpbupy09MKejgqzv32WvsAIVqjzemkUgHKfgI6KiWikWJ1XMVKU6+o6fj6ybkqQBmhp2GfiROPoaGYcYTsMDw/lwxRKvbOggODm/5iTWGeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740883135; c=relaxed/simple;
	bh=sCBEMdhu9LgIzkVE71Ohk2OWHzQXza1EOCdaCKk/IrA=;
	h=To:Subject:From:Message-Id:Date; b=PBBSeoddHyFfbzuEnqcIKyf02q7WejF9ZvTiXioN/bb+s/W0Ut7r2V0xONy1qsg1rOu6Zp5iuIpV7sv52MIGlqkNvxBeH1VSnHGSYuL5lYFEz087bGq420S2HVoTY6VGVTHNOkTseTucd0xi4iiJDSsXwtKZH4/AEMbk/AyK8f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mELhSvwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mELhSvwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B173BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740883133;
	bh=sCBEMdhu9LgIzkVE71Ohk2OWHzQXza1EOCdaCKk/IrA=;
	h=To:Subject:From:Date:From;
	b=mELhSvwKhBGgWiTpzAL1MxFFTCfpgt2T1ahJ3aSZd6uMkktmGTMBCQOE6sWdho3VJ
	 qNT1FyS/L+ut642bt/O3zcb3p5Wb/hPWiMWhNTO25ZbGxviXliLWFMWxCrynIKkd+G
	 jiHr8TQxNWCvJC7tKCqBIWwWSeUEE84PAGtKM+eVedSs6DteOqHmnkSh+Y6AhuFN2A
	 5kJz8DIFAjLxNtfRf8Qgqzii5geHzZhfx0N1NprS2ITw5Rp7BU/uHS/55CD9sALmXo
	 N5N1yBwg7ftx+65Iwt0VDUxzGrQTmaP9cTor1BP/yptjxXhfwbFgB3BJ60og5mvMsH
	 URmLVtaCy2Tzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9917BC021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088313360.29031.13066946626612488594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61aaffb9098375ee7fa92e1df304710838157ef9fc6681ff93892460c0714656
Date: Sun, 02 Mar 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740883133
