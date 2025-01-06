Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3028D15884A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736148354; cv=none; b=G9Mu/aXcrwFC7mm/GBJbJ63MKc0xpyDM7ul0KZ29Ja6Vf7nIoA/3kzpM3pVus2sG6W0oMLUCz6GpZeDkgDGzbA59gngojchisUDN8NP5zbR6RS3D6yC3wzD7155wbIMVKdmsPLo7morIcBhsOoGGha/De/32812+JZ+ElR9wcbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736148354; c=relaxed/simple;
	bh=fQEdGMGIJ2gyzcCP02UFUQ8hJD4uUNrF9dNKv9gBpLQ=;
	h=To:Subject:From:Message-Id:Date; b=hDgaEZQj7m9+6gZIWqJ7Qg2epzH8XygBF75MvwC/Y1aBj1jAmwqKBW3D+W5Lz9Il6HcY/FC1hVwG+hTRM/8qU1lunURkci7gwM7yv/spIgjXsTMNIsgO4ovYdw0P75wUGDByDFhfv1ulZMvi2XEbnvfiuSt7wt5i2cnNewgdSd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtewkR2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtewkR2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA37C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736148353;
	bh=fQEdGMGIJ2gyzcCP02UFUQ8hJD4uUNrF9dNKv9gBpLQ=;
	h=To:Subject:From:Date:From;
	b=rtewkR2yYAHDmky/SrwT7Pi3xPRIzLyYcUwcJ27vbpdtV1eh05/ljVbAH/v8nrd/P
	 AJaijdpyUM7L88DFoimvYBXJQOhjiYW1wuuP82BoyaiwpE64B9Q5ZmymKXLxtTGy5E
	 6XXugRAtmUOoExf+Xf+Gu490B0kv2Nno6wDTRZRV4GgkCUx0kLchZNsOiujMQTQJRd
	 3kGq68Gk5Pdh/rF502SUFev3hKSRefvmxuu/rwEGq7YNpXYdHc252Pg8WAT/1mi9Jh
	 3ceCPhU7r3Z5LVhCD1ltHWT+romRVa2ralbs4r4w/OFSHcFJMtiJuIZ61EHMQArH7y
	 DgFACsEed8mng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99215E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614835361.14589.1243995285798477995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8648c2c5a9739f29a72bfe3deb4780eb36521327be0dcc8e7a01081ebffcc98
Date: Mon, 06 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736148353
