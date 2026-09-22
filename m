Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9AB56329B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790095234; cv=none; b=sUo2v76lfbnWwumhRepjgXFNjeQ2VJXfrjyqVtjMs1hJ9uCCH6YWmwPqQEqvT36EOT5BcK5Wzc3WIfeP6vDF2JdfXilkqL3OCjqfgeC7LQ88HF7VO6NQSafFMAAHUOIZmTZIfWjs8l8IYTc/cMg6/Y9/A+N4PrGdAQvge32rcSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790095234; c=relaxed/simple;
	bh=Gy2qAphD5/IFnK7Ba9Opeh+eEyqNf4bvcCbYAy0XoQI=;
	h=To:Subject:From:Message-Id:Date; b=ib02Uv5eHqPdM3atrvqKE/FhksD7xQGSwxZuOzGdEh5HiNdRQ9puM3gYbwyy4PpcscvOLTBR1Y3Ot1O8i0ZThuu34pFgmujxcF/21HZj+c8URhrB84Zzl62IGyCFMxraqFl5BQuxyIhnwoVLOUacNUuMUycU/zpon0zjhX9DXHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpsOiIt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpsOiIt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4890C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790095233;
	bh=Gy2qAphD5/IFnK7Ba9Opeh+eEyqNf4bvcCbYAy0XoQI=;
	h=To:Subject:From:Date:From;
	b=rpsOiIt4frwgidgx7rxX2JhWEKxzMkrBLhMbCxqzACmBr7cOWcZfizkX5axd0WcHk
	 ktjJrzVRl0g0OR4dbXFTyxLgs9epwojPOwQb3lhOrcfLAQWbM5q76ULRz+vDxkSZZz
	 noPW0OTnL1lWzwmkgLqkVeQJg5HVL6BbM0pEktY8iuxxJSdeQYLTC8Uv7NCgrn4IIw
	 G/r2cJyJRyGEvPzLSnl951dx8Bdc1wJp4bej2mGNfRrPn0xM/RMbO8BUFUNXz/nuLA
	 eQpgv5Op9jqhTbDyjzpfxZykSPJTLlnMtT8pWDeAjn4fHOKgyWsI1WQqrtehHP7+ll
	 jDeggRPPVDSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F2DC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009523371.20839.3437230909266118628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dfc6d82bd3211d53dcd4b6f9fd2bf4e71a1db31d428e8f61e5adacb76e56f1
Date: Tue, 22 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790095233
