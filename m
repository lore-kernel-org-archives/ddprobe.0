Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB23199D8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782694114; cv=none; b=qTuF6JQuPtTtv4fsn/2aEy22lRabGlM4DBca+tW38CyWp4muX3KIKMmgZTvas6qM0MCdrH6vlWn9smuM8iwAGgyhw3CQw6r6RAltLc/mIPzrCzR5Z5Bsz2MD8NWKDbzdKqsx/WXeie2+6u80LYsmDpsey2bAoBjBpkYt5PtlTQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782694114; c=relaxed/simple;
	bh=5B+vl19/ZgZWMZbbftvFDqEnxGa1huPiJWTlq0TksPk=;
	h=To:Subject:From:Message-Id:Date; b=U+kayTD1ENCLuy0yfseVDPw6AWtd9m/BhGtjGQK/1Knaxz3FCHLEt5ZElyS3yJpdAr3BlDvq5W/e6JmQNPZN8aJYxIYE1tnFlehjxNd+e2xVBaNfrUh03fVggci8jwo/25MjfxEuAdVSdGIatvn22dA0DOY0w3EnYgmzUVRQdzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqSLhGIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqSLhGIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7EAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782694113;
	bh=5B+vl19/ZgZWMZbbftvFDqEnxGa1huPiJWTlq0TksPk=;
	h=To:Subject:From:Date:From;
	b=oqSLhGInvNL+saJ1/E2qY3hW8DAYyd08gevW9118rz9ITqTRiKNKqHACEFLk8uKiZ
	 y2aI8Mvkm98eeDSsMklLPdFi5SgyTTJUcCpOOSCf+qOhHqXVBxctG8UM36QY9HrrrP
	 kXuhvpT7lgNVLrS8bZAyl6COyrYjOYHXV0fkKZMSe88gv5VbjmUnPG/AxqOicKjYh0
	 AsjKk7/3/2ZpQtz1HNjsrUyydHtLQOASyrmzTjAlA3xhNIE37bLtj0zWN9qPuBByyq
	 K9bRruX8qqRcWZZwk0VVSpjNjnujq6tZYFr+ff34SddjB5dasVVg35rbFDrEWL65Rd
	 j+Skt6FADnzmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD5C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269411369.18127.8770099039257407640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4973532f26b027bfef23b8ab67a5103d47ef56f6bfa47043ea49afa341a8e8
Date: Mon, 29 Jun 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782694113
