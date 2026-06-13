Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F843A3E72
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781390194; cv=none; b=eMcEbjKgnkiBlbY5g8TPCwFGq/dXY7v18lg7KIvVfnFtPwAADY0psS84FPBdQM4hA1QotjuwodRa4//NyBofh4mXF4gTwhg6TKwyQq3FqM7AhtCZlv/Tu/kEuj+Gx8bAsNOFQcEXbhS/4q273M7nLZf+4KsaAwscXC5lz2HK7QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781390194; c=relaxed/simple;
	bh=Homg0njO72js4TLypWK46I0k6ObLgAJw+sK/xEiCD9w=;
	h=To:Subject:From:Message-Id:Date; b=cS1WmFEsjFbBX3Jso6ctEiemKr0ch/Rub+J721xcLjFKrWu9YZiK5EHYMsPC/BKggObkL3cfvx5g84ig0OuC2lJTk0n+FkaD5hV7k4is0bDsIjW7lMb3hE+Ta6eQ6MwxTm7S/XgAo9VGAdxFVL0VwYIeSP1TryCZ76U1t+ENJqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwqwT5M6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwqwT5M6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5AEC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781390193;
	bh=Homg0njO72js4TLypWK46I0k6ObLgAJw+sK/xEiCD9w=;
	h=To:Subject:From:Date:From;
	b=lwqwT5M6h47IdW7UtuN5HaAO/8SEChEMg1LC3KbJbq7p0/MMmuvt1/rhqwGR7p3z0
	 AXokzbPGAcfj1xlKKrSX5HsqnpRm0ITmnLvF6u/A4Rspmbp1vE43Kbl8hm8bBlqcIC
	 Rogzxb9wrjolE7sUT0gHnl2NffSxBLpiaQeOlJvcvcDnqy8W3Ai4eX4qhGhLuLho2t
	 2p0gaurzEOs8qjx5mZmUIouux4UPxqkwIdnDCAmKNMlxI1gH3Fp+TMinslgJ2skIC9
	 +dyxabjpKqJon0yYlFDdQ9wahpel+Vf2AgCZX9uAejbxqw74PY1KmC0PrlNXMJ4Ix/
	 jqsCNYPkDEccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC0FCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139019369.10228.5083578415920007659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4482acc1b6aab950586758935285fb6accf559cff36454a935ec0feba8d2cdb
Date: Sat, 13 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781390193
