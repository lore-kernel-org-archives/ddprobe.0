Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D353AD4B
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759988994; cv=none; b=qteLA/qnFZY83dngaf1gTCLa1PS54SwEjBpKpHpAdR/rQ83CeAJhDQ2utQFD1RoJ9JYjizKZMMWrLzl5Hg9il0mtyAQGhiu+2GgRUw4Pm+1PnVsL7wYlt1qGWWMLueTCZ8N0gDjdyXb2w04VhM3byKpaywSjKBaDtrTzWJKGLJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759988994; c=relaxed/simple;
	bh=20IVoYHWiUSg+TOxoBz0255qRoCWPPVLitkjvoopTA0=;
	h=To:Subject:From:Message-Id:Date; b=sDz2JFIsyz57WHiAuUrjKqNiv1hSfV66w8Vm22cgVYU4vr0SrC6RJSpvXurLCkNh4cKSkvK8IrJFqMtKgbnjrbiQxYnR43gY3Eaf2YjMUvBSNVL8ISsks7IzsPfXHddzvi9w1bRQQTm9p7t4kltoaF0oOJIETPpqQEx4z/AVu6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoP0pW1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoP0pW1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A777EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759988993;
	bh=20IVoYHWiUSg+TOxoBz0255qRoCWPPVLitkjvoopTA0=;
	h=To:Subject:From:Date:From;
	b=QoP0pW1mbKCFwMOp/M0+IlA4XDyAfO7JTHh9wPHsxPnaTBTw/9p2VPxNLbuoi9HhL
	 DKMgTFk7vzyG3vi5izYfpGSPZqPo3OfrIaatH3SOLqBSePn6FnOqxOC04kA1keaUpX
	 +98GwUko5EPkvE+u3RnSV2PRlOwTEt7JMXiEeggGxEfwK9kSVkBQqC9NI2xNdKO5Yi
	 GW8aVE8YMbgAFq2k6zIZ21ACQxROVw5jKMd+qbUOxVcFdJvM+p6u4BqwQ4gOrQ+SZg
	 AGEDShFFxd/nrHF1stvTNKqRBDZA6U6iqEc1q61cr6waxELogmyqneXGwV6iu2lSzN
	 5GeYAEFi+xXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95548CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998899358.13366.16586668033542386207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1e7337ca7b96e9fa563b0edf0d26508e35b3c4a1299eb6722bb2e99f47f083
Date: Thu, 09 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759988993
