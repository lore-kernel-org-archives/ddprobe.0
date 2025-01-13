Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136D6235C00
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736766954; cv=none; b=aLxgkkN8EB5s70sol0HYz1G9PDW1kOtQtHduxvZ9NE9yL72Y1FEnaac52cbXXltVTlx1zhUwYbo6nQcb8r5gvFCX2XKkPAGbV2bgKSi/1pZoDfCzdNRkwnJT5TtyWQkJDU6kaT3MHzaXosDtOsnjD9aqnM+s0dltdhqmxY85uK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736766954; c=relaxed/simple;
	bh=JIimO7zvEj8gMKYdLSyScKhEr+d4uFSGpAzs1PiN11Q=;
	h=To:Subject:From:Message-Id:Date; b=mIi8f3qKKadgXW4YYikewupllH1pzxoXBitwA7iNMnqAIVnb8nG8Cz9TE/3ZCeXI4OFYf75IZ6QHpMwhFOWkECf9ICcKZUuM5G91huJAj48nTy4SRygLwHC7YKYHL/zjgBfBS4djnE9MmkgW27fGT2+rw+NdSBSCcYgF2caiihE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXbMxyoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXbMxyoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C2C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736766953;
	bh=JIimO7zvEj8gMKYdLSyScKhEr+d4uFSGpAzs1PiN11Q=;
	h=To:Subject:From:Date:From;
	b=MXbMxyohxOapxA9vF8amj2ycCLsR5II0kIy5IST7GSR3glg1ae7e7RmBmlbrzJRug
	 NyEZBWupRoiUhCq0LdiBN/2O5FYkaOKZZZvqzXSiQYIZGGy6U09VamOx48IExj3tSh
	 FPKCJt6H1B0slbY+J48EAp80RDIVE26Rb43WYnOhEMk8dL6sG7/qWWLfFF/iUVYuzy
	 pxrj153P1He9c/gqumDc8yBmqZ+Gch/PSUjM9c0WcFzcbsGxO8sIjqIi60LI8o8tfb
	 eFmT6aNY5nI7qjd7atCbcaxpbv5ZWEjCgKQW2A89Mgi+0QPtGTZvw5ipsCi2d1GSuQ
	 rRgLFwm7YETqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B7DE7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676695361.8307.1843096425085137424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843b9e735881f43dd5a689f4a4d1e672fdd304f581dc29235975df42b6322f94
Date: Mon, 13 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736766953
