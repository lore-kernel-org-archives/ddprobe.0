Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD64313E1D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778180854; cv=none; b=K1vTd8jkI2ed2E21aI/9FWgpONnhaE8/LlHgDBmqXyj0RMrHryVZmnDaIm6kysEo42FbzKFW1ka7zktUb0V0sHB+hvyLwqs4zyiWIW0dk7FS997O7riVMjzH4GkJoTYyignl1K5HC2we/qzLe/rlcgt3S55Q8xxgbIF6F9ZnAtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778180854; c=relaxed/simple;
	bh=gyDpAGgwZkslYPOffEAjTsLGQ4r6wSS49D5tMH8d3uE=;
	h=To:Subject:From:Message-Id:Date; b=PWHklyEf2dAwBtP+tRzvowj+WbNP3ohQhi5rUkH8PtLeBrszvwRAeF8cTB3wnVAq6h3EEKIwJz7vgi1zgj6dkdCeA45KG/uYt7GgEh+IRTcdH8gfAnDcn7PR5FLJJwdPJEUAjDJRR6ruuWFTpxhYp/mmehyb0MqZfgrCcRxwOBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+F4JS24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+F4JS24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE64C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778180853;
	bh=gyDpAGgwZkslYPOffEAjTsLGQ4r6wSS49D5tMH8d3uE=;
	h=To:Subject:From:Date:From;
	b=F+F4JS24iA+0AG2WkTIvRIA4ib/7KbQJPExlXVhoKtxmlIrNbs/g22aQsr2oKSbmC
	 Xi9LadIMxjNwAvVR4pPBp/lKUPKqchVtXDxxUMK/CjXYMBjcsVsR2eZa03Nlkzvg4B
	 Ry94CG+yGwAFSBmqCljxVjtqVJwEBT+yE/OLZSXoGgHDICC5AXxOZVOwH4kHU+/lSw
	 aW7WO45J6UPB/qX/F6PPanBdbAG71kneuQ+14t4DgAIMoob4aF8yFwU+CnD+Iq0puK
	 NY8sTOXzntW273+NFxt0uKPLs5HV4/YMlDOHKANlaJUGI2OcDku0cku8UH7qiS6rWY
	 4ll9alB0ohCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD9DCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818085369.28979.3949219721162135524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4a002029338d5ac1da45df58a1b5c31b97a438f57d58421a813915335212ba
Date: Thu, 07 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778180853
