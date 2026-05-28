Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC8134389F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779929554; cv=none; b=oU3g9bribJ/JdSqd2UU2R+3atMLulYN96zQQteBzy9XJg5Nsp1egAXAwixxd/QjvYeYoYp49SNajwPv9U9Dt1YKF2TDULd5ik7POMmZpFjDt6w5iA5kMiW3kGAAwgrR7Obs8eZjNpvzIfvqISyWKEP4iNo4TEYa60eFm7KPE0Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779929554; c=relaxed/simple;
	bh=ucO3N+jf7bcPZgUUdu7aRpNn/gkB5I46Kvf5bJzBrPY=;
	h=To:Subject:From:Message-Id:Date; b=kdntdbHpUZMsDeXwfcGt6nvcCdMJIpQ0A5L8ujTNtW7Zaqe9oY0+3tdInvC3F90hAaTz38LlGvBe5FOs7Yb/FaVn9kKe0mpDTFtnKmfitCG3aqsqbJz8RUjydVTF4U6psj2GPjYOvxXA2vtspyRctVXs3YgG1a6jMDuJL5bxVKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNjY+HnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNjY+HnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC61C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779929553;
	bh=ucO3N+jf7bcPZgUUdu7aRpNn/gkB5I46Kvf5bJzBrPY=;
	h=To:Subject:From:Date:From;
	b=ZNjY+HnB+ODO018biNQ39xFJtmKyxdmrnJJ3znFP8vdD2geqfbuRyVO0dPY5kBvxx
	 kiDR5Vp8YIOrjJUMKEOAL5GE8QMElkcW65p22D/BLZ8H1PQ/5JEq4HfwiItzovNNHn
	 jUF8lGRtIfTgcvsTFrxCc33nF88QQ5+7SHgZVtNGZVzsWOVEPylpi02S+pWN4iUxS9
	 FbFdJ3Dl/wNx99HrB7ys0JrsauKhmlNEJ3ht3kNZCEBnAw7ZovEzr2jc7RsEPmVSbk
	 9iCo42RoKDS49x3ni/ND0fmvN0GpD2ZUDy7jOfj1jd3dDHGFH9nuTRe7tFiM8QK54c
	 xtb+mxDwsN+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE06CD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992955367.19297.5661694016340525908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7f7ae4e655bdc8d9cfc5847654630537c5011e81da3d28ce1ed405b7f431b9
Date: Thu, 28 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779929553
