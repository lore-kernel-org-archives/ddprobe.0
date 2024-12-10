Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD28224AEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733861154; cv=none; b=f80JrdYPedS3ZZ29x7m1IP3QY4uMmINCSTPj4gX/UvcNJcCGNjLXKNFZFVboyVDv+33ZNLeFr9N9FN1+IHAp3UROPm/iZVt37exqgXPiztml+Ifrj77Qf32KxIq4W2K9WZzeA9UnEiVa+8Yjr/+OSopQWiTcswjJgugbLnrnd+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733861154; c=relaxed/simple;
	bh=6OhmFOAoTUDBppVi+X5p7h/SHxr3qqVGo3OzcBf8uzU=;
	h=To:Subject:From:Message-Id:Date; b=h7KlMP0yaBgzdWPS25CeRstGO+SPVHa7bbFM4XZ43lOMXs69Xu7+cDTXHn9ax7RGukThQzAAuuIE2/zBAUXcEmTGRa+caay+NwlzmnyI/+hFbqHZFISptD/cz0XWsIGM/ROVbK2EPRzjvuLe+BB8QzJaILir+xmv+GRyYJ1Egec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psxJQo1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psxJQo1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75D0C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733861153;
	bh=6OhmFOAoTUDBppVi+X5p7h/SHxr3qqVGo3OzcBf8uzU=;
	h=To:Subject:From:Date:From;
	b=psxJQo1sOIIymx4z0sn4al38kvZ/Drl07uTlDKnP6PZkWZEehwJINm869ArhguLBa
	 eijXFVgLbQPl+Q+BwPVhl4lR3zlEy/ZHjOrlPNKnZnLQ7uI7/CGifwu1BFdqspFmQ/
	 U3TPAxx4TnqLl+5ahgr3JzX9kCcfiFRejI3edxud+1ClTaNV9sMiRaxjz52cWEcO/0
	 12PveHB2DlZB0/uxKUiaVNTvJbxfHBQR7YpFlSueE0Kipum6TloBtnovtR9ylVdPNL
	 XNc0//nZJIPdRcMyZSBPRa1Uxv8SrpZ+Nbk95JUgCC81KbUSPqYaQFs3Fx8rn2AOMa
	 QX3BpSDt5LAUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42AFE77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386115366.19718.11986957960527807434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622a050f0ad4c67743fcd5f9a151940775b939a1d8a9c758bead54c51b557535
Date: Tue, 10 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733861153
