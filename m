Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562193019C0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764943374; cv=none; b=tBDY6kHYQRqI6ZnIm01ruMfDD8c/oNIe4RXb8RcCbjta0hD8fJQyvp7rdNOW00UR2zalb6B0U2+y1LFUGLFuJ2GQFA/FzIPEsryqMSSHfqWqBJk3LZlWcid1nW2Dkt8+ZjyHC7xjRL85wUH334/wqF34o0qxht6qN4s6KiP6QMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764943374; c=relaxed/simple;
	bh=bSEPLubQ3aMKLzBcDhnf69rGsYEfvSwaxTmNA0E91z8=;
	h=To:Subject:From:Message-Id:Date; b=fzBCdGX3l/kfaWjjxoHrLCMgqZtDGpM3pwSxjovF3FaqEw+IDr2Qz+fodmj1vJSm8bT3LsRat3pRJAXs9BTrpTYw8gObqlm0Vk4Fl0HDYdY4eglxr9KZMEczsxEtJkyVZ86SnArewrlv+ygjunfyDL+6zLM/uQO9SFoMXkjGu6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqY0wbkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqY0wbkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75B5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764943373;
	bh=bSEPLubQ3aMKLzBcDhnf69rGsYEfvSwaxTmNA0E91z8=;
	h=To:Subject:From:Date:From;
	b=KqY0wbkEHxwpSybI0QTZJQtyBdt14XAX6tOAWss3Xqhko0tvgorCCkGPPXe8PD2F2
	 dM2XOR5OwCJuZ5smBPKYXnM4Zmj4n3YMie73gGHsgulUd+E9ImuXN4WXLr6K0wFyH9
	 qrJpB4v7hV2yDd5Psm3Svo5hbnKdOITTqG0cmvDbf/Yzav75Gm974/WcNdMfIUmf2E
	 ndIP6NelWoeJY88ZBU9GgqL3+1/ivWiBFxQ0wuze2AdFGzbYYfiV/MwV8aFyv1ka4J
	 zteg3RYieYZOlgr0IhFCYRkOFnUJIFb5FGo2NUKy+hqEdgTPMbqtoztaU/ugKy+Uzz
	 /zT5GTO976roQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96013D2F7EE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494337360.11967.12179052112025891424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da3d17c4e8a256c2663580ae1efb25470c426f63bf5c683bb01f4dc70cf224e
Date: Fri, 05 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764943373
