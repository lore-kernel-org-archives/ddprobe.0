Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C26278146
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751376593; cv=none; b=d5J5iS4zJNq/9ytSHTf/pELCKRqjDABDDkxmp/Qigqo/wFJSPjrxb74dlIGKEUQ9SEKRHRDHRbK4XvaHWWsPGG3phiRCBFKgegVTWH2D8a2NxEWe0E6Iw2Lo/6ywIDiOAQVIPNs7gd4tkTLN6mYW3FQGi0BDOwV3Tb4YJPvKn04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751376593; c=relaxed/simple;
	bh=mzfzh7MghX5i83JrXmEcCe8ELJCwpDTBKkeJ/Qw8Tpg=;
	h=To:Subject:From:Message-Id:Date; b=dLfV+bdRxcJWImlJnYyLq6LTBTGgQdnr5uuQlRMn0v9vEMQgBq1+ZzDuhaStKyzA8oihN9rkzsjkj2M+KzvwHM8+iDdmoJSKeN1AcvC12DeYRHWn383ltzZhJH3hG2B9cfU+IRO669Qyrlg6VO4dBANKLo04rgzRTl2ke1Whjss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArbxqmY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArbxqmY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751376593;
	bh=mzfzh7MghX5i83JrXmEcCe8ELJCwpDTBKkeJ/Qw8Tpg=;
	h=To:Subject:From:Date:From;
	b=ArbxqmY2GT5qDIFJYUucwipeKiv1M7SFBlrXtSlyo1YZNddmkfITrjmKR55SLQ4BA
	 Tqv1K6Jt63nfDa8TFwDWFdZuKfj0m8l7MReyV8DRV7hWZUeS8pJOrgcg2fiWKNfVTm
	 3BmJe/Hw9vcxe98YUnC9coEGaFcb7cEQb7CB0VHFNvFKAysMv9rUFHnWIdVddwRXtc
	 nIYYDc2X/wUVbK5phPegO2pj48PwDojVdTQu7KDK2F+Zvsnj1Q4cjMJaiWovsPtDMA
	 zvm6oHotRwRmTNEUscMYACy5gD6McFNFFYk0QfxXvwcXJ8Ljppy+APbm/indbQCLu7
	 VTtj/6bgsh/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95705C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137659357.446.1452005900223467367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d97ea20ca81809bd8e2eca0b369e77ef07b2af39a213340cf2f6d716243d69d
Date: Tue, 01 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751376593
