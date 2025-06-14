Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3EA19CCF5
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749870594; cv=none; b=DyY6lDsi/lbgBEj4My4xv7plV8ra44EXgI7E5RZQIcee2qmAlAk2Ei42rQ9Y6gZXpfyWTzeaNwME4RQTcnKsnBj2QYKV9dTnplp41gVGL63SJxZ2y47p/uHfjbRBMVBCwDu/dWVrWPmu4mh7mYw2lPZq6PXjypxcaQcxoBc4E2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749870594; c=relaxed/simple;
	bh=3A8E3jvbjmzQ1kIvCMf05IwZKz//P8mQWY7GQQpvOVU=;
	h=To:Subject:From:Message-Id:Date; b=Nd+0+bx0B+k1KZpShB8CIwl1S3l4LtwbxOpN//WsneSPKKD/3RpBAy78FNHYLiv3TmYARwUVfJU4eOb2OxHtI068QIj55d1OHOgoC7N0WV0f5tDKVO3yDJOgl73Vw1+0JmiDn6iKcpmdLeodsiKnvFu1L7e43JvOSlDktp43iJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWh4ITBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWh4ITBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7052C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749870593;
	bh=3A8E3jvbjmzQ1kIvCMf05IwZKz//P8mQWY7GQQpvOVU=;
	h=To:Subject:From:Date:From;
	b=sWh4ITBg2M7g3ewPpGM71QCRO7GoJerLxmQqIUtwlTEzkOJSmsAjSAtKsWeGORwE2
	 aa98oWrpO6amCD8ui5CVVYvHhfT89MZ7F7IK2KOgFaweyHImyubd9PlO7QGwtmCiBb
	 euJY6JHlS7mnYAk/69B5PJlPWWe0TeUxoZXwyl5LFmZY3CXvF3VTKtpw11agCXZKEl
	 O2yAT/Av8PcYhPsbGWNdady1Lg9GyHRJ2Aw2VTIMFBmVz/TYU2Ruv9ldTjvZt7oODm
	 g+lcRa7IxL6LxnE3Y4tTefsNkCdoezTVW48TCM0L75wqgxBkTmxv+lxDCiuERXrydP
	 HLOkUswP1dYcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91495C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987059357.29058.15378423742915094807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa3df8f416a7769d26d695dbe8c1bdf3673af4b0a19c04263f9bf9b344dd43a
Date: Sat, 14 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749870593
