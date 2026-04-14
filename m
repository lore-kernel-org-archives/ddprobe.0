Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AB522CBE6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776193054; cv=none; b=ZxSzN5eIROck/sNMEDXI+n3h+5TRNEg5mSMEW/VHZxNBLdDL4aPy0Xb80vgH8SIySyF8tTAc/dtm0/cs2oIaUJ10XvANOlwtRSaZpcTjxoHShX4AUUCYGWZeQXhsIGpfj962RbmEGD4uXk02EK4Vlhas9JLdkkYBIE8R67bE1ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776193054; c=relaxed/simple;
	bh=E3wb4tFj7Lo5pqvfBJR1LstMJMBAIObSSOqIL4RqN44=;
	h=To:Subject:From:Message-Id:Date; b=Nssbd97aoOLQOxLePGt/Ez7vkGTRlhUFmfCl9Pu4Uy8ZQhT6dnLEWP8jd+WtO+/ZkyAjQCctlIhNWRPs7v8XB0bNntX36W32ioo1MRLrvlr/IjTScnv1+oIWvwfvZoZw/7nfHeURlS21I5kUYMGVjNTwkp2ACAHAv1R+aApbnK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd3uvUth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd3uvUth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C0EC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776193053;
	bh=E3wb4tFj7Lo5pqvfBJR1LstMJMBAIObSSOqIL4RqN44=;
	h=To:Subject:From:Date:From;
	b=rd3uvUthgOI7+BT6qXr5fDJyGTCCW6smlhuhPQKaNJmQ+AgCH6eycZXoZkVBAL4qk
	 HjPrTzXgVyCZ5UGqApqtqrhcSBLZQDq062BbanEf25uJFllgRoVK3tQb18YMtWBZRM
	 xYExRdZif9OvUGacAyFJIJAtaLuq35Gw+x3b6KvDX43WrD8cIOcqvZJzAJF0hwCIC3
	 ZBU4ahB0ufOio5F/OKdfQh2wUlj0GlIFxT1AogT2s9PQ9A1jE01kewpZuwgzClfQnc
	 rZHxp9tYDC4izb9MqWxJeG1/hnhWndeE7oDSPgWPx7MCgIp0O4Eo6HBWwamlXvViqd
	 6vPVgkbkSYohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA21BF9D0ED
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619305368.12815.3409604602092192252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0957dd9eba3ae34e64d19e219bf9fbc0151ecdcd45b1cd9ec9598f05e84c1e
Date: Tue, 14 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776193053
