Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7129D38E8CA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787102434; cv=none; b=d7p6vXpHdfZwQuI1vC3qlhjMLwLXrlPreqq5MxpHQPm1z2fEF5z/lagIBHQcO3mkgfrHB6x/DKKIDxDLVQnU4R784aDfHFxPA4coeWKtlPjyha316IIpPp80Gvhw7BUc3HC9Tiq02IO/mBvVA/T6JKulcc8ja5oT3JSDdVxIxuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787102434; c=relaxed/simple;
	bh=l5urHBNrMkIABJglWrshq+UbXQXjO4O68pllVGIZUdQ=;
	h=To:Subject:From:Message-Id:Date; b=KgngS37pdz9iDG/QAs+okHTmY1T3JrGuzEF3S5vTvA+6GWVrDkEAnXCF5TiA49QqFxlXdciVCaPrJe97divJO6luUI6Rg3rPLnWQvV8GTr75Jt+0wBnDYSA2Y9CY/J7TECMxSjB2VHlSRJgjMxxUqNkdHBtBfmyDR0P8iBtp/EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpaKcaFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpaKcaFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3589C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787102433;
	bh=l5urHBNrMkIABJglWrshq+UbXQXjO4O68pllVGIZUdQ=;
	h=To:Subject:From:Date:From;
	b=PpaKcaFVTyjWidBSSlvXtAqs0Hzmm33u91xOeA7G24mV79YGpmSQglZbiTeemuU4M
	 yif1fxRafz50vdmNxMAgT9t7JOS9IHmAZSHJAiCw5D1QuVaBXzKYH6aL0rBLCAP6H7
	 SZnabYID0vqclpl8SEYhKgh95fGC6UJX4MpHV0IVjStvU+vU+DWBdXAZB3QSBzmmwd
	 j8FDf/FJ112WnHGan6E4zXqraaFSPyPlFKRXq8wGSuIEu3+8glsnvMjcqTtiE1jBus
	 7qqpvyn3bK/x9OZgIedhF/57iSEvcbM40QHbx9q5gSXFrixrtEatr0OcRJZSwXZKr9
	 ZVco04wAvinSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9ACDC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710243373.31414.9574785653588630651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a6ae96b0ede3406bad7d3ad6228fa0a7868cecd5d14aa2f2e78a2380340696
Date: Wed, 19 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787102433
