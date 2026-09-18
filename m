Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668E93B0AF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789774234; cv=none; b=UT+KXarEzrG0qWrps7ZVz1h5BypNiSQ16r6g+Gf/Sr/HOl2v79Kt/StfBh56oyjVWy4RmzegXTVA26+lyyEy+qO/OaOdT+q3tGGLtVI2Vnw95KOATwqyIKk95qFsYoD91oVWQilFAMdNrhlLWblylAglyEx/1myj5j1apYT77EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789774234; c=relaxed/simple;
	bh=uy2wqoCNu1kY8T+KJC7GnLtM5MM2XDdGfQaceSEGo0A=;
	h=To:Subject:From:Message-Id:Date; b=fewsdEtyLbxTbFsN70xAVFAI9/xvo+iSZDIzCewQVkPmcxd6U8YwOO5GiMuIGPSmrPqxuFjReV7FeM7YGg+j6rZwJY/dZZWeWREBDcR8zhNXBx7YNLSGPIC+tTwmiBJSvfkcRP7/j6E97IfgEeUZumzwk9giBqRfTP7XWtKYkKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+knHO5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+knHO5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB719C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789774233;
	bh=uy2wqoCNu1kY8T+KJC7GnLtM5MM2XDdGfQaceSEGo0A=;
	h=To:Subject:From:Date:From;
	b=W+knHO5u9xkWVvjVbpQ5mkUgy89vedrHAjqp3so0vW+9XY9Znb8oj9jQMSOaP5N4S
	 +Zn3rDhpuxsI+tpf+MIXN7pf34iCg/Fpv1UhuXZHAB+Dem7xxT7nAnF7t6Cq3uEbdn
	 tP5Di+sbIYpRc+NNqeY7/KCrvKHlSmjU5xlwCLt0OPbbB6GW4AfrCtS3yojuQ83CD9
	 ca1xvks8O5bVOknmbta7bTO9qx5jf7yaKSg81/U06lOZ8uaDJT5RSujiTnrb6JDInv
	 M+QVHn0qvMZO19l2NaCZP/6N308R/rcvMOX03LpTryu3/rUlzArovcDQhAzQIBKPuv
	 Ss7bPsoKPiLFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF3C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977423368.32575.5807431535444562270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfe8135999fe5c82008b259b18482b1119278c9f19392015ece1b3daa30118c
Date: Fri, 18 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789774233
