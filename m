Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D84350D7D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779388354; cv=none; b=Yc75ZATVnu2zxJl7dN1mcftZ68iNjoqg2YilcFutsvmGR2M9SRs5pS8qmJCIfCvE4g0wYzsPoI0DebfDsm55+CAeefH6HHNfaesHK3g1YHO1vW5dWskG/0nRi/4d6r4FDOZZGiqAAw7nSOtwNQf6XCvsDh7Ly+Ge6Wi5amvSOvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779388354; c=relaxed/simple;
	bh=IDQd5ZgiIwzgmyaTpllBOf1xt2RyOubbhwe/9djkEBs=;
	h=To:Subject:From:Message-Id:Date; b=Y9mzXQLwjOy2d3UMxjHrXFr2AhewphfBkRsZUv19Ey8TMveNUORl1Ic4OR47jjqPvp982Eo5su7ntVMDGiH6R4bu+KlOK5MeROpBSlLWLlXeAXfLFaM83i18ilQaqDLRkwwAZoQrxpXQIrDPIqC/CeUe5LwBqRX5g/BDDKvjOdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adk9OjhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Adk9OjhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47D9C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779388353;
	bh=IDQd5ZgiIwzgmyaTpllBOf1xt2RyOubbhwe/9djkEBs=;
	h=To:Subject:From:Date:From;
	b=Adk9OjhLzKDL1W4ODAdC9EarxRAFeVkR+4174CuEGCKRC6GAMwD/Zw9UAFr3YLvDz
	 9B8gWIgg52WfeICfWc4SJp/cGITzdqZuBRVWbcZGz6VA8M8zSS5SglBlYN/ldgG3v5
	 qdEKGR1+jIPd+D9RWD4y8Xwjux8zOtB2bTs+mFrCt4QH3cQgY54ouC+Zc0ZVtjwPwu
	 TbfYQhOVKcyYbrLi94Tm+cYgvKv2T2ALmoZD2hEhnY66Rz3Fcq3g34fDntiFuNS0kB
	 aR7BQSBh+/n+KwYg1ZP28R7Wq/ORPoJASAtpk2BwpQc+4rDwVBgVaJShStAB6g5uHB
	 3+Qvh+Wg5vyRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA90CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938835369.1517.1056047936179908784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7630d9efd86757644f8bd7b00863d549434599b5859780f4b9a5ab3e7d0ae2
Date: Thu, 21 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779388353
