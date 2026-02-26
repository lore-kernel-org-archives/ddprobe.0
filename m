Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F3230DEDD
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772088294; cv=none; b=m1Nvoc13ggjsoPYZeYDDl2+7xxpBMAbyk/8dSaA3ZsnsYMFZRsW12QhFciPycBlbfEbyfZ0NXyzKAZw/Fb0SgzRuzkcW260JaRAIcnntTMZfsP6Q0X7VsKBjFlLXx9j2TI727dDj84JND17LDYjt3V2D92CMhHA77CxWOdC6iO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772088294; c=relaxed/simple;
	bh=R67X+zCkISmn+Z/PM+XpOp7Sld9ZnguL9n3xy3FjO4I=;
	h=To:Subject:From:Message-Id:Date; b=kWEqZJg+wGA86N/7twzZYAHwSIyYAFNHoXpM7QQOFIrFGmVsqIEKLLTmUgr6NTRQc44XNrtnePOvodhdbBdQPc6zX0h8aNya6XV8K5zNo/R6e4Nkz7HXPksjsOochLkKRp9K2C3PXwi5TMJLVa9UGJOyJdZL7iOmDSIUuIGxou0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gonFDint; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gonFDint"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCECFC19425
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772088293;
	bh=R67X+zCkISmn+Z/PM+XpOp7Sld9ZnguL9n3xy3FjO4I=;
	h=To:Subject:From:Date:From;
	b=gonFDinttAYqZJCTWNEM2wj4zZZFcjprjoexlJhcSq1UyZ7mg6N/2Yfh/B5HyfCZF
	 +gESwFJma8B4h1G104Y41va30om3phocMpORIGOVAsHNzqvyHZBntlNpYBlQhEHiHL
	 hchtWrMdV3y2EL9AXqAccd2d6sZRhZvRKiJJNrzZsV6xtpGfdKb8DAQbJsOIuvr5sT
	 KQ4i/jTLakShKWjaIhPRQIXARBGXVSG5zbuIbzQkIizqlXDll31N8MhLswK0+wY6VB
	 vnKj6lh7Ns0jeN0hPxsu2McH3jL73zuSfDfeVc/xyUSYTvtloArM3mzmKFu0B/EXeH
	 ltwo6hC0SEVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F6FD3772
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208829369.14909.4380793134587135598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa533175cd77966a11d58a25190570f235cdd4585840c8243957b4c951700ec9
Date: Thu, 26 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772088293
