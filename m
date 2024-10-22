Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F621CDA2F
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729639554; cv=none; b=AbqfRjQG7mGqYNCbxTPsGX92Anqqn3y/lhs0giG6C6Xl4I5nagpscchlO21QyS4EPsYx1NoDiR4jUwneDeGpmog0VgdMOHZFg26Q0+JNgKqj240+id+WkzQ3BjWtZ8S+owfUoB4zcdmj5rdaVKJ1oS36c4nuYvXRchaUhg559Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729639554; c=relaxed/simple;
	bh=Gc581yheKnHKw4jQ8r7nnKg+x72CLg+cgkLn05TWi5w=;
	h=To:Subject:From:Message-Id:Date; b=Z11Y3v1VZ4gj2BarQyBAxxMhsjcJqOSbdnHUyn21yCbaEOjdhT32Gnx+gUG6KVn6aDTkLul7X5u6s6CK/FRQTSwVcEbtX7vcJpUjfO7U9hEYEfFCkxbyQR0DIbKxboC4XEAgSZ2qGeDxW85XXP8losPiwLfuYmbUpUbM08nRMoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/qzvMR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/qzvMR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3357C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729639553;
	bh=Gc581yheKnHKw4jQ8r7nnKg+x72CLg+cgkLn05TWi5w=;
	h=To:Subject:From:Date:From;
	b=a/qzvMR6YdH3mDOb9v3MH5qG/Nhc+qTX41eApd1M4QvLDRZG3m0kkleoMSFXtBq0Y
	 6jmelcHmSoKXCTcPk9gWS0EiFnZPbyuntCcblIyw8lxoSTWL/4xBTYhNhKKkWZjcXZ
	 Eo0Q9HUjaMygN9hUS3oyC0bHsvErWWn03l/Yk5v94vi6EJfGHVOn6eUzf/J2cTRakD
	 vetNdTRZVR1C/xC3DZ9pe+b60xF05dDjzqF8+W7zRHu63ulUbLqPeFCQPHay8gmJz5
	 y9DTyfEcn9YE2OsaHJvn6bMhYfQscXA51Ot4AjYiYwxcApOoekH0OmkFWrHgjgVutt
	 OXk2tf5XDXPGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF18D2C57C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963955358.18146.3105722440041530071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578050920722abbe295de5b90768da20e8ddab330d11fdc8359c52d37356414b
Date: Tue, 22 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729639553
