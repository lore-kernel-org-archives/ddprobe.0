Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CA3401A0A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786442434; cv=none; b=HF7Hv7E/IrDM/ncQ0kNLT6WLq2wI48M9ohPE/B4/DkpMefo29aWkvAYW3FqnS3yCp6C+1Bqxnrk7zm0iafAEoL5XwMnrE1fy320kkmTZp1779+3nczazhZPjsbDj7IPwmuP86iqAKZ7vaT6nBWSTrC4OjFSjP31fSTZH+9D5Xqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786442434; c=relaxed/simple;
	bh=u7ClUaKIRgNWYiDy2dKwlub03OFof6mk3P6+tjSYnnk=;
	h=To:Subject:From:Message-Id:Date; b=iRZ2rcZqq4TAgtxa8ejr99Sq9/0/kq9MORsHZCbto7HmDg+EqVc0BKQ4MCppDhRTSJ5AoEyRTpJ/cekxOIMEstG6pBU/Ij4X5dvX0gzR89OhGdfYbylTgwjP0y7xsqn3+WR9c1Scf8HJDcvAyZ1JQDfOx9U2vev+BJeu73j3DdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ccx4XN2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ccx4XN2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20AFC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786442433;
	bh=u7ClUaKIRgNWYiDy2dKwlub03OFof6mk3P6+tjSYnnk=;
	h=To:Subject:From:Date:From;
	b=Ccx4XN2I3GFYSdzLSdh2QcA7qWW7U/o5wcNxYu6jMNc3e0QQG5a0Y6821Td/GFlwf
	 CQXYp4iIuantkh8I2WPwiz2y+tqXMVdsy4rVGVjpTg5hBaUkAAjpmpB3EFz1G79hiy
	 sVI8FeudKMwdJn3DjTJQnSYBVW9uIi2yoWvmDV98EKoauiVwMzySg2WIXtkaJhj6As
	 es7POUeHAg8IMQzmUMsjpd6yNFg5BDd7ggMvtthNLcVSwdxixyXq/PO2hbr9PiykXa
	 Wc6r+V/9TXNlQ53HxT8L2V30BcY+OO4Bu1U8gLRiL6YejABRxXgpSpJXo08nER1q1g
	 CfPZufZZRrqVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD83FC5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644243370.28669.1633285195443074671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efff70e15600a4a1e4ae8ac502732d1a862f109c8cd1769ee2d85fa21375cd7f
Date: Tue, 11 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786442433
