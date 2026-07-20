Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DCA23EA94
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784513314; cv=none; b=Oh7DxgsoNqN8iA/GwMoE69CsUBqYtDMDxArTmUwGoz+KVXP1+B0cK+Zzf4NntnzyWgm5oH7uafTuom1s5sIn7NUV3nXwil1kGRP+/jg8NIHFqhxXXcNfLbOVHIMDTuaOCTDDumlcxU/nnDd2r+wIqWwLZz8YA5ZoJv0If82NW+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784513314; c=relaxed/simple;
	bh=ggRrk9qvSWMInn4iokK4DZT4j4ROFr+6YQQkBf+tKWw=;
	h=To:Subject:From:Message-Id:Date; b=eYSLZIz+OvztVveBbVTwOF3tDggYrB2nJlVwPuvYEYBjGLkJdp9nxN2H07yXZNtLWDaFoJKB+o2Sadisnp6j/p+6XVLLRYSI5CwbPJsC0M4EQBWEI2pgRQTDAUis/QuMcYWdZWI5WGqWJ+X2G+4hBAf5gqb0zM4KMT9PIUtADlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYVZNUdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYVZNUdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF74C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784513313;
	bh=ggRrk9qvSWMInn4iokK4DZT4j4ROFr+6YQQkBf+tKWw=;
	h=To:Subject:From:Date:From;
	b=sYVZNUdKg3Vspj0l8XxBS1radOe4J9IfA6EjzJxtWLDxKe7+NzVePCzbnAUFpmuov
	 ttIh43/UUKfhnaTh8+WJ5GybrUcx6cVQD6tmMCs46R9UVRmKkl1H/vUiTeG1aYtaeH
	 GAmyR8/fhWAqniMlgmnzVuplMu4pVuF9MTm3p2o5j5eIgdxcey84nP26n5p8Vz7zyo
	 kUAew5cxFUPAonkRAGQcOtNYRqVCiSYY959eq0ioFs2aPahGpz0EOpEZEJ8F7iSb5x
	 we4mqeHzbgVumRZH4SA+oRPYjTKOXZffkhQhgw7/VSuxDjLhwsitYjzwN5HqOnjY+R
	 SD8g77HPg0pog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA627C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451331369.5136.8911886735975171285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a8451c6873cbc7cc317642d54207668d627f2a1e4d469b9eb4b3dc7dac62e0
Date: Mon, 20 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784513313
