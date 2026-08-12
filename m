Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542B846D2CE
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786552234; cv=none; b=Rtb09RuHmmXEB6SO9V3jNwvfpZ99JGCkqso8ZFahzMBO6v0FU2qAAMjlb0JOzDl1IMSTgNZOgOUyMivSMY5fz2iR80p4h5wMooaiJKORj1vSBICohP6Cu53bMXp97T3Ec4D92hGb7E3mbq4E9VNuib5un5/ipT6TsgQhVJC2xno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786552234; c=relaxed/simple;
	bh=/Cq3yyi/pAJE5pz+h1empuzmnCb45p4HWTpaEz0+YDQ=;
	h=To:Subject:From:Message-Id:Date; b=GY0Tuz+Y6R5VCkOab1Q0Jh+U39NkhjRlRb9RAOIwR6dD2ikLJ3xNBNnva517c5AGqjARrpHhC62caIRTJ3KGgdrpGanTHF2bzYYnt0KOh4jsyZXpNolvZZyOf5LUA7kxm5UqhRmFoV5VUhTcKg8RiVmnK1HtsuL60PVZF5JqFuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmk2DfbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmk2DfbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB4BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786552233;
	bh=/Cq3yyi/pAJE5pz+h1empuzmnCb45p4HWTpaEz0+YDQ=;
	h=To:Subject:From:Date:From;
	b=lmk2DfbEJzBeCFAKtIryv0OfyuJHoNSdKrusjYizEJWVHjl2989QxAAAksol4SzuJ
	 23x5jOVOv1U4N/qJNKwg3rqDu8oy6Rcxjd3nFeyCFZjcfi5MMNz8UXsZKZ6zPixwhx
	 kLsVA61C8RqRaPuJq0UBuSwLZ8qx2qw0Jo1D1XwdQU8lZOlqNwrjS4e2OWUM5dHvFs
	 yC1vBdlcrS0bDK0HmzJx9jz8tu3HZKOPKCpmDiHtb9LVLRSUokHlUyxlq9ARhQ6Gsf
	 kZHAGAaoCubZEAHrGl1RYCfsD79p/OqzFEjnVgqz4TV/J+p/dqp6dSPW0z8t+eEJ8D
	 4tLAirtDWNOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A955FC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655223368.20026.3113310968070435518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b47b7f9b075ca666ffa384e65a60ea2a758308daa560ab2520196cd7023183f
Date: Wed, 12 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786552233
