Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8395C38C2AA
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783027714; cv=none; b=RUxU8wkwXrbsjlSlXOWLF+6peYjy9/Z6XPwfKWVQoYqCGIbxuGMCOa9DfuyO4bNcamjN9KaGqaDrUeJeV30+GWECiwg2WV/46d8hYxobHhdr6b5pIYNPN0k5n3G9WhPikGtz2b1AeWxXeH02CBR6POu0O6Qig3+ttNKDh6S2YPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783027714; c=relaxed/simple;
	bh=bALFuzTS0NIBhLssipynCZJH/CBaSrjlo22MCEAHbAg=;
	h=To:Subject:From:Message-Id:Date; b=JHXTtzQUBNDu874bgkcc+vqz7J56ePqls3OH9eRJ6MIyabPdVEeaaB4aYUixEyrPo/Hb1WeKs2kD/ZmoT939HUQdLTKSa4cLzWkNp6w6NbKd4nTpa2JhfKjaXg3J4w6R2KNXvgJvpZ2bXIyTfNtW5eBm1p0T4BOzPk3kTPEfyuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeqBvX/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeqBvX/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30B6C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783027713;
	bh=bALFuzTS0NIBhLssipynCZJH/CBaSrjlo22MCEAHbAg=;
	h=To:Subject:From:Date:From;
	b=SeqBvX/V3O+Lbosw9GIML0eLQc5hl9CqRvPtwUKQdl7EdwqELGi0AossXm4KbSLTU
	 DMFI5nj/iv6DrC1wa4NpMaQH1pJ9YTvdJvgqCnrfgFJWFdPxY4TJYlhuvV57JypYIP
	 kMubTfUR+6F/KGoL4h79MtzeKWTv7b9hOYGu9NoqK+65rXGFQAW8wQPrpDNvx3K5P8
	 tvREl9GFdYCQnQXvKYo9Mr/FUA1+pGgKzlly62gRS0U9Bot18syrusgM0dMyjoLq3j
	 YSm8pQ4MQJLT/nC265HBDfSfEtt+uYjhntlYf4ZpWpnyHSrz2n5hiGk7c5hbV/g217
	 5p0uea6eJY3Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0850C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302771368.9323.10401516269369239751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2a442568947734d3f46d4f460946a783b3466225dad34e4773a6a5a9913aa2
Date: Thu, 02 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783027713
