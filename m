Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F29734AB1D
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782830314; cv=none; b=pbHvD0/STYakXF9z2aEEr5NN6/z2Xqm0/XQS2GtkS1vLWayfeyRLIZ7RkAyGMvVRJVHURhex+bmwQ2G5rV/5Qn57JvzyZCrYHwAwWpF3j4NId32c/lyum1XsSsq5dOL7iQgVbwoOrwk6wUWNfn/Tq+A5x4zzBimkxHajyvMPMi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782830314; c=relaxed/simple;
	bh=hjBD4AJ6o7j3MDnvMiu/J5GISbs/hA6qHy61x4tXEEQ=;
	h=To:Subject:From:Message-Id:Date; b=W3BoXZ9pREfTDLdJL1RdnFhSo7Rbs9pxdWa1fkQGx4t7/r3aD6uT2j2BguoRMF1K54Rk8pZXV8HOyAcLuzoA0fBqQq4FbygaS58ajti8dPk6dlOthr0sCB24s4GgVgONRw99NpwPXcIE3/DTeh6A5xZr/ciaFwHh6+PHMOWSWhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOEuQnvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOEuQnvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CD0C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782830313;
	bh=hjBD4AJ6o7j3MDnvMiu/J5GISbs/hA6qHy61x4tXEEQ=;
	h=To:Subject:From:Date:From;
	b=uOEuQnvjd/YtfoV4Zfp/KbONEb2s1YQyDNJ/pN8Z3R/fqGrWhw/qW2VUF+LKjBM0i
	 Ae/yJxPAqZyQCeLra50gtPKEiP40pHjE8DxrFY9WI+uKHIKqyDiPQiQMMz9+P01cu1
	 unwgriPvL/x3q3THDhW4YqDIqid4v1E9VFDLtolJWs7V8eDOcZ0yPq0Xi+69D+QWwo
	 hBxfSk24Q8fkDWUE4u2A80bPNSwlFSUEcO2zjIGzwVTf6kP8c5amSWeT3lpezNY/kC
	 uP60ENPHKYTjjp7REwGBdzDC2lGNTIiFY1sECVzPIbGcOpT0WoBi27p9Clketfb8jw
	 d4SKtevLvXCWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD17EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283031368.29278.5245335408502772235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430724afe82a7e03e8b17b22d262515292a41c1acf997998d935f83134e9372a
Date: Tue, 30 Jun 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782830313
