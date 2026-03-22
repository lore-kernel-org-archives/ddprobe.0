Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187491DA23
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774163694; cv=none; b=Xdr4n7Pb5vdQjgcmvw+9yoKVrYEc/PE7J8JiQnc6EY7vpVomAeziLmlXk5G0f2v5a+80GwXVBi+7yLI80e+Lw+qMpVq7h1143U5ms+YDTZp7dvtFgTRls4Q7900SLjTgn4ZEokCApdsSOiUKWDqkcKMNv1zOHcA6m8azonsfiWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774163694; c=relaxed/simple;
	bh=fBbuXvFrRlZhvxLjtVgM2VM3P1q5d0F1DX9XuKlOs7E=;
	h=To:Subject:From:Message-Id:Date; b=WKTpcotd3kTNAEb5ecFyqrGUlw/fc2MAIZtsFrWNmpdFtiBwSAgEMk+TtIbvakSQb6NYk40yAilp6FPI1MoRCS4y3MUsyILSfxWCfklHtZetKdBIbx1Fbav1uVPxMv7WfSCJ4TY6gth5Nj4otkr0hNLCozMmKRsH38F67rWCBQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsobgdPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsobgdPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73DEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774163693;
	bh=fBbuXvFrRlZhvxLjtVgM2VM3P1q5d0F1DX9XuKlOs7E=;
	h=To:Subject:From:Date:From;
	b=WsobgdPu0UPqTGwtIBVzsKye7voFpQlWukVgfkdsfDCpJeXXISeTNBFxEH/CR/l9x
	 JaFXP3Pf+14ZWhcZVSeDHWcabxeMWBrjF9oMtEnPfiKhB7dZfBU4V4m6GrKRIP+1Mm
	 +vbNziH/bQ9Fl6NkAzjzNKadKWm25BwTYNCephyByYEY51R96ZWrToYxX3oiDOGDlV
	 JIg14KDO5R8BuB1zxEaBZui/uLh8Ltc2abWaYvkvtww/tqy3MBA0BEFlXEgdZea7rh
	 BUMBdcUmNRFkBbKVHJn5VChaQyhuHWGtlakbTA226//9+5sAFkKKWVRn5MXjgb4wk6
	 gB9WuvgGHmdAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94121FC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416369357.1701.3692492037351837233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93510556efe1e3cf88b97bdc7ec2898bd88497e249553ff2e35ffbfdf87d17e
Date: Sun, 22 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774163693
