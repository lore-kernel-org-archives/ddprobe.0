Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF794264A76
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756170594; cv=none; b=cmPwyIlBk0Kc4Uk/Ldrj/sGf93IuIzLXys2kOc1vAFyiwzvLZjulcgxufb9FuO3+ZYf09vYQETzR+Avz+hPeVkgTCsE4dU/qwgL3VMqJxJ4S40jOtcZZdG4WvA1o5mRYLtFAO/rWZQzuDFbxVXc/zhClFViA4LyVA8oaILrkQPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756170594; c=relaxed/simple;
	bh=jsdxlKJAZNSjwbIAk+H1RhzaMiRrCS9k7cLiNhKYmxE=;
	h=To:Subject:From:Message-Id:Date; b=buJE8aEDztwh96QPrnkhLqoJXddPAgk5jBMIV+hJVqrd0rfPSJQjjD1p/gMaTLDgIhzAGZj+EOWIVrAOhO7kcY6ilO2oHJ8YEZ8Nso1SeqdQegO7n35vcaa6O77MHpVW2fD8zPywSq55mc8fZW9Jc2365fJaiEzhP/uU8q2CpN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvWcBnbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvWcBnbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9EAC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756170593;
	bh=jsdxlKJAZNSjwbIAk+H1RhzaMiRrCS9k7cLiNhKYmxE=;
	h=To:Subject:From:Date:From;
	b=fvWcBnbZNECAZo1/tGUg2UfQ+WY8OmvuYf0SfcD90KJMdfzkLXsmt8ePzh0cMxxps
	 +M2NSxIz1UUdWxRP1yxeoB5fjMAYuv8cYQWSfRqrbLgXACkkLR6DVV4/NNfXTG1CLL
	 JQ7vGAoPlN0iYOPPQVScP4K63Nnreh6yDMIvkzF8PWEA5wLtZQx1QJ5mDzBsulAIeP
	 ncSEhRq4FxCchi83tp9QC5pVSQtFoKs6IZOu0ddcxg0OV+zv9RDm/jOpnYFp+mmJUF
	 ESkcW7I+fuwMYhFyBQbN1pmOUxVWBXNBjXtlJ76ZJziQ4JHoKIJc9RsqOIQgoABFcD
	 cTl4kepMp6mmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4BC8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617059358.15706.17536065268758470121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c8e68464a7b5933a9ba91c9014541f06c6a6256d88a7cdc32b242564ea49a3
Date: Tue, 26 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756170593
