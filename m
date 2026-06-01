Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164E43876D5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780300474; cv=none; b=WQoGJmisBdYI9Rflut0I9C0nGL98xGBYoJo8X4I6ncPa2cNCmz70Kx6qjQcliqNXdb5uJLtz5jinE3aZuEM/Po+mcJrIkLAOc8tG1nx2/CbP6QA8eplJ7EM6SWJx5Ni4mNqEBPuxwlyEhVJstEKuHq84pjC8qx//8kpEzgv+0e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780300474; c=relaxed/simple;
	bh=h6cT24GfIFpYzEwPE/bQzrLJcyiab0Ik/UVBI7fCxHU=;
	h=To:Subject:From:Message-Id:Date; b=muQ6QZDZDt8u+hN8DdzmDcArlHlYtC1PAcrpMED5QO6OZ4K5XHPHTgYGE1shH5dQ9/j7LL9T9HPjuONHKPVxATnq7xKjedD8KT11/gYTgStQf/6FV/ELEQ9umcdt/zDnPtI/Vop2h/fG+bN2ShOZvcwZXXhY6Ek622rIDXpobLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxRKS/va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxRKS/va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C650AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780300473;
	bh=h6cT24GfIFpYzEwPE/bQzrLJcyiab0Ik/UVBI7fCxHU=;
	h=To:Subject:From:Date:From;
	b=DxRKS/va4mz9AtFET8M4mVnJhMI5ZVMaoEQjpPlsfnMSEn8J1GROYSkGPzyGbRi6T
	 o6N1co7XBnFnB0ji18VxO7i8gVoeww389iLyt5/xBV9hB2UQvyudyegpICFOZRyGJL
	 vKnp2F+GxnVolRcomlmhTyXH5KHWbbtSgephGLl8IYrh8czYM5Nqi6BWzG0OMWeKF0
	 pZ+uw8VYpYUj/HM5/z7P/e6mLByu86dYU8e8kLUXh9eghPkA/dwcO8frHzb/LXviSj
	 TjAPioco0KORQZpfhEYY5/jGXAwJB6gKrXtFUL3GFKXyEfydViqLxMmjbwudzL4fja
	 78M0TNc4COi8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B8FCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030047373.20227.2614783833407546358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c13537b4275952f87134e15e313948a2e42a846853c84502254b6ab49b00d2
Date: Mon, 01 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780300473
