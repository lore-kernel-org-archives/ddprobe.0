Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329C11A01BE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775093734; cv=none; b=WVVMG97Ri018gWoCJCDAjUJwzTtZYO2slxOlA2kDRuytyPDUTamlq7vTFL2R0RavZ8PnQqXe7dXI4HsdX56i1p4A2boflF4YNwoiSHM0INX/m+AXuRmfHfQyw1KefdKg5gvtTRG8uMeAwvK5bGVL9VtQYNGvlbFvTJUf04co0C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775093734; c=relaxed/simple;
	bh=d5dNyYCuj/n3EzPxmY17Ri1pgg6VLwQThBp+xPUmOUw=;
	h=To:Subject:From:Message-Id:Date; b=pIC/TPiLHAhW6vY0pfOvhp4SL9yfnj7jUuqHjm35cRCIaVJxDOBLcOvMmGs2vGmOAVVlNnUlXL1nxtWE2dY44v/ma1vM8Ao0xa9K7bvz4GVm2kkZ+pUCzSC+4bsQZS0/WMuB8AYtnIPKx/B//hkhuGDF5Xkx9K9MXiCKM5cFkSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6OWy/uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6OWy/uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1A3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775093733;
	bh=d5dNyYCuj/n3EzPxmY17Ri1pgg6VLwQThBp+xPUmOUw=;
	h=To:Subject:From:Date:From;
	b=U6OWy/uh2/P54S/BXHWMjAM0V1/TnYNLa8/+2BTWav0UNzAADAOB599ZbXlaVhKSc
	 5Ob7vWs4U34z2dAXJIs+wsdP9sc1oKTo94UqN6STgBbSFou9BQuFaqj17Ujuapb96g
	 NP6WLnShYLtHUTgsddY4JhKwBAzAXAHXQZAc3GE7wbkgRWL75h+L0kX1aPa0c4221X
	 jGACEmnqWqMSKqsOdsc16Q8VOkXqo+8wKtLr4W0czYbKdVs89v8c2We63p3NyM91uK
	 62IZhCD/lPN4bamqLMa2ZbwjuuvuUy379/AavmfyYK0O20PjTeiiewo7Q/IwK28hU/
	 1DFJGoo3qZefA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F11112246
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509373368.14852.13840562645690844404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add3cdfd0d5ebac70ed156da17bffd8d005cf3b0a7e4c3ea934d4b07e1aee547
Date: Thu, 02 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775093733
