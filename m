Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158C230BF9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748615395; cv=none; b=WwF4DRYQoTfb89xPl6cBum9tg3sEIlCMsYyxnxRMUNrUH5uWV6YyqXKG3x9MxLmr+ut/auYueuzxjhDx16CoVhfFVjShIDGENKSOZEvhJQicipolOTTsfNfEk4JooqPijksJ92mHQ+9D70c7qLhbj18iu9867AZ4PR5T00oMLBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748615395; c=relaxed/simple;
	bh=gLQwCRK4Mt0gziTfvR/fxTpM7KhkD4mUJWnSOE77MVw=;
	h=To:Subject:From:Message-Id:Date; b=uu+6NNjBYdWzCRbiYUiHwYhg7j6PFmbh3/dIA2AwFUJYzJb6zeypxTL+uQ52WGZHysa0l4nZDQ/tEQ3MSDQzhhb+xry8wb4wQBtLqV1yhPfIM6xh8GdXaXn20jqQqDOmhmLu09WzQzsSPe5x1xfwLAQFlaqgyY7CVh9tG/digyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PR3pQBoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PR3pQBoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748615393;
	bh=gLQwCRK4Mt0gziTfvR/fxTpM7KhkD4mUJWnSOE77MVw=;
	h=To:Subject:From:Date:From;
	b=PR3pQBoyWwHvu7N5Z3ubgDD5nzkCxnhSkJkcXUeZIXMt9V6NsQWXIXjk6WcQkiA4u
	 zZaeA39wQJ/hAuaiPqPMIhNFdrkPTxAHIxx6WrUSoJX6rIFD9/ERRmOqXaf2B8qAXU
	 LOtwzLlLaJQ/Ofom4Fp9N+btO+huX3Fw2uRiumeK1ajlFzwtFetZuw1y5/8I4Cgir8
	 4Qw3S1VPXu8Xj5os2FgSkr3W1OA1ORNRE8eJmbv6dvGw3enYoaOXbsB2/l9PuUcQTw
	 Y6HEGKu2auceFZ/nzfzCsQcYmJSa/RaifQ3F9HD6sAYwCKoTWX8mfBulIa6P0Unnp1
	 XinIFAGjRS7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EDCC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861539358.26962.6728560650141144571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875f786c45aed5b45c6f1815900c9deb4961457fdbe7b87eb697a2fa1146e19f
Date: Fri, 30 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748615393
