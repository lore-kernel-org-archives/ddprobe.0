Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3342A1DE8BF
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748460594; cv=none; b=GW1BOH+Pgh7rN329TBXCKlaH+DAcgCmMF+IIQzNEe/EWm/YOw1I80DUxOG8iM+isWJMzRJKvNhDocbHPnrCAcbbUGbsJsYcdznsPfSb2w0jkUMrOhNQr+K8Inh6/UM0+RKWh9e7szQvdxwl2HQAsRBZjUHS9kSHyPYPa7GSo76E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748460594; c=relaxed/simple;
	bh=9ZZGyBlf//pbO8rhlXHXMtv7setAs/gDnWSP90WqmrU=;
	h=To:Subject:From:Message-Id:Date; b=GD4O2NWVTFZj4sOaH3kFWr8BmarHv1Q/bKBJIheAg0P9zxNQIK6nd0tCNQLisQh+3qH58OCwY/PaibQLf5LSorR/ZtVoQm4rFz+Zyc8CFbqjDZrzCjzbwNKaMmIXfuhRhS265XqFp/Mci03GTgPIeduvDJMTod7iB62rmNnzz+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoHbtNVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoHbtNVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F28C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748460593;
	bh=9ZZGyBlf//pbO8rhlXHXMtv7setAs/gDnWSP90WqmrU=;
	h=To:Subject:From:Date:From;
	b=ZoHbtNVim9vP4OS8l0XQYSZkUOQs9nyXDihJL40CnhFk7HnElE2cWq1o785ofx9Cr
	 eNc4mokOHi901UKLf4umL3fxodzOii1d4CzNcz7sI5koebocKXb10EwBwm/xxUHX3j
	 J9KncK0LDz8FLTgdyuOmlsFpd5gKtDkCoaX8nsL5e01l6k15/mfE2I1W/CDaOA6Bpl
	 juLzZ5xIAc2IyPkZUSyv+iIhRr+bMYxYXUOLUaBmQ1EvUIx+R2Rvz+MZ3/EWgDYRfb
	 MZNOdbjMO5LwcPcRdHdbIiIHSWD2DvbZLz5SELvwVEM0MhFc2nUGRU6JdejEpp02vq
	 nYSWUs1RHXMWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846059357.874.17561707255510782389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0760bc1f8ce9e8a3261ff8aa89b3a4e001dc88abb16587f6f4c8a8b405139168
Date: Wed, 28 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748460593
