Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7027A171C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750985994; cv=none; b=GZUeX076VUMF+EtgnFlclfHXK3Fjgt3/7jyz66kr/xLxunHo2oThsu7gidaTiKTIrf+Lr1uo/JIALxXdaWiGy4/a7+TiEpxSQ2Vp0hA0Vs9OjUIe1/9ZhDDIgAGANp/qJ7zq+4whVk3e0vObG8+3PsWHaVuwe4QYUxhXA7Aqzrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750985994; c=relaxed/simple;
	bh=DbKcECZGfgCKG3ZEMkUtUWnIEBcEkyFE62ZD0IoegFc=;
	h=To:Subject:From:Message-Id:Date; b=Y2I0b+ap4bNqt8FNXS3SHfdtrVCcJzLeEHBV7RTcttu9At8iLT2OxuFE8lhLJFqMYS8KH/25EDaqtdXEMvO5yMBYRcLpGNV5Mf2y89JLGZ3VXgOs5Yg2hDxka+Mzadh2QqwckR/qX+DQmRnLPREK3zcGTvGmUrSypmrUq0rFyPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah6yr8qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah6yr8qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B36C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985993;
	bh=DbKcECZGfgCKG3ZEMkUtUWnIEBcEkyFE62ZD0IoegFc=;
	h=To:Subject:From:Date:From;
	b=Ah6yr8qxRu+V5nEl5E13qThGo2Bm+D0a3VaBpJ5Lne//r2ZH7DCylQnSCde/Cs3bN
	 F78Gp8yz9St3mU3z5CclPYiDuQyF+VYXOxoeLhLxqSBclogP19zW0FSPPLvV+Qlhph
	 F/Qn/JvNyISD/hp9jhMTdVlFVjtv5WmoybYGYA8PNyrh4lA+hmQ7sgX9kHPkwwPv72
	 1x/VU8mFjTpqNB9eufzjx79JA+02MvEqcktWV08eqfzWGp/CirwU04YWNRo6u26aN6
	 QFRtMmw+uVjih1xFbmMQZsvy6xn40Z4BUFUGEJJBco4G7IsNsT9pasPJ8CBwAIEZAa
	 Ux/kHbIxFZKYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014AC7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098599358.10799.14782495377171526459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113b22dd37ecd0c86e95d45b4d74f76bb588b2451875f0a75185a6cac7a629f0
Date: Fri, 27 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750985993
