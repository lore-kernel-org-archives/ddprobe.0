Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DE63290C5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792172434; cv=none; b=SaIeJ8hzkwZ37ALF/f+zOlosIgY7PFRgddVtHB6NyIrlnXlwwWleKufQqYTi97j+XkoWvu6PTIi8xeqNk9opRbqovptiT6WvBRlndgf41M5rKCc/2qXKMMxWNX9+gC3AweuSB7gVWtXmfuL0reqoq0rDFFtcoZLT2tetOynnwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792172434; c=relaxed/simple;
	bh=6E6R7SclounlCB7Utq9eQYa1ggs5qTauD/d2wEf5Agg=;
	h=To:Subject:From:Message-Id:Date; b=ui2S+sZ4JJuRCt8VZRltRcbakkX38f+gopMibFneu8xiQ5P2wxPJcUPgn0e5YP5q/0o1bYK8U4lhy6eEve1aJurIBYkxI2DHDgGIv8SA1MXcFvslCyhkMmWB5i45Nm21j6X3X95F/ZgYq4sf2Bjnd+irDod2p7sQ1eQCWMy74OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srTkiyE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srTkiyE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D38C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792172433;
	bh=6E6R7SclounlCB7Utq9eQYa1ggs5qTauD/d2wEf5Agg=;
	h=To:Subject:From:Date:From;
	b=srTkiyE7cmQgLkQ+ThChLArOEE3xAQLk6rgVOmFu2o76GYTJiINWPYeREyywMZmOy
	 LxT7XhQec5A1ymNnNN6rXr66zwwKLZyqJ6GrKskTSOjNxehy6m0dcch8UHq6vTMbYi
	 BJTV15EkT82IyeMrmOF2lFmC3g2RE35SLZk+w0w10PCqEELjMPhF6IloJ5VZ1jOvw0
	 KDl6l30PqvKBERzerA5Amn5rIZrK4ZaO92/PfuSEP4MurhifGa0uVGLe+sKhGz+jQ+
	 rrZ2GoxNXh7wJl1pq1lwIH88ucJA9RAzplTy1vngpM9B1ybKQE2hc8Xc4YEh+j3Yw/
	 DOzppHk1VIprA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B208FCCF2C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217243371.29561.9060108838215363040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8659305c3f6b54cc9da1eb1147ec1261ac500f15a94a222593b8d1f97de4d5
Date: Fri, 16 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792172433
