Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFED219A81
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755633594; cv=none; b=Q2KaV4Eb69JTJGHA4a2APK2k/a9qksaJPZExVcGBJp9mpm73nFuHsW9qB39tZDPuvQnbDpT+MS0S+/xYOzTQ46yQ5bZWsgbwjcJuw1b6638O6ox5Uh2ku4JKQhzkdUEFBQzmj51HrAtnQ7jJIgNt0zSg2Gc/KcMg+ugddijpzgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755633594; c=relaxed/simple;
	bh=28ANCv4z0Asarp4WIF/dZjIJsQ940H8i9TB+SCVq80s=;
	h=To:Subject:From:Message-Id:Date; b=g7UisjCeOuBtv84cPGZeBASaiiSwarPGx+iX2qSNQeItTv73G/uCoewdiDf5PqbvxIGBpEC8sY+YFgwbVY/obz3ajsFZVuw1c7IMHHsrYaKQDRiU1yAzYnJE3sxK+sxykCaAXnWbyDkXSB8e3GXHb9nsrgZgzWogENS30ycNbTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZICVpD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZICVpD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755633593;
	bh=28ANCv4z0Asarp4WIF/dZjIJsQ940H8i9TB+SCVq80s=;
	h=To:Subject:From:Date:From;
	b=eZICVpD6BfITdrMOkc0G7g/Lnu1KM5dYCds6S4eNDVU9wVTr83yNWvVF2OxqCm89L
	 /uO6eIUkKzXITdJEn4cKABwag6tvvXmZ/RAwoyOtrEDxolQMTViTrDaFBXpv04FiDE
	 FEoIpALDce2pD3w3F8k5ZUX+e/9mksDNmsFN3QBJS3SQhbg6bsBuP/nI0Mcj6Oy1ta
	 xzlHjEH44bLLWlq+Pf31WuWPPffSISGMmQkgJzVoawKt6YB75rPtuMwlN8y9c4uFtf
	 XzdhFAGZVlW4aAznh/95fu8gdDdyjZtrlgbqNhvppj3bXTRPLAVC9jNuLBqxKp60oj
	 TleAa6Vl37piw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C5CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563359357.15779.4308331971106521361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526a79ba3a47677ca97225873b9a97f977de4fc6ec87ce3126572a4e77054a50
Date: Tue, 19 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755633593
