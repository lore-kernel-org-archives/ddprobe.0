Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2327F359A8A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772481294; cv=none; b=hhq3DQVxIhxdtsoIzPggUKaxl4UY9+dmmZyFeuTbOnTOJibS+BDrs9EypXdyioqWS2oMIpW6/CFkTQvdE4e/T7+T8yXHN84+xnhZ+wel9IPsQCJUK2WGcbMj1nxRpjWQMQobSGXy4ZNEDGJm3B1QDcCaLuKgoi1xmoN+XUlde1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772481294; c=relaxed/simple;
	bh=N0Boa0r6zFj6XpT6Jb/JUaUFTVb1WRyya2Ab3fDPqpo=;
	h=To:Subject:From:Message-Id:Date; b=OtcDFSK79V5i401A4ugslm417JwLAFp9gOVvJ608R17qNFeHVwCzsp/qIL6Kzc6fdPkOk1XLX9M0kRlEwtvG7JLKz1kuE7k9D+7xLWWy0VoqE0V700W56BayZEeT4ewEpS18iGAK97cPnRaZzjzA43mORldJAr2yKTgRzIvL9Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov2UpM9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov2UpM9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5788C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772481293;
	bh=N0Boa0r6zFj6XpT6Jb/JUaUFTVb1WRyya2Ab3fDPqpo=;
	h=To:Subject:From:Date:From;
	b=Ov2UpM9pLQtYEgATg/BMZ3VySrAKVurOZ6z5DWsgAFEGp15newl4WrLtGZ2SkFR2x
	 de5tQ5syhb5Iqu2ZeeOwt9zeUeFpP941TDZ8oiK+awHzJoe70YaN5eME1KZP4kUvbB
	 JVedDYYflqkRKTO2mBJSpTe+9ug2OxMXDmNamCYTpVxIphRa7pVaRl34DU12Y50o2y
	 xi6drlbreXd4XkaURdosdMblP4jIYnWN2XCqWrZf+qyS3Qx0W1p7tUvp0SNokqiFdr
	 ZA5hseLeq/ukDt37vyVOM40ZtocWCt2rHW/GX9C9jiBVZ1A9POi/I0aR70ubtrgYyz
	 ND/C6QdhWSXWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0174EB3624
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248129364.6153.16533585868728968736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56e294bdee0cdd93ece1a7d0fc9537fae9fc38dd651408a70b1b76e9c580193
Date: Mon, 02 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772481293
