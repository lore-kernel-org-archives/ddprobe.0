Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0126D178367
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720033523; cv=none; b=Bjz0Dh5ROvJ1/geJbT1qLc3zhDki6v9+FwDiHkKwOZMUacHvnJZiSvs/PA2VGV6IbdQnhRcuiXIv1gma4rRWm3ej/hVGgF6Pb5a4Gou+WpGd9RPPFFPQHY6wN+GUc8HyIJsG1ieVb/q0oDMRL9qzalHqyj+oDoDzOaZPUjRvQa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720033523; c=relaxed/simple;
	bh=YIFrfOqvndKNufwpm44CYwNpQwdWRszHSYQ1BgSrg44=;
	h=To:Subject:From:Message-Id:Date; b=NYyAiTZOwOn5HHJyhynmveyDQHOmoN/4VbCljLaYhDMWo0DEkcObpG5p/UpocDRJ74aPgN36hAHTOYPa8CNycc1PTVW4CRCtpbDkTbpAO2Ht8CK3lOtg0tomhwwDFCGp4nA9NHxV6+Lu8weD1hY09NyZGSkN8tg+FdOuMzuQxYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo+fNDf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo+fNDf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E4BC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720033522;
	bh=YIFrfOqvndKNufwpm44CYwNpQwdWRszHSYQ1BgSrg44=;
	h=To:Subject:From:Date:From;
	b=bo+fNDf519WegkKTFBPSGniCz8RxK1GpswyI9qyra7M3O8bi61zgv2zPhxav0oM7a
	 UHOzjRXI7JOYWDjokmab43y99UxGexCaSsa5JbJbEx2l2ozo/y+SJvKvGxR+w/k5ao
	 0fg6ZK6MyjqC3/+kFoTHhfq3Vj8EIuOTD5rz6/DpaOH+owDMXWdDu41q/hL4fXnM5B
	 rdc4WMxE+5nUtZJIzHxtxMR05jYBS3tppYzGfT3+8T6RefWsfS4Rtg+C18CWe05YoI
	 RBVzOarWx/1LNA1NFdEP//+WumO3q82/3RHpH6NRHpGsRl3k3ok5nHw14oz85V8gJZ
	 3Vw3R8AWM2Png==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C111DC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003352277.13024.6333189564187762124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67fb145df3d547dd6cf5128a4ec0fa536077083193e39328269ddf44487a02f
Date: Wed, 03 Jul 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720033522
