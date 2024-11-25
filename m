Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219441BE23F
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732556754; cv=none; b=Fe20Yq0rBvgZAFwELBKnCPlB6M8gjztjaKZ0czGT6/+7BYRL+PJxSQuWI6emFYCZzegdZnS79v6z//z3sXYNxrnNjN1Gipf8W1GxNaJT8kW8ribBZLFE0GQqgDZLI0MQ0jDio7T9xY1+fxfjYUXE3+ZBiuH/UZHLH1/XPUDVh+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732556754; c=relaxed/simple;
	bh=BNjYsEEAyS94gEatTtqW/+DeB/lSk+22KE4yTjAkVOA=;
	h=To:Subject:From:Message-Id:Date; b=VPR77L/UMJqncJpXkmkYY8ejivZomiQRNpoKkQmNfxoWyhWqaC2kRkvTroBmH2K1wxHLh3LfVzK4Oeeiu6Q1i0CrAs59Z1z/UiK2FaQnqUhgeVWscss3AuCnqtyfWekHjYHWD+qyZTyGeoiZZ4C5D0T9lEJ/D7xJRXiYHm0xywg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilk58cLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilk58cLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7569C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732556753;
	bh=BNjYsEEAyS94gEatTtqW/+DeB/lSk+22KE4yTjAkVOA=;
	h=To:Subject:From:Date:From;
	b=Ilk58cLe5dTQLC/8doQA78QvSh49g9f5e6HrnFY0aXrwHK9nEwRLYJ2Nii9BoLXa1
	 sg7H+8GW+YSS9O63v9/ZnlV7IisXPlqUKIQuekenD4okZQLN4pXy7IzZVZcGBeIArp
	 ueinesEq9J1X73UzbnSPnYF4ud2OPYY5yidHbWEo8XGqIxHAxCOQUQuFq6wAAym+JM
	 pDUVMQMb8hfSfxDJlHpwnDZ0IqD6oRcxeEkDaZ6W7sTOMk2usoB4TVJWoNL03LII0l
	 reTehp0k4ofGQreAcQa2jQefV+aPeI4VQ0b1YhQAiCzyhB+AxHebQQBor1vq4wkjeY
	 B9WBRA9RLsnlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D99D58D71
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173255675359.26425.13183703195481757959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bca5d519c4913c6c196e67c2e2ec4e10c8cf83b5bd1cdaf585cff5915f3a4c
Date: Mon, 25 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732556753
