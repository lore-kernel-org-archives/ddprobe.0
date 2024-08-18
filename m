Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BEE748F
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724001954; cv=none; b=K+SAb/E0vkY68jFjFRFOaIikxz9oSb63WUj80ZkRWIfDDN48ubahzPnOye/9bshsCj+bLGC4+uf9l9hISjiM6P8StoY0ofuwqTRYwR/AiCDWDRumgdd2NK+FGcJ/tlJlWSDUzdlrRVV96dtS2AzSHRAhwWA/o88a215e0jPKdsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724001954; c=relaxed/simple;
	bh=NjmEeFpvY6rudfmCKVopdMsqvLTizH5YYpXit//fm5E=;
	h=To:Subject:From:Message-Id:Date; b=A2yEVrY/0zPQpTl2OzJmXMuGtVYsTCEERunqgAS1ztSNHMbys212Hm0v6e1/y8NlC0X4W40EwtZ2jiQ0xcwv4sf791GdqBjrl6qp94PU2Nt7ZmmZqt9p2TlbZOLyNP5iq3hD9oOF9FwVOJg/KF0OOiGFh4SKgXY/jqMn+r7ZYWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNDdcWI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNDdcWI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFADC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724001953;
	bh=NjmEeFpvY6rudfmCKVopdMsqvLTizH5YYpXit//fm5E=;
	h=To:Subject:From:Date:From;
	b=HNDdcWI61Rk7YhNyu88UyfLill+iMsa647sj8saIS1QtIAhbtaCTCBhS5Jw7OFnCY
	 9pnIHeBWRnNlcGDd5BnkoPpA5yABbg1uSFqXlYnUWw/6HXWaroFGxhw2y5YgTDKl79
	 cEgHXvnPPBRMDhZlmnu8jZI3vE+uDjzDQTiZD0cnE2Qgf/taDJAipQrE09vdcnvXPf
	 gLHB7c8dO4WycfZHTDSmNhZ3MEQ6qO2skp2UlUT+owJjROkBdrbfr9znKaEBy8Xm5r
	 iJqxuNDEre07ARnTz5mtvFPnb3b3fjJQqqyrlzzLHk70l1ucARRtg53w6I1LOig2NF
	 gEg7yDa6YLCkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94698C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400195358.19963.1842978720330582418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fcedeee4c1a009acfc627a5df8064293a519dc6f6c652d01ae778f8c1cd0dc
Date: Sun, 18 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724001953
