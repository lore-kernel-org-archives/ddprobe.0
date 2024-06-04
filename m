Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7791B4C6B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717463723; cv=none; b=DJHFgxFo93BgwUGDqxMz/MwhY0IeBtYo3aFnuw7SSQAb+QalhqDFLhsUoROCZXVO8xUwA9ZMPXbcdOERsRUAGhOP4VAPgXrbiJL0KyXbZ8L7Rdnx9gF6yXClyhi8IN1b4KDPKfK2mNPAtJJbKyGZCG5FLEg5j04RKf1vL6GVvV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717463723; c=relaxed/simple;
	bh=yUCGVFkK5llGYjmK8HkaeHEWE5tuiLp/VFhm21+8bKY=;
	h=To:Subject:From:Message-Id:Date; b=GOhS4lsmOxjWO6IBFiIuNxEPBLPwPWixmPN5kYX+6k8BC7WuZKLWm6u+KJRsySDHOOeTswHYcGHI9yXOhi65iwxZyQVZMrZXvdJXZ9fSmBQLWLJOrIi2Zlkc/MaIPvXnhCdc7n+mnlIJVmyCl5DqZio3/+9GuxVLejfmAHbprF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSx0Jsz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSx0Jsz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 042F5C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717463723;
	bh=yUCGVFkK5llGYjmK8HkaeHEWE5tuiLp/VFhm21+8bKY=;
	h=To:Subject:From:Date:From;
	b=gSx0Jsz1uY5VVWwL0j9cu3nZPys4DMH5ia1Ox5hZF3MFQyznii228OtizrcN8nYjT
	 O+WZDeyqewNVtBV9G4AWriGCI8AFr90UXCh/ZxSF+PDvWab18EhdHEkDyoukNzbYs8
	 RRkqD8IFb05SvBtZezf7qgK3kXRcTMc++bOz3JHUkVPlAdL/i9JPc3+jaC+jxm1R0D
	 1Wkl+2Px2+HTK26JL0rjdBGvvwxFaPJVfNe3ISfdu9Aw6X4UFvIji52Li0jPKU0H69
	 Vs4xyxpbBQv4LB1+W1DeULOTqcJu9jlimfXYgp+42St3xBaZU6B3ijAUt7PG9rGRfK
	 /Gm/RxAhuzikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8136C25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746372284.23256.658027759178311539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1d7b193a972215bf1ec7c5741d27964e2b7ef95325eb28ce4d66872e12a8d3
Date: Tue, 04 Jun 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717463722
