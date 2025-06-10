Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360372D540A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749598194; cv=none; b=pVeZjTGASbKmv6Wyo8pwDIEuGJIqbrQceZdvBbhMMOJDk3UTeyoFS7aqx3//g4rP0LidDbJxNvs4oDTkmrQ1DhHK6+0CQPR/55ZdTGWZCayCKQRfsfYIOYOEfpss67Fu3wO+uaPQVtd+MvPGDGyIgXLgVG78jHDvD7e+HgjsAQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749598194; c=relaxed/simple;
	bh=SWbOyI+wEtR+TFnPkkAHYK9X5vRpD617gPc59+a1rq0=;
	h=To:Subject:From:Message-Id:Date; b=AuCOTUDYsd1DehHsqWpQ7Td7twk8eORTLZ9Hoqk3zCSaC97HFTHJ08OFJYSEcdhKAjoa8+iCQ/LlxBghBSCR6YzZK9/A6xliN+bzpU5wx1G23VVtTAybSGvI2asD+2tB+rzN3ykaE54JZrKgP+8qU7k3p3YU+Lb049+/J/QWNUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPRdGdWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPRdGdWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E3FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749598193;
	bh=SWbOyI+wEtR+TFnPkkAHYK9X5vRpD617gPc59+a1rq0=;
	h=To:Subject:From:Date:From;
	b=XPRdGdWaZSjqvqPP/HHrjh3CbOmbgySOHLxscJST/aFYj2nWMI7AFgDaGkVxq2HKQ
	 +GHoQ/ZTvFOSEjg9sant1ESFzvsPOZP0UnzXSSUpptAomo26DVeEIYRvNelGoW62Vl
	 NQ0KyW0Ra7Id3dmrfnjo59Qc67Xct8nURfpqCfxqH4LVhKYo8lBbVAELFCqNd+H/J3
	 e67S2T9+06mu1XwhZABUIYrZ0qM1Ym/bB8eVhX2j4lSDC4DlsGd1wnjvfCBunWXbud
	 eLpqLiZerzcsy3mELbqAbLZkRpsiy7ECVd2CeLhfZIt1UhMWea28xt8biztn4fJ5Yd
	 YVlStxohwpaaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC40C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959819357.8976.2945744767203618117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b09587439e668973a3a2753ecf05261aa49fa9dd158f00cc775fff46900e4d7
Date: Tue, 10 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749598193
