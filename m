Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49349659
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765919634; cv=none; b=uszAI3HD5v4q8fBt33+6+FwnCZ5tn7ElFVZI4ydcQ3p9s7Qz4II245hcH7Ffb8+Pfvo+SOA0LsleUdudoxvHZxY6otrLdHZAELAakQAmUhhCKvPacbhpt8IyiTc3sagMaM47hZl/uhprn05cwL+bNvRZ/fwQd1mtBCp9JweegWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765919634; c=relaxed/simple;
	bh=YdG3EGByON5ouz7FOgxyIiApZs2luzJl7q1xe7ngCbg=;
	h=To:Subject:From:Message-Id:Date; b=N7RaxOQxHx9kn5FQY+dhNkVFaOhNMRgaUovLkbtx4S9KLQKH1dAos1MupQUREuTbYyinRSAXt0V3CBe4hVddTjrXuZu7MeyaJOLVqDp9fkCjV3V0Iy3EfGo+eZDzZzU1kfmTW7W2PbbjLSMQdpeQHw4fToSrW7PMa5sdeTm67Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bql8FzF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bql8FzF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97EDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765919633;
	bh=YdG3EGByON5ouz7FOgxyIiApZs2luzJl7q1xe7ngCbg=;
	h=To:Subject:From:Date:From;
	b=Bql8FzF+uGXUQyPeSanFM0MWB4+F0DilQ4DGdG8M8cfLr1xRjTHIryygk9e8qlWGQ
	 3DwdRd7KRMTJMQTp4a8/v/g3Qz0oNOR4wfxI2hGOeD67pLySFhTNJbMLE94+uEIaKz
	 L+jIY57Vvd41Kv+EUfpcCGN8ZZQbsIfZmISvbggkIIt9WZ871GVDIGzNiKMpDD0vs4
	 azRWDcbMmXddvzJqmNU5naaqiSnYhDmXylYYUC/SFnvVbBYki814F+bbX1jlQMLTfI
	 tPiKzjuviDfaun4rRknROj/adC72gjVlJZxyC49uPSRUNVxMIHaLisuTe8dESDdF4E
	 GNGvBfyVr1Arw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B9D5E374
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591963360.19653.12734226017212736318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a67f354f43d27898702bd7e734909fb881a2cebb600def941c63dbb7d138e4
Date: Tue, 16 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765919633
