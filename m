Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8913D56D
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714389143; cv=none; b=DK5Hl2QIV3ml7oEWmq0zklEgUGvbtGWloXBiLD0spyqeQ4MVq7qNdfFaPdbD75tbzMtQoXQXU+C6G6Wo9oGUR6+QoJHa9recdxC8OxjCMUMJKW8yUSWYpsAgHFEXv/XKU2pldyEPeVRLQ94euvs2WbHOG3ZAJzsDpSOS7ZU/IiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714389143; c=relaxed/simple;
	bh=buHfPGQ+/F0E+UyoGoPUGh0AuFchuYIKTdQMh9KkaSc=;
	h=To:Subject:From:Message-Id:Date; b=aJmvWtpSJeWUX5WIRsl2j4XaDNPJxnTKuBRPWMYt8gq1RV4wONbAWzeTnjpwJANwifYEFhAG63Y4vpK8+S3wYl8iBhM7nVRjxjvXzdS/ya2AjVQILEUu9n4uTZcbs5t0DKaQAP7ewFeN1KKNl/2axAitBgLlf0oQeUE42bGaVmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzmGCfZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzmGCfZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD94AC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714389142;
	bh=buHfPGQ+/F0E+UyoGoPUGh0AuFchuYIKTdQMh9KkaSc=;
	h=To:Subject:From:Date:From;
	b=VzmGCfZoSYeDOsA9NVQNn7rB+c5NRA7+P0QXmR9a7ZdR7GitjAyPJcVZQsr9nk17u
	 R7wfMCo6PkC/cthwkHOspAUWZP6XgsnHS5JHUx07/eM2YDHJn0AAqM2XrtZSi1vMjF
	 PPdO/El/f1+nw3yuHl3KHO/bSGfmqOa8jnnARo0A0JnbxaT1A2qZRZo0G90spSgjot
	 U6EzMT8UaIdJQRvCF+y5aq33Si98NigWPRmIcfN1Xc7T6kBYsAjEeuF6YBMguOdV4p
	 QoqQhePWAEzp2jiAhv79XBwM/zKwLQG/v6Mc0o/CYWnotAV4zS5lIL7OjjShAI0YNI
	 b9PTNvzNhFpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD58C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438914277.28964.8428531780512728386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c65c0187ffdc19f1f70de598a2cc99515eb5eaa314edf23ce3831e25e583b3
Date: Mon, 29 Apr 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714389142
