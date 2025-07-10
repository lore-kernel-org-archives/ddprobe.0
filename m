Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DE02FD5A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752174593; cv=none; b=ll22UUmMVc9OqdqSCd8tT9koWXlITS0Mv0QS66JnNG+sWsQR3VQEb4ExmEbt9p1YhuXo7b1K49cWubaiDYjHxZ0pU+JzZ3kklpq2UCySt8BKt+OY6GFonzmEcWxn7/NOLrDX42coQPrGHpApyS4pgOGbHj87Q6xyHeP0lD3/pIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752174593; c=relaxed/simple;
	bh=NbXCI7otCGIhRUkj11WAiTwe+jP+iqD3J7hO3HQ7Xhk=;
	h=To:Subject:From:Message-Id:Date; b=pLelk1eAzHIG34PCWrvIMXHoOvP10Mas2m9C6ty2EEbTp/KMFJ4j3FN+546U9bocRlqPWQAZxyC4Ewk3biFsDw896m75npi/xeCP+gh+vqm81RhZPMWYoNmHvD6hhIa76VkJqI8h2xxMyMlshRV+u9pzyjDoTNnXIe5Y9Tl+e3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJuexFHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJuexFHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E095C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752174593;
	bh=NbXCI7otCGIhRUkj11WAiTwe+jP+iqD3J7hO3HQ7Xhk=;
	h=To:Subject:From:Date:From;
	b=UJuexFHcp5g5GXh8O6RNBzl7qaA1VWIdw8/xrqr/iLfQWMGKYiDx9Wg1xqQD+3WZR
	 gGp/x0JNoV/i/swoOibIIT1+11uqoX69RkUMEukpgNkIGD61w4GyIKpsBbt7+VXXg/
	 XlUgI7kezUmIp/wQG4za7FaC+laELTv0iPkHtZ5PE+YFNyEdj+VIzquBdTvC0HszUR
	 CecnDGH/39wNEJWbwVXkA6Z50o1hcrEiHtHCMEyfsPVNsEtjCuPWwHu1OtYYWWZmOw
	 T1dqRTYmbBH5ajwyZNLMayK+p9WCw/zClaTxmhy+QH+Z/R5PzfScGnQVvVIelelk8m
	 /bKio4IzkoDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E983C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217459357.27041.360703332125464504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2208d20fa66145d0bd146fa1c261d9faed1ac9798fb8047ad72b2aec6870f12b
Date: Thu, 10 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752174593
