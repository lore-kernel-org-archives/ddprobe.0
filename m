Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178CF1DF75A
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764063174; cv=none; b=hKQaAqzGpVzcNrr1jJPgJueDmCT2JvH/aMObSX4C+rC18wPmUeGlyaFQuFbY5T7DRbFViNQJ/RQaheO9uDwhkb+J/j+iZIM8jG3esRp44fJZGhVdiVmuyWyjBebxCO171uV5iZ+G7bBfySZ6xQTQxlPqbOP1H3s2BZgd0qlY0Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764063174; c=relaxed/simple;
	bh=nMlQqDhgdw4ov3GPPwTEOer5vfCw1T+O4beIb4+M+EM=;
	h=To:Subject:From:Message-Id:Date; b=sFslvROqR9Sc58Ua+lHHlgWJ1/ye5JUDw99PnP82k5TItNWJtJyc57glflU0AdkfSy2Kri2TYiXJWr5Ye0WCw7zZjzkTMbUFSpY7ORUosSfTFj54e+DmlYWV7xN3mNH4EO1tw1FOUScqSDCXc9eu/sE+WrJQN/Cf2S6fFKiyj5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY4sgrkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY4sgrkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764063173;
	bh=nMlQqDhgdw4ov3GPPwTEOer5vfCw1T+O4beIb4+M+EM=;
	h=To:Subject:From:Date:From;
	b=eY4sgrkZUEmBQzwV1Kn9Flg3ke/xLNHL60bLl5ws5/fGTbXXQGyxCZ8i+niywX2dI
	 F9clt3YD+7fmqFN4cFRY6aecYepuU3spVMVl+qdcxA43PqN3iIjrb7fW6+3Tl5o/P2
	 hQ2D0Gg1CoYNFFJc7sAFCR5RrMR/Z58lSV500h/4VM3zxJKxwiWC/QngT07A8q6U3S
	 RiAWSEVdeMjBKvlJhWM+zY/sTeCVwZsYco3CGZEgyaDTD3gPOdcvb0hSWMdu7ZSMvQ
	 giI77WISlUymUkuwT4LCPtRDos45mu43eD1elWuC6xtgBle4u3OXZrdsiBD881DOwj
	 zecY8i9J1qhig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BECFD379
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406317359.19086.691799989137425548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97eaeb8a50e5ab0cf147e1c6f1de85d67b415d1851c429d209265ff9001260e
Date: Tue, 25 Nov 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764063173
