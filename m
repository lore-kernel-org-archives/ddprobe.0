Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7B96FC5
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734728754; cv=none; b=fH4x906P093cowgFbGENxoPXHG8F4ERX/nwUqQTfrxpe85c01x5naVTveeHpsfXocC7enMsrEE4PjVMpITo3XBjtQXWLDmYU5Ka/jRMNcpJ58a+LzbsfGpatjY8e061HLtH3PqfwXSE9dHN5zekuqLWhiO7YyFclujGdnaPAIiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734728754; c=relaxed/simple;
	bh=mNza8yziessTJ8+J4+e4/d0FcdOLTo6ssHRCG/wu2jM=;
	h=To:Subject:From:Message-Id:Date; b=W9G4tsNevoRcVHjgfLnQr8UdRnV+2G55u4N3wROQ9bCPbAnXjNE2V555SVU0G4EG7+BSTWrhXFkPtU+YWQu3sJ08FVH7Ii02KnERgd2YhCdEKrw6wiS4zjIduBGxFCvjJf37lZA/hDxN1OdQ1xXQ5McGpOKsNAXJaJbXD82/CRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Du9WYPva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Du9WYPva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1E0C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734728753;
	bh=mNza8yziessTJ8+J4+e4/d0FcdOLTo6ssHRCG/wu2jM=;
	h=To:Subject:From:Date:From;
	b=Du9WYPvaHuwRjLbflgbyVMvVaUggfcqqPJhQeIsLAgnB3W7s1RBrFTg5Hg8IAWCc2
	 usRydH2pjNcyFVdpPyZXMMj7AMuS8xINkqW/xYKnphsWK7YBZFZABTsgdyMju4J8ft
	 EreFJ/cZ+b3lSsKK5SQVpUdvl/Fa5FYFHhgqATibLjmC+RmgNgi6nfVQThIpraNY95
	 MUH9urm0clpC8YoOI/Kjks3OM4sV5eNINSlntS41bGDbB2Nx/Hatl8rzSYSAoEZI7L
	 RX3IIKSQS5ylfei/PKAPaJ8NyVj/9uOu8Pb0GAMiBzgUZow3c/mMrCLP+c/1KrG9wW
	 DJ7s/TWUaIjIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4ABE7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472875362.4317.15646485586018728909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013fc6caaf89c70b3b5a350897b93013867522428dec577e26793f4fa1b4393e
Date: Fri, 20 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734728753
