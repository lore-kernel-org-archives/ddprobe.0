Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E03C2DECC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788318034; cv=none; b=ObdsaSnxmfg97/CeaBfLep8A82ddd/idyKVfNWm/yveVM0wUlC2c+MiBQz7tL/08n5agOIc18Lq1XtuSjY7ikuUDg3ZufFiG8ENPQ9G0+lp9b46JqNYWjp2WgxUL5FHyDQMy8ov11oVYQUUJcDLmJaqykWsBqWxPbYeX1PCDTAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788318034; c=relaxed/simple;
	bh=JrGrKAuLiNEd+jmSPqOfG4IHaADUb+pjMChzPug79nM=;
	h=To:Subject:From:Message-Id:Date; b=TyToUbA0a3sqrIzP1jkxOh97A0P0gx8q41NcSPe/8HpLix8kEVYuvCapfOYUzlmBzCC/aPOLkMlbtrnDux2BUFfPsMbjmfXU+YpBVZP3fQC0Ercorl3YQB62Q9jsrCVxg3//8MESj6/wC/ceD5G7bpbluGw6yWI0hBTtQ91w2Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZe93aYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZe93aYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFBBC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788318033;
	bh=JrGrKAuLiNEd+jmSPqOfG4IHaADUb+pjMChzPug79nM=;
	h=To:Subject:From:Date:From;
	b=QZe93aYuORrEkUPaGWBURRfR9ecbE8RjFxfqTERBY4WTE1W/I2v9omlg449J08vJl
	 p2+dQNcDUoOtw/bKmmxPwf/i2MtN7BquXxgwN236YwgtxVGKJ4d5mNqJIBfHldF/rV
	 WKW62H6RcGyNtMtZMc12IfDnrH5qDS6HIf+FVeWP0FlbVRE9x5iDn8fxGJBftUBrLj
	 cQ3xH1EtPZUM8fycZr51dEeCCMrAqZKoY68TXruMGj6WoQwFI7NKuiiNJkEwpmEJXS
	 ovAs86PdMjhNsw6DwRQRsf6bZsKmoQKLAdElnd9AnMLPmjz1rHN4JZLC140NK6ag52
	 tBxojBlwTxOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966BC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831803368.12474.7250224731319527719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39465090aa547f28b607cd550c3878cd4abbaca0682ea5930773f2e665d4cbbc
Date: Wed, 02 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788318033
