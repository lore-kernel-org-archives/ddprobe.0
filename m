Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B297226D1F
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754724594; cv=none; b=sM03O5r1Bez8y0pL3PJJcI+mZnobc4D6UC9KgJ4L8ruY17tvUElVdAUS/9g10HHhjM4ubQLrnDgC2VbH+oOzQacARgngTOrJQRkARk1/edWSwbRy8RQWVlMDe1cfwyQEqExfqY4brewanz3j4Gj/Ce+pcSf3L64p6u7OToif1pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754724594; c=relaxed/simple;
	bh=wDU5PhKJOLSZGHLLgv0fdWPMXxGKYdxtzkuk4Di9dr4=;
	h=To:Subject:From:Message-Id:Date; b=RlOw2Q16zkGnqe+COb/5I6tWS4JU8Ix/+2Qrt4NN5BohNgFZD8eGF0MJEec54UliSrPT3YREj3YU7vJ4V/PjvWedTm4+4pVYtvrlf9PhxQRZRej7CXXE4UDGh2WeaRDF1bvE74+cpDxgZE/F+uBifKJ9NhiviisJvzyu0vSQucE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udf5U6qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udf5U6qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3186C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754724593;
	bh=wDU5PhKJOLSZGHLLgv0fdWPMXxGKYdxtzkuk4Di9dr4=;
	h=To:Subject:From:Date:From;
	b=udf5U6qScozjvqeq+/P+ozvqg0GtnW2I/Xtw2saLuWSQGubECjxXeWP1T9hmLjQYG
	 lyxFP9jPGPwiX8WKIu8F7CYBd20arui9s4xOB9ooZ/YOVjID0buZwTWQZsiXcBsK8K
	 TwFOq/sfSuVEqn7NrDRXUTX4haAPnTNUE3iTq57ihV3svBUX9hvtLBYQ9atenquHCr
	 bh8qtw2ya3J+8a6eIrRNBLeLVm0ECZSD00tZbLNNzXnFecJG7AKxEVkindphS2T4dq
	 Lnl9kfLccgYqUoyBdJ1tsj4CYWVu9SgI+pzSqgsesni6CX/SjUlIVvW608nL1LDT4y
	 PrmdGKBT1S6fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25AC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472459357.3177.12939039952599724580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b78ba1630578ec1f48eca999341dafb0f8725e9ce59a47cd4a1255d831f62b7
Date: Sat, 09 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754724593
