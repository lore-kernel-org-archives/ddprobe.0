Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BC11173F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726668954; cv=none; b=PQ9kaDoZxiOMNC5xdjRliLQFBxa9MM69bL8+tYToydHE0WWHUs+c30sQvlrl0kT9vlwXf8DFlMvt7D4sKzi0vMvJysst/BSP6VTAm1FlR04uVp1gGi3tZmkj/Ufznct/LSReMZsC7xDS/4dOBFvm3VhL2V4XiUKAkM/Gj7OGfIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726668954; c=relaxed/simple;
	bh=bB8JhVCI2Yx1eHNWnf92T9mHgkl6KXFEdovO6zxQqMU=;
	h=To:Subject:From:Message-Id:Date; b=pP2e8kdaGEFT5XFlQVZAqhLyM272i6XYUE8/h5oyfGFSuFOh1vF0jclE9vcyxbYDKtOhsSrdGbOWv1PLAJRg0dlxTc6xx+Z9fPFQzyi/OmMUglPk/HVuNtGVmL7j8IgNT7v1Qv0/HKALU5sAAadOG0QQVqsNnPBVNje3xA/sa2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czX09atO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czX09atO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559AC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726668953;
	bh=bB8JhVCI2Yx1eHNWnf92T9mHgkl6KXFEdovO6zxQqMU=;
	h=To:Subject:From:Date:From;
	b=czX09atOp84GcVMZqd5D7w9Ji/2LZoyhpkvoorMCM2EICXTvZlZRdn8GxsUPDC0jC
	 9fKFR4sXPboeu5Y4THEUNMj+DsD0js59YFxKI/jOaUdHxESVrnuTdQw0IVLJxScYa9
	 mxl2ph27FOw/CkhLJk0H7koHgWJ8vepahaFrAptZB1zwPItcvBKPqne++OXNOBaz4O
	 yeT+OiHyB+GdvsJvxtz4+GUW1rHSmmNG31pjwc+taQKNakk3wQdKFZjg1337C0v+5m
	 QdZ+7j1m/EoW6vNFCN4oxhAVEu8GhLM34zMguSjvQyPzCLsXi8198VldXH1rPsB5/A
	 bDyBvidadP+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908EFCCD1B3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666895358.32350.10883029048773865518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7917fee7ccbeb1b3732c7868cffffbf252e1575fc1ac2bab22c9962819112ae8
Date: Wed, 18 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726668953
