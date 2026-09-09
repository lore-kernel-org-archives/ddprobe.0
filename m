Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647DA1AF4E9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788913234; cv=none; b=WuaIlss/A1/psmdbKR+DC26PcycxS7TlKQuEMqMqUOLCan/zSRnj6vEHU7V0kq4pXwUEHotXWQcM+JlHWTvqkh6RxvmRM6mUEIs6fXhqDvP8K5jqp7ElvgG9QAx4fcZCaY5iywgEh47DzwpQC8zLdYMLaOEKOZCyDZ2CoVIemig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788913234; c=relaxed/simple;
	bh=51h/vBTMBuN85HXWzQ14IcJFrBwjojtthQNURMRmLKM=;
	h=To:Subject:From:Message-Id:Date; b=gYg6u3WTjK6TLO8pJknnfmg/vLh42a0Ogn2zasD+gPLBCjMA2jQRdEbOl4GAMrlFDzMsetANlbuv0+CgOxneYMq3BL5DncBrT3cnekNPCUNG2BUYBoVesHWL0yDbSIz/hCcZME30QCv38fR5T3ttz48Depwjtpz3YlBiyFuQKoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK9xrEbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK9xrEbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEDDC2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788913233;
	bh=51h/vBTMBuN85HXWzQ14IcJFrBwjojtthQNURMRmLKM=;
	h=To:Subject:From:Date:From;
	b=gK9xrEbgpRlKIlS365EHE8OEc/b4mMgx0JUwJLcpq5n16yJqf7jwptqhkuPQgmKpS
	 dUeOn1zKhqy3X6i1ZWnW4xkeRdugGeHQvBtGXoHvhb51U2IizmN0tZ/5rmx1hF9PgX
	 gnr7AvYmU2VoCxlfUMRm0qfqjUuEayjQ9YNVa7Evsin+p97WDmYsWeR1dn8S1lVCYM
	 ln4/ZJ7Ooun1aAkd752N+4g1xgm9AvC3FEv3os+YfAlAvl2eg2cdFYZ1pVR/XS0V0g
	 AVGoNhFNalsrbehwWM4JYTcf1pAMxg/BluxBkSXutMOjbzWAwvvArPqEJhzESmInXc
	 MtoBPhdmggb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD52C79FAA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891323370.26720.10530077577219536236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b987816e192b57c4c607aa0f506582e31fb45d49e4436227a6e246914cd20465
Date: Wed, 09 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788913233
