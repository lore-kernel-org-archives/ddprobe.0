Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6DD3DE42C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777921053; cv=none; b=ekC8kMeSeCodjngwM1zc3RU2G7HpoPfRMb1pwJ5lOuxjazEvASSnuJrf2pp3c9sVG0cuXE6BYiGMGmY5cwZJBTa0aUbY+nIo7EGXPHsd0ULw//O2FuBIeoy08F/ZYS+3x8DWirTxhrRvPkTrtIVTZ2NAlWtrgYNc4cTcdNM9wks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777921053; c=relaxed/simple;
	bh=U51eolhyswJPmT93rgGJUW/F5Kn/FoHPNRosPkvpDow=;
	h=To:Subject:From:Message-Id:Date; b=A0cqqVs0XxE2fnL5wQ4ae1nak+yBr388/RwXn7+4p2KFgQiCab21j2fAkRRhNVAQuxptWQKOJeVHGiPt07rVPBVFNt47DRHEr5S5VoZZnShSPPuKpoUMTYImn+TeT7R4yPPUYIL98XO6l7NnRHX4onrCmVhm4eSTI0rh87gKh2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUx+zrcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUx+zrcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7643C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777921053;
	bh=U51eolhyswJPmT93rgGJUW/F5Kn/FoHPNRosPkvpDow=;
	h=To:Subject:From:Date:From;
	b=YUx+zrcHk/NLySyVnFW0ZMmZLGbifgXgEZwP51Epp+mgSXonmSQpR9mNJ5Kd4uJWe
	 YDxEiz78wUrWtxXOmrmimlw/88IJa4Up27+kHu+8sPlcQWZPl/3krRLw+vHql2wbg7
	 PhjRr3QucyQkRdDgUG4hcrvqzJJXNHMI+Bn+Y2Ekl0cWwrR5g8fbgf6OsMPzHDYu9L
	 WxHVKp1WRAC//ItwXythqH5HpIqMJCCt41nKljwLN74hfQ8NvbxI7bq/rdik81J6Wn
	 Oo4DhcYo7oIsKnelQ6A/1eCu/j1f5jy1C4/hIazVaCOyCNyZImQHx8rKI994LW1o/z
	 diTXMd4rLsMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935EFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792105368.15905.17135728763628352781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4144c8a75afc8da9863e8e916d32d96c74097050207cbba0cca4bad86ebb90e5
Date: Mon, 04 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777921053
