Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089092F693B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769819634; cv=none; b=DqpJQfbifZkU1B5wDbwGXTeCjBXCowGi83fHzeL/gCoE1TBOjrFa+x/pU8UtZxfhq5u8pWiCyVR6Dc7La+PbTq/qye1ipLL648I6v0kbO7DXY7Gi5uDO1OrJznniDK7BV53cpWZJaCUCNA50jYhzV3hCYfxKa7BYUnq8hbG88Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769819634; c=relaxed/simple;
	bh=L0aDB3nIX+f5nqLxUs/gl2u3tR05LrZt/JjLyg/2mHI=;
	h=To:Subject:From:Message-Id:Date; b=pbrUlNtDglRZaem/cIDSJtmdaFLjj2rZDbuLbMCCiOCP5VrExQ3b9X4WHQCdtNT8auYRp/YYer1EEVMwQG/RlznPha/lzjQ3NAM1YPiEkJoF3mEWsTDGmXqRKS6YMMEWOgUAMG4hCML0kVTOYlo54VipBTWlO4T6N23U/kumcMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtINbOZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtINbOZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769819633;
	bh=L0aDB3nIX+f5nqLxUs/gl2u3tR05LrZt/JjLyg/2mHI=;
	h=To:Subject:From:Date:From;
	b=jtINbOZFeudtgA71iTrr+yHNAcP83T8RO7AjmSM/tVcLypOej5/HH5wt3JoEtb7oC
	 +Uie47hX6Gv5kCV3177uIa/LcrQHnosN4tZVBZvCMgOlrzGM1tsKTXJ3DnLP5e9bTh
	 utiMdxYmBNufXyDjp3cz4hvSjpsQ/DCHeeBZTEhSpfN+AqQWmQ7fZ0amTdmGkiu6My
	 2Fv+tKoadY2lhv27rkogWX/S0WoiNkQgTIgsu8lUupDMET/DoQ+luZcVo/SS1pUtIY
	 Md5NEuCfqhNOuITZQqn0Q2Lngk0JI8xNiz4i8WtPKTwjBIFQvYaQzRp0l70swvTK1j
	 BOE1yADCnt9tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5AE6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981963357.3466.6622927530246064960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9b6371687183fb1b4893c6e4c46fe33f4acbd45e0a15466ca58cef3e672088
Date: Sat, 31 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769819633
