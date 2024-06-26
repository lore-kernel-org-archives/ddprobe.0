Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7093E18FDD4
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719432803; cv=none; b=nnEeNl4LrMbhsYJEgdN5Y4miGSv0dbA8nCmhHCG80UUZdqGF6HeL8PzweR1uTdEU0SuJQ9j+xsvLFMXLb2yGOJj3OEHd79zNByW+uQ87OMPAsTeKFumTb2WX/qmh3VA/FTErSJWRaV/iQOqNjmV/idSo1YcnPwBllPCww+7AJYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719432803; c=relaxed/simple;
	bh=f+z40ssaqQVZKTxtGMSK7p2YUdeKVaCP1u5CG0Oud5w=;
	h=To:Subject:From:Message-Id:Date; b=q95hlNm9MFkmEO+b+4nKpNxrL220mQKtgPyFqYqOefwXeHXP26FV54gHL9TaLL9U1ssh9hOgXid8sGNGXTor6s4STWitiHim5tUlVibXgBv+y+8RAqUbElMMncCeCcXBziu/sehGOtU8oQqkbK5vKfDJau6Ls/9CmmR+T9VkQyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7Yhwobe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7Yhwobe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41A6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719432802;
	bh=f+z40ssaqQVZKTxtGMSK7p2YUdeKVaCP1u5CG0Oud5w=;
	h=To:Subject:From:Date:From;
	b=T7YhwobejlUovWOV4R94iMENw/gNQ0HkZ81GcWhSeHG0vW1IQA2vm2/2CriWRLmxE
	 iaV8PZvDg3C3JslUHayoapuf/jMGd3+U+RwruIUfGRq9Vcw4PHpdzPo5DKtnWkELCp
	 2Yk1ya2MDli0/2rc7NsITLHJPr/RiauVdw+ZvBrSQruJDDkQWlwyZagJDi1Kr4Kxwy
	 6qT7Wn5lTafAMxhl+fbqy2adwh7Tjt+AFDIXPvDO0wfONBRIfoSmEtaC+S3OWzzmky
	 IrXGPlonx3PW5P9b7nITvTmCUHspT52W4PWoRDeJafxHEL9D49pVfksaJRmKWjjgV/
	 8914mjeFJt4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F5FC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943280286.22459.8179093838143285108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919c5988404f661b8dfafd7dc25f742273e944f2efe298964efa934f46262df1
Date: Wed, 26 Jun 2024 20:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719432802
