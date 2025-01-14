Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5EC1E535
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736824554; cv=none; b=EyWCKm6FoG2ZpkGEG+DCoz+b9i7f1jRMwgwKCsJDOq7MitWM0rRleUjd+us1PebX0DSSX6hcHk/RRd+jxNJrqyda9gRHc+n0BVDjM/59Bn9X8Xyf0I/ynIEqsHPiKpJs3Afv+a6VW/jvJSmaK6F3u5klrcNNJsKRNXApe+E9XcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736824554; c=relaxed/simple;
	bh=LMrTqaePBJr7mOnLXBS7zXKNYBiGoNLJimINnp3TxQ8=;
	h=To:Subject:From:Message-Id:Date; b=WqrO7j2pzslY0usvqgFw1fShTARerZOVq6DuqQtRj4fmWK8Z/fxO/l7PuoD9/TPctJ+YOZSorzGYWOvxK7Zpswxd5T+f7w0Vv4rtO9yzEXRpBjlyiVnoEaFxyvSkJXrE+JdWTKYDj/dRv9jr3dnwGR/tsV0fstm7/IjbUZm2n9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjbsn4CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjbsn4CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A93C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736824553;
	bh=LMrTqaePBJr7mOnLXBS7zXKNYBiGoNLJimINnp3TxQ8=;
	h=To:Subject:From:Date:From;
	b=fjbsn4CB2QJIT45Bnn1zvEvKRaWMTOQXmElMIqp+t+rdp6EtwuvvlYlsEWXZPXV09
	 xPPH1rZIZdhfOFHaYMs2EBY7IDO24pMoRLuW54loY0ndfLnkHZ9LI6fRF7VGaGLAmR
	 cHaOZbP9uLq4U6wqxYCAkK+tFu7jBHUvZ7y9RRGKNxWpmdttLXrgdtDHQu9F0MeWEl
	 yBpxiRyqULRC54LBUiNYlms+jyLWFNRZXecyZ8TdBxr9iHVhuDEeXM2zGjWcUwcMqr
	 XXQaCEILDh48BUqJElwDvhLp/oYQMozvDntrAALafK5spiv0NpLQQqIAVriaSavP1F
	 gZwYR5YQQ8Ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DBC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682455358.4616.7843876899429871465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b677a1c35da0dcd0ea3c3ca14419497ea97ceea6bbf6db011ec8ff74c006101
Date: Tue, 14 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736824553
