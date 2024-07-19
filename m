Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1B013AA31
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721393754; cv=none; b=pOgGC29GJYrvHLL922dHfIyO/YPvvj4rMKlTHi9Lv+aZ0STNfYlrYsmMUa2q13lxEFIpSMq/W25/ro2+nWorhiC3V/Vgl+lUk3pGlHR4ey9DxlOL9yZIxRGJLmiG8UbLtaMcPavtWJxfWf2WTtcGs8JS1trdqDZAZFDFZ5vCCFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721393754; c=relaxed/simple;
	bh=UX0d/GPNK1fp1GC8f7qiC3niMx2NsTnmdWS9yIYiMXE=;
	h=To:Subject:From:Message-Id:Date; b=Tqwq+M8L3gdaHu9v9XvbiFex9BIP+115WBnL/0bW+9T0acaHIMFtMkFJQWGZZz8RvD9wWcsXFNaCx4eE9e2IpcajCixfSQGbndvsuKCvz/E5rmpyUebCaDIZJam1n6T+qJ3po++IBZdeWJ8dWKFYFrEZ/W+wCU4YN7xrH2NNK/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvDyiUal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvDyiUal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9D6C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721393753;
	bh=UX0d/GPNK1fp1GC8f7qiC3niMx2NsTnmdWS9yIYiMXE=;
	h=To:Subject:From:Date:From;
	b=mvDyiUalAml7g3OgPaaKsGZ+Wg3w05ryNnC8wIZq8kf1oTk3rmpDFpmRhztg00Otm
	 XPlBtbDYcD3N3up9YKGDugm4za8ajODvE3VPLi/ppkTFuc5paAWLxKW3JSUgY5/ldc
	 6aq9fSOOhyTlFbl7GqoxqEXsY9ZfLD1OhGG8vbbI5T4nDaQwEzQotWqEiX2+m3mb8N
	 KS6rz4s3y3lTtj9/uUfyftG45zcxkDbev1KRPjFxAU1Jdd73hPW6jVbzrOPZdU2n7j
	 Di6C7MHTC3qcQyc9vlt+VmIPQdI1y3MFBzKfrwQ39y/ivkBTj8v9/Ehu/VdDq3S4fz
	 KEratcfDxmVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F6DC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172139375358.17916.17053407030517627224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8618a324f54b23fb15df8a5c51139e6eadcb96f96ea758bc529dcc52e1e1db
Date: Fri, 19 Jul 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721393753
