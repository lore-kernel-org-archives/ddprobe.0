Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A3D2459E3
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753745993; cv=none; b=rcskwkoV6377ccoI4gbNQVkmv0E1z0sIx8yP+XL6hocQyr0vk1BlO46Me1YyfOuVPi4Fx3ObkmnZ49cWjEWnamHiD69HPpz123qJlCzlMFol54DgmLkpU84RgD1iWEFuBIch3dWx+ee+637Q3ndga7GdgB9CwdmYtYSfi8NYNTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753745993; c=relaxed/simple;
	bh=ZUkvUkQL2WBnQWmwvCE6Tec3rCiGMGYaOBiQ3xVKKvQ=;
	h=To:Subject:From:Message-Id:Date; b=jq7uwzs1MU41QP7ntVuDsaWJ6hZiH2B+BhM1O/S2DkIiI4vCqDSaF2l8pvHzRdtqxipaaepJTitsY3Z1cv/x24j2cEIfhEkMfY3E+ILyHv+xnxh7gY3uzqUqNPDM8zc2zbc4VNYq42BopPUehXL4XusN6M7WUEQvsr9ADusdKVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhivkdRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhivkdRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E22DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753745993;
	bh=ZUkvUkQL2WBnQWmwvCE6Tec3rCiGMGYaOBiQ3xVKKvQ=;
	h=To:Subject:From:Date:From;
	b=dhivkdRbbP4ipE2PtROTN/O3bf3jngErcZ4wqvI5myDZNrNNJMsVMVx24o83b8cNb
	 JHNJrTw5kNnxhAhimlljq17xCrFr81/xxTq3tkTqOA+4oeGSaGbLqY5nNptCbSfzN+
	 EHoEB3w+duq6BYdqnHEFyTGeeQzsewytU6V4IYPaXfS2VKpoZg+hopn3g7lVve3l1u
	 Ra1SxhkIgLOL+Y3tYNAR4tE6ODCJAUXIMj13kaOp4Z7nAlBW5VaokxMbjb5jJ4Pyq6
	 /VK2yrGKrS6jcKU76W3uiHTRCbvQqoRQn+142gxl0Mx7U+b91DEX5vecQkxSQ6+DbL
	 0U5uVlYeiLdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE38C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374599357.11935.3278296527728631278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e504ed82eed58c4b10dd6c88ddb713a4e491ece14411c8b806902c11417ed34
Date: Mon, 28 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753745993
