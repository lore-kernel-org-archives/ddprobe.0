Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8551E51F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740987534; cv=none; b=eQCsaHNQyK2rUzq6UKnq0l1qaCXrz4l3mIG0NPQPFuFXC/FxvYw6AoQDKI8+MhdsnUF2dDrbjaMQRSBp6Ia5ps1X44wYYj7OugkeVbVlyhcG8c0c7XEmyAuHCiU9mENxzBGIPiUt/dDMfTvA47cDs7tG5s52Ezf7TSkfCFApM88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740987534; c=relaxed/simple;
	bh=JJjOuYATmrYoV8yl4cDd1NSdbjPy50ZENqHVztqRBKU=;
	h=To:Subject:From:Message-Id:Date; b=ZYLc9+6pMlPL2lmQZPfju10BqNUXsnFiccMzwtbhiwlUmhDHSEJ7CNMgg5sMlJlaWvQaAbScCwO9CfulO5re6rX3Z3rDmU6r4lizxI5geBuksazqC2Tb66AjVb1qmVU7m87N4wUahJGqAwa36pDwy1JBZdGwRsDXYErMtII3j6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRRfiiH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRRfiiH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD881C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740987533;
	bh=JJjOuYATmrYoV8yl4cDd1NSdbjPy50ZENqHVztqRBKU=;
	h=To:Subject:From:Date:From;
	b=sRRfiiH1OoeniRAsfj1gjdZVbCEoxCGB25evNKVINBjRR6bR50ujGCOIkYn5HadJa
	 ahVVZ9tDIW0TlJDoyMwcXIrl4tE568iaP5ffwKyXXcUTknTw2/FdlyGwZ44mlEok/R
	 T0JXNNF6isbZQa+cN8GQwpFsj6qCMiPpYiLU1DetFVbSy2opkkxJPmVq3RN7j67IP+
	 j4ff9cDYDHMVCN+CeH9Y7GRxBfJXXxgVrDP+a1RuEsc121uPO0xC3FkRKGhkryZGeB
	 2qREJpRAXUffdy7Yv2MBJo5Yg50RhJ7ZLPfi0wdouPaH9QW4IWgkrHXYV6VDfuW36J
	 tt1rRn79xRLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C87C282C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098753359.15820.13030334714691513104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e2b32bd00b867b5843159973053a442112fa70f3858ea7ac2dcb60808f8328
Date: Mon, 03 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740987533
