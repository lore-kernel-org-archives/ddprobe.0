Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E94F2CA8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733043954; cv=none; b=epNNVvx2PCOtpx8GZ66W7QN3YtOm+2dNRppF7ZcDBN9s8EygOlbyFexDawkMQlULHcrPFPhF567M1JL2NQnCPpL0ATtE+ky39iaGZq9jVhVmG/AuO700xKwoSCqbq5Noo5E/HDtVUz0HeecmEDCuE7jULsK7JSZWJpoGrO4IzoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733043954; c=relaxed/simple;
	bh=YJJc6d64xnVNSjU5Ibu7e3+lCo78mKS+ChffwPHUjVA=;
	h=To:Subject:From:Message-Id:Date; b=SPYFz19WmsoO59RytvvXJfxyw8VlNBK/FfU80zr4UuWmuTEqKsp9FREQsB0qtOGQpitAYEErjJDS0W2lN5MJFzObHzCksjRQjDhNlk3pw/NKvuQO/DtQoqkzAjysofM2tDdUmzuLQfYDg+ALPm45Bj0D7GQA+YJc692vWn5/Lp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhwRrPIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhwRrPIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E61C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733043953;
	bh=YJJc6d64xnVNSjU5Ibu7e3+lCo78mKS+ChffwPHUjVA=;
	h=To:Subject:From:Date:From;
	b=NhwRrPIoAeFD874Y0CeV967ai5AhtC0AoImcXW3p+hm2pAneLWB8WplrXuIWg/QEH
	 xClFcXaDXV72+ndD1SKc2lD7yBhxw0P+VsxK8PXSXrdT0saNC+t+1XS3FfPAw3fGkR
	 h2gHfQmsvekCICvs04P1EZFOSGt75XbWoVDVMV/L1ff+DferZ1HC4FyCBXOupPgriZ
	 aTpVd5s9DZCmYwduFjHhCdzuEOgs9qpnIg6doSUu+z1jxe23sW9u5lW1ezBJp9Derl
	 1sSM+qF80agqqzekmUFq2TNe0ajPjiUIVOvUc9lygwKlJAhnvfBRU0tmTf/bsehiue
	 wGk9qmhVIqxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414FE66897
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304395359.17721.13856610850811925724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5210fb6a5a1f5d9d0cef32cee4080268b27a819e4874db0dea4133ec5f562557
Date: Sun, 01 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733043953
