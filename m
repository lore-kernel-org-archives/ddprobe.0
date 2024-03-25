Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAB112E55
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711390697; cv=none; b=mJZwY42CmARIKDBau6RHLnlrDHNjMaqCp5K4QgNTKerk3+r7bxALQ4arddlcgKD3xAj9TcLlDSZtDGHAWgHuxi9n47emxffG5UH6QFy+bqgWCDx3RoKaUFHsTzKFbqOtcT0SDgsd/wFiDpogbV9xEdHERIPMSlgINCCPaYCWTps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711390697; c=relaxed/simple;
	bh=8Fa2JWoTJLtPsleqTYXCels5bDbm/5M3SsbAz4BaZAg=;
	h=To:Subject:From:Message-Id:Date; b=OV39LMzymaJ+FXuEHHAS8GnEhBeFL5nkZDQeDlNlwsavLhpPS2YYSxjHYUGhH+liW9op6A6p8CTAu9VdYBxaezUNjjDo/KLIW3LpayoqU2IuqOfSH3Zm4sf0uc/tCm9H56U2vy4NDFTuOmGp0a+zDGXozriIFklOIQRm2QhB1Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptVA14p9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptVA14p9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9358AC433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711390696;
	bh=8Fa2JWoTJLtPsleqTYXCels5bDbm/5M3SsbAz4BaZAg=;
	h=To:Subject:From:Date:From;
	b=ptVA14p919srYlEl0VjSQNzP+tTf41Gwrp/lbwhBaqFAXPBBhDC8V3cXTIoYcN26B
	 lPr6l0Rv73FPVFo4UqXlJpt5byOrXL0fnQV3Oh6hzw2T9kH7wWiEXVKnf297fOIq8i
	 DsgcRWG9xjEPi1PfTHgGluhHxHv27sOo7WZgQEYYZ5vikLiOh2brS4GsfsRo4auXJi
	 y55r87Ee1WzHo0SrTKJZGgiKj0KcdMIylt9VR12Y+AQ2TwhZWQjoFim/FK7LjKJRcD
	 W0g+VPcIrIL2x1mkPjXOClJiwviBWu8ChFXhrKYWwAYe1ZBgzK0bP2XJrbPt0nuSth
	 U8UjwJAx421Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 783BEC54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171139069647.26054.7039082668534114070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467b293ef76c4c1f5893b5c637977b78943417cb942e97067e38985552e7c234
Date: Mon, 25 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711390696
