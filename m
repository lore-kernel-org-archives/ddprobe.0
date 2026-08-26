Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43983B8405
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787737834; cv=none; b=WHH6mRWypfa+dLRYc+X7fjSVBdhp/Vv/wc7WpCTkt3F5BKomwP8bfALfJMnGFSlcBd2zobl+QhqQNBVbYakhQjY+bZ8i8gLSgxr89pmUzBKlviO4QFNK/gK3FJfBwepJt0gg9Y73aizGQ521a9a+5fyfvMM+XTM5akyfIP6q7jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787737834; c=relaxed/simple;
	bh=vVjienhYLt57xoW+J9HmlDcyWx5szqemjln876RQd3g=;
	h=To:Subject:From:Message-Id:Date; b=KHvCBiCc+4CnlMdEzwUGr7sPkWiDrzvGvQGRXcgxLkx1CWR7uzzK9PQWM8Hzkja6qIIn9B705ByBT5sh45xtxAdzpOahCWqOq7tmXQlhM6Bf5aFeVyM4p8vqVAbAe7FHYSchdgNzD9g2WviuWxbEhcVyTLi65dV+iNAACydih4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOuZNhK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOuZNhK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFB0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787737833;
	bh=vVjienhYLt57xoW+J9HmlDcyWx5szqemjln876RQd3g=;
	h=To:Subject:From:Date:From;
	b=VOuZNhK3bAU/gkngitR/SfwXFH70ZAmv3yfz13kj/icr4+DU49o+Xcs60j3LBZcof
	 47ZENLBejyFdG8yc3IU7LHh6vFoZs57rkXmEd6+mMK9WITDAVveYzmmKxbhxE60fAZ
	 qSyY0y01mNfhuEfz7oePMpzwQokBLixvuZEiTQ1ZUwExWnPw/STeQRgLPo+sfcmCPv
	 3/4cajtZXffQpE2md4WBVNB/fnhELZt5XZjOnVW8tdBcUY+/wa6HCijxa+KLZH0StH
	 BbpzhJen9+Yei8bOcF59iDFO3Pt6Pqg8Cs99/KSElujoyGgOItTvDvHvaIO9bQmPFl
	 0tfAgg+2GVcuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA18C61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773783368.16627.18154809021651290570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff912b5d17bc6fa711e119a8b033c24308e4a38a5dede5006d72bea0b0c0c5bd
Date: Wed, 26 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787737833
