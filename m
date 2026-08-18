Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF39175A74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787037034; cv=none; b=rwsTdAzmkIO73llNl9QUdBP2Pju83Uf9kLUUAlB/iZ/KMyEL/b6LZvLPoulERq1p4MMqzph6qj8+u/p06Dx1mUSvAcBOfMpo+ZUU3WIAEVg9CiOS1jtCcRVnh2QRDxQLzWc8X1EyVvbD/jGufgAjEOaxg1znDaUcsuIaVAn3WuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787037034; c=relaxed/simple;
	bh=bjdMXLQ53VtSgRhzdZ0HIzjoiMGSwAQ/3qGwTf2f2RM=;
	h=To:Subject:From:Message-Id:Date; b=VAeQcJR2b6Q5CLaa8yOSt/VZP1OjiPAckfMt6nuonKERYSrpb58fSRPTkoHPPCyoNwx6s2iP37yhjsvH39voHxHqhgzUCe7Kh/zWXSoudWxicO7MOUaUwtMJj2+4GUQiBMGO75itKEFRee9eGwi56qWZ3SCO7vbcdB7X8+cfLv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3bRoVod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3bRoVod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D061EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787037033;
	bh=bjdMXLQ53VtSgRhzdZ0HIzjoiMGSwAQ/3qGwTf2f2RM=;
	h=To:Subject:From:Date:From;
	b=u3bRoVod6nMSh08J4iJ1407ouSiLqM6Dq4Crfi4x/dFqYxEUf+DpYpfN96Zj+3sXi
	 mnNIN96FmCmgWAIeEME2U9ndgJyOETGqE/Q1OOWwEPViDDixV6MKzKK84KMNiD+q/0
	 cls0O0p7/SFctEXiNrbWs6F/O+NkqDCYGVp6KiD/J5Ij0j3rpvuHK50l87QNIKRMph
	 TRImEC/lLjOkh2ZdqxPIIhzyeFCkPLfuCqbvnAiqLXYzFjKrDW7wuU50FW84mcl5tn
	 skwvUHeX9PGALeGJkC0ItprDPg7xBcUjAcd/v52TtWWWSCXbgWi1DzKSxExLVfmDIh
	 DD3G4PBp/XQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F1C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703703369.30519.1323703083382325157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708490c06719ecb81fe0f903b723a07424559cdd1221d3ccb61e04a148977c69
Date: Tue, 18 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787037033
