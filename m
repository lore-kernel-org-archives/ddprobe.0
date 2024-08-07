Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABFF4653A
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723071353; cv=none; b=YPiPyTuYfMVoqAx0TPlHBAKsPhRoWBzbSX80Of38tfJOmYka4Cja/y8gGUqsJoclFfQwMjIbPXMdY3RU9bbsd6zww4YAXSAHiOvRMixWcuz36LHHhF8kk0hDYo2mKp74qzxwdqBsGxze+tRyq1whjlQL0/pYjWa4OIdKhJSA48s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723071353; c=relaxed/simple;
	bh=0LhgKDDaSGI+1rjScyqyhdKbgp12GWvH0bIccs6OT9s=;
	h=To:Subject:From:Message-Id:Date; b=T/tlGNX4D0Yc/QHBMBK7sQRjrxOheCVzSrjUmW1qGyQywKXOY01CzCNPJv1Jkcs6g9kmBjXZZvq6tdhVoAHrhTQfDX+bv96xuYsclupZhuPgGJzrpHMB7wnRxkoxp0UsXGZedWgSZWJlerLtBGq167qs1c2QqqNaIDa5SCyp5hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKK3g7/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKK3g7/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E5C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723071353;
	bh=0LhgKDDaSGI+1rjScyqyhdKbgp12GWvH0bIccs6OT9s=;
	h=To:Subject:From:Date:From;
	b=bKK3g7/QdrFI6EtL2cmW82HFE09z1Mfsj1cAcFqpQuwAtFuO4/sh0529hnetrisEg
	 RiCHpAKUGOCyUGM90uOEdoY4utDYcTl3AcHiGr718L9ZE/SyU/RGfd9FBzIMVwdmLi
	 Sv5SFKD//mRyb0RSQsVZAmnGNVJmRl0aLTdAZxPk4Ie/S0XV0HmyzxV1IqNCwJlrMC
	 MuNBif5U4Fs4wXBBRozUVVWOrMZMYRV2naIT3kmcM3wfMexzuAkyBW3gPuSpIOCr0c
	 TlJeOorFtr0FVV/WJOUVs9n/yTchFJJLrl4+27MgeCj4mog5qp62qPXXX+l7PgYXlk
	 rkYjc1dMLArkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92336C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172307135359.20978.9020298935498212162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a458ac7636d11057504b5edaeed2597bedefc769301f5cd98043511462f830
Date: Wed, 07 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723071353
