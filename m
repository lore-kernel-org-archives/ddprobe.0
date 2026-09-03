Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D49133F5B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788425434; cv=none; b=PfXbAkVdkS28EsQ6J2kv6AhrJlBeVNViymwLplsTb74F6+E/F3joGNhNRtu/4pjkTqbCKiQLW/Driv8zLLRQVf32AlFzxtjHofTNWLfx5uiL5vLDQ9gG3Av1HAH4BUeql/rwVMm0lb9/5q3hzf6ib+Kmqi7MIcNldG2c69OsjiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788425434; c=relaxed/simple;
	bh=IITA2Td4+e4jazr52T12XRF0K/4+o0TKTgnuEZ6HXgI=;
	h=To:Subject:From:Message-Id:Date; b=XPmyUGwZ8MSYs2sIPTTbV8cI/8NoOYn1FBlWU7iHExZCQs8H2KWwHysKLrtTuWA4gHgrKDEAHDdMJ9Vsy/8+4PiKHxWfh6MKxqgacl6/ba/oz0HIOPs0ENr1LLHwBmdSVDcI4xaMdJV+pJQ9XLDQLDsZPdCn1vCKx5Z+bzRInn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSAs+ObQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSAs+ObQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9094C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788425433;
	bh=IITA2Td4+e4jazr52T12XRF0K/4+o0TKTgnuEZ6HXgI=;
	h=To:Subject:From:Date:From;
	b=gSAs+ObQWGN4zn0aXB+B8ZJ9tDHgNI5QgFnXxgn62ndhDL/v9VfIQVGqyhaXL8IVY
	 SDerZiF/mc5emueaDnShkuJAjgmhVi4qRQgTsgQ5Jwoa5S+HEAFU1hMG+zax84XYpo
	 el3A3BMnSvCh7gG1zNpGvUel6T17NI1PWTa0ks9bLbqWvlwDA1tRdyURDQkoArN767
	 T3Yz+Thrj3ss4gErZ7xislXN74lRWsBnqZMDXKC8vjxJskFENsKvSTQgvTDL9KMr/J
	 NW4urqEU/AzqcdI9LNbYESR3gsUdJJgS7tMzP6ZrMJG7gFt0cinKrWfzo9ktLyoFMv
	 TPClZxqTE+C9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15FFC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842543371.14960.4334306922075466776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0756657ca8bf7f91ade211896bed619840282ae5c075884ed14a6f8fded0ce23
Date: Thu, 03 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788425433
