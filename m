Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7D023243D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736906154; cv=none; b=ROL5UGNl0pMVq93XaeKhVd0sRda7n1WvgNP9H/7bvjAZrgz2ZUbt9l26sUIghm5mGTSRuS+VHZkSOHG22EPX8ZTOxNICx4I/6Md5bu0IM32wzBHK++bIwxvEqT86Z+iY2EB5v5mvyZ9j0aOqfZeZUikzqHjX6Qewo637f2syf/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736906154; c=relaxed/simple;
	bh=JBxXq+LXReRQIqrArLvKETzHpDq3PPycSW20wuaznRI=;
	h=To:Subject:From:Message-Id:Date; b=PU6iGItRbpLLXSZ2n+pcww1sKKCT535merbS2Hwm3SaTDRYPqv1kRII/ipyy4HdO5IP2RCFwLAkS4h2/REJ+sXiSRxNySCqCOiNgZXMbb69FTuZLKo3hsLO+2tVVx8IOWi0Q79gHfXKKKHc6AJplsCAuFjspZfwVlrm3ihTYaZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC963a3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC963a3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68FCC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736906153;
	bh=JBxXq+LXReRQIqrArLvKETzHpDq3PPycSW20wuaznRI=;
	h=To:Subject:From:Date:From;
	b=XC963a3doffOwg6//poZx/QpmNCEcbIFnEHt04IQRmpzhu4mE91AFhMPv/nRe6cJN
	 H1Hx4oTyGQ0wmvma6p/tPegApwRcG5Qkxu0s5SJZShFNZNGgAur6UROG0Tuk/n4Qim
	 PqQ960Qyy831zB3dLAmlSXGXJHf2F5yUOIiMrrcJ5hDQhr8aQumt+iFbdv/F3ISXyW
	 0sgRRzce7RExOSr4DcQLjHqXM4Onz8zOhxKA6/SV0BW0jcsHmso6iFxIK/viRPbmyU
	 iqgMM4l3pj0zVP/OoxtZ2wb7yfunLizi0xLJAdkmjY3mnIAYtdQN5rWo6zBrdtaYIB
	 kt4yM04wdLhcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08C3E77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690615364.31205.9401726457665861651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a85b387e8ddc7286670d5bae4f6074e4134157ae58b1a1340b7d96554278ec
Date: Wed, 15 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736906153
