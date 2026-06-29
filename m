Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F49332629
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782713914; cv=none; b=g644AZeSlSIGBXy+jKJ0p8Hrw5Sgx4jtbyUcdCWU9/kTH71JsqPj30U69tCj0jdfh58V3M1rFblPyQ+9y4+wxRwXhuxCFzPU5xfJd+c7ksXYwx6GixsGi84VKELxJ4N4+ZccF0jfgClEleFkHc2EV62sOKggpZYNz++kpNE9tvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782713914; c=relaxed/simple;
	bh=G0ftjLAJmHFfuU5eQc7a3XFPwwctulLdm8biDyMH7+Q=;
	h=To:Subject:From:Message-Id:Date; b=c1TF5mHBvbyExrjrb3JKXb5drgUFv7yxt0LhNVN1pzz8BU1x9BRlgUeVNe5/9owNIOHz1zSKZz2fSY8kTk9/vTp9Y3z2MdHvI4ZALShPpggrHtj4oljI45tg4p7bQp0+h9OTFzp4S7LSxwhEnU1CcjUP4qDUBK9EW9ndNvmCUQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um25XGCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um25XGCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC61C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782713913;
	bh=G0ftjLAJmHFfuU5eQc7a3XFPwwctulLdm8biDyMH7+Q=;
	h=To:Subject:From:Date:From;
	b=um25XGCgZ8dVx6wdNj/c3U86ZxaDeRmIAaT41MFjIltDnHnJXCSsw06JVWzc1oQqQ
	 CWHmv4uzhaLHssw+TFna0oeg9o5+PRf5NQpzj6rkCdIXXOxCtSRNUJhA8JN/fKklm+
	 2bITvLGIVPaUPTeS5anF/l3cWUuPNhVr95PcWTkCPnO+SKEcbsQjpMyQFGYqUzFfVf
	 zjOWW8WyZjR+uCGSJb7u+bIiP6VIntPGd0jO0Afw3BbVQPfe6ovKhFesgiP3GfEfgk
	 szE3zA6O2iuUX4uFgt/W/wXx8NbamqPn7zMu50AV2vJms8OxxkutbZwGcPhxQ9eB1D
	 n04QjL5S/16YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B9EC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271391369.17319.12417436981905498283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf95509b1676eed0f5b06df317904b749378d1b306bd3930adf673709f2120e
Date: Mon, 29 Jun 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782713913
