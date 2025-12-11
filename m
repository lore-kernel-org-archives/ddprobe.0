Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDD21E2834
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765486974; cv=none; b=qdv7ommjTOJhYLY98AOc0ypih7XwTUCZeu0GB7n8lsoey5iuI2ymlB8MTAtC88YfANh9iQTjI/uBkJtjxxWek3IWnM6rcZWfTbrwwnfLpAmz/0z4yge4oQQHMasjH14AqjRD1cieQOnUAc0P3BnL2vt1XksvH3V2Wv7z/U6UZwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765486974; c=relaxed/simple;
	bh=DgCjD6nByT9BTSIqpifBlq/1/T43QuZhUzh+ZxC4Q5k=;
	h=To:Subject:From:Message-Id:Date; b=Rd6i/c6iCPcSzLQG2+AGGCStWBGs41SPn19pQalvXrsuNKWztvW1Zu/inGgTftj30TeLd2qf71zBMRyVhu/ijzHX4j2ThY0wcaf4iN9U+9dBqciudeQTEse0B8uy2bfqzu42wmCgOOfIA1UBerVhA/BxmuP3EsacCzTRocU8nq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGJgavQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGJgavQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8B0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765486973;
	bh=DgCjD6nByT9BTSIqpifBlq/1/T43QuZhUzh+ZxC4Q5k=;
	h=To:Subject:From:Date:From;
	b=TGJgavQfRzsEInA3+eRlMkYyYD7upVXYHBdS5p6g3mojc+rNzW8mg1ybEcEphNqXt
	 KrZhROQ+jj05LqOXBT/b/bqXeO1DrEM655NYOFu6fxErDqlYZIDzIOiRZmTkin8oTU
	 LDrQpS5tnE6xnsr5TebPrqd4iKwNjJ/rvL9ADqDucXbN5RjYZpkiUnuIdu2CGMYvlV
	 yJ/VHjYQstBaYC8qqH2Zj7DFe0omhEkZYv9oJ3NZ4sfc1ANCXFlhKiPynyCAKomuyR
	 INvZjk35ROwf4GrHgt786j5YfhLKd2cJRbHswpnTJZ+pYrLAeiSdthcfD5lT9fckxg
	 egQqh7l9aU+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDC9D43352
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548697363.16549.9189214023513392123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b93d1d9e0ba8c1d6fcb48b7487bec7519787fb6efa61ae6e00b95dbbee6a61
Date: Thu, 11 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765486973
