Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0913515DA
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789657235; cv=none; b=PFCQ6wrXkiUuaJsaxex/Z7M1lLziuQqAK+lqkvagsyyyu8syoZAPsrzYECLaFeqp837S2Y/171Oe9VHgKwy/K4jTnOO4Uq33rIAw+7P0AXAiz6NMUD3+ktwClsxbpB2Z5j2oPEjvXmFzl+LncgSYNvrHRuTkzJcfi5W2/CS80Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789657235; c=relaxed/simple;
	bh=SMyshPvemy4aWxAbyVU+FyNBNQKL0mAcYhDAvGcQYQg=;
	h=To:Subject:From:Message-Id:Date; b=mu2MRxoyDDRdC27MIjTOcggVxuGHoBE7IcpEWOQIl3y7EQlYJ2L2mvLBLNs4x1CmX6xTDHsFJselPrvAL9ZKc/QgpW/5hRDsvhlMtfmTTQCbSxsvUvBllBE10LcEtJt/jOmJTQz3xHqMlgzp3CIYCCPi1J7ofKIwbV1kioRaG1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoeLIYyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoeLIYyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF1EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789657233;
	bh=SMyshPvemy4aWxAbyVU+FyNBNQKL0mAcYhDAvGcQYQg=;
	h=To:Subject:From:Date:From;
	b=WoeLIYyiU9TVPZmd++iNHR1BeShHh4WrY2vrSUgnROJ8lvZBTYije9gj1gmiM25AI
	 Yhzs1SaASv8oO7U/YkwQUeIxLiXhfmxtAFEj5TW3tybZsMXEsnbiqOBQwj/lKHR34N
	 +KZejD0RoNfViXem7RU1qKj5e35ToP7GdB9PQrCkcDhJAos/MkIyy42YtG+cFPlOlt
	 9G+3rRHdi/G2tQ47FlecaTuRsXM19nAAfMTTXif2ptDMdD5aZAuCQjRmdXMehdKKgT
	 eLEE+SxHj1ws1+tr1b6NYwfdvJm3r5H+7SLl0VHkj2VlGE8YFukJAYiCzitTVKQ/6I
	 B+F0qJwCDZ8gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EE1C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965723373.2726.18420701553933804217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4297a41181bfadd67dc3daad1258b02933f282808fd0997439b75015885f7981
Date: Thu, 17 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789657233
