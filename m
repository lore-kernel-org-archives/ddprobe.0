Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4722028B4FA
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789204234; cv=none; b=c+fCRcU6ei5uiC/dhwa+JGNFTyverDlhKBp1MH0i8JSYwynsc+xgAN8vtzysW5jXZ/yw7VMTkDezmTpCpUV0AWSu1Hk+RmQ3eXBotoTB9dpx5PewW0Nl95/GAUYZUIUA+8jSfsjGGqSpqABP1kDnI0pw8+NsJJ4aeKGGMoMAeYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789204234; c=relaxed/simple;
	bh=VFlVkTW7u+E3QewosbDT8Oi4IwTEvVsARY47xUVN0AE=;
	h=To:Subject:From:Message-Id:Date; b=lMaS78ND3ndp6DfMW6OtkswioXGbP7VKzL0kzcBvSyxqUrrV8QGk7I7P9kNyXdV8WHne0Oo1O0U0xxqBpFl7IS2GUsdPdwXY6H9ws8+lKTQ7asAiHJxd5mbucXhcZiZamgS+iOFqrKjT7ze+vub0gPzjz7LzVsrnoReTDX4KYGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+FP26Im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+FP26Im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9F9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789204233;
	bh=VFlVkTW7u+E3QewosbDT8Oi4IwTEvVsARY47xUVN0AE=;
	h=To:Subject:From:Date:From;
	b=r+FP26Im1zDqgre1ty6v/3Xhz7ktrrdQF8+0dGf3MND3TiKAvmYr7rSv6v/BLbGcQ
	 TLObRc8DJA07IRWFdZsD6MSikYemlFLGdl/njZ6e/VP94fK1mReNFY55sHUdQXeb/A
	 Q60jIbcIEMyxDELvOX3CgbVTSYib7YqDOsYxrWNoWBxLYr+NeAn2/r4Kpvep1V5hcl
	 LxIvyTmNzS7rsO1XmbblABi6tgyop13mE5Nn6ToSh48Zm9ndvXLV2bU/NHzj+6qyHr
	 RgAy0/BXZV2gfYY92QF/tRASU3yUn3Tm/kYlBAj+W0iPIxF7eFVp0mSrJqS4RjujNZ
	 CZECCj6JeuLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F5C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920423368.22144.12087994001611028562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a44d97c679bf66554e7a17b420739374ac6abb3788fc768b270d6bf111779c2
Date: Sat, 12 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789204233
