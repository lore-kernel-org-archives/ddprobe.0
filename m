Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287A8267B05
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770212634; cv=none; b=KjX3ja21OpJDmCyZ9awa2a3xRmgAaBU+5HX7NWTa01E7VQWc8W0qvNPQmmd31LkEkvWzSDzcOAWHpTpJdtGdR1cKND/Kd/sMALCOm9BvrpUbd6ktRtU0pZz5iT4UbFdLEYHkVUKSIoAzZlTsM/RwBbV5HUi4EjoJX04p2xwgfwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770212634; c=relaxed/simple;
	bh=1BJp4EMlIhqtQXVkXKeJ7bn9vUTPj/zW9VjEnLqxzdY=;
	h=To:Subject:From:Message-Id:Date; b=sHJFIdNviAhqwJrRYEsQXuTvLcAlWF+JrUY0V97E1FQYVPf8ZQbJ9i5JUwAF8KuYkuj/h3jEgJgGMovuG/4ZPjAOVngeJzQqILDYC9t1hfX146F8pA/R2YAxpLlcPK0/2pTcKvE5RBUMlfWirb/77I8uP4/eh21Sn/+W3oLQXjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQjegl78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQjegl78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E7FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770212633;
	bh=1BJp4EMlIhqtQXVkXKeJ7bn9vUTPj/zW9VjEnLqxzdY=;
	h=To:Subject:From:Date:From;
	b=MQjegl78Doict5EcXwY4Q7truLeOZAu/S4SR6g+goXr1Omh1uG5/vdF1hUg+wr0KY
	 3vmj/09EnpNpgRV0lPvY3ehLx1kT0KHod7tEv+KhRkmdJmCOBa4wWrCHlCdaD+p04v
	 7gvgEbF+WBnzzOsMlfUBjxh4Vs+m4YyCSpW5yt2IPmyg0cjBjxGS++4+B1VHZyyv07
	 4ezsY953ictxrfUxBmpREbB8Lg4yTh0rA5eybKsu2YHLXtwOcMRhMy1jCWfixqdCgz
	 638UYh/PXPEaZ5XDqAvIbS7o9aqqJ2sEdjnBknrBlXQ1ZnxSpnKyRmT7eYKWR0EZ7b
	 BqPZsJx3dunVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B8E8307C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021263359.3607.11110600921112306304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5464a0f9f8d48bcf35ce742cc8990741af7dc3a85b9ebb41bd3a024f6a71e10
Date: Wed, 04 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770212633
