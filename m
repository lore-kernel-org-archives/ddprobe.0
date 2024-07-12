Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648761DFE3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720800563; cv=none; b=fVeoJlz74HzDOT4VAKhoKX2Lb0QtpYjzqhJsycVt48p3yQiYsPb2BnXU/f9BZ7tQVe9gKiaH5kusAIT3wZYTBP+K2vajJzvioOS4TnCUteH+8xdyA9TPkY8dGeC2UbjWV+qtfPX6CD8LzVUEZw4mAVZm0HqljcuDfsm3gzihCYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720800563; c=relaxed/simple;
	bh=yPO8FjSP2gRH7yYBMNUZRcXA6KwpqXAn+aNsgYLQtUI=;
	h=To:Subject:From:Message-Id:Date; b=bDhwkCSMIoTFh5cxVL7MAd8/FIZxV87KHt8MbqgxKbPqvqtTTBNjHjBg5Wt2hkVk0ZIHgEXoq6sKURuFX0QBIRPSsjxQDEF6YTvSDx89EyCk2J9l2ByRSKiJwSMvZiht8a9lMH+iykbxMktxJFrGhhYbf+WpLKo04qm3sdKmHNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVaC0urZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVaC0urZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC077C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720800562;
	bh=yPO8FjSP2gRH7yYBMNUZRcXA6KwpqXAn+aNsgYLQtUI=;
	h=To:Subject:From:Date:From;
	b=fVaC0urZ54K7SP9c+FX6JANUeZXbKb8g/2csfzNvNDkBpWbutdXtO1U/0E3ZKhi/9
	 SVVss8Kz2LfyrVLCeNhvJCjHhiO5ly8/l4zLQ00a5JH3c6gyP3M5hDwllWKVMfLBYk
	 A35LiyW6rFhe0yNbUC4RhcnX3sdPuNzrdvk8Fs3BptW8wSuxriLVxIYSuyOiI1KZWL
	 xEra0PZI1JKxVDkiIM5NRRH/FbF21fXpaw052b8iitjT0DbwBZGh/OKbxHGVvFyN5+
	 Mpx4OJmFYUMQn3Df92Iwm5P7z+DKCVAJRGRi8AAz555o6seOOJ9xK/SgtvoxXoEcOf
	 SpCkYBBkz4fhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CEFC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080056281.10349.9179718875629411216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3a015d72c5b4a574682c3432f6d47cc350e399a9c56fe2f97680ee3d135854
Date: Fri, 12 Jul 2024 16:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720800562
