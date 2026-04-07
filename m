Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D12C3C465
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775526934; cv=none; b=R40CUW2jZb4V+wsFPdqruG2urwxzjc6XN71FF/FfmRJkwJdODsphaKIHaHK8eHM+TTjbBwrbYP9UN9aeCQ06tKFvpYEzpPqSxUrip6Rlq8R48QubGbLdLYSbeggZx0XUBwCBfQOuPp+Uvk7cIiV0gj6LUMTcw7GUyOni/Kk4m7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775526934; c=relaxed/simple;
	bh=PJX3J6PoqvzVQMm03Y51kUgjOIfOgWvr2siUqCQrElE=;
	h=To:Subject:From:Message-Id:Date; b=Qg/B/lfGhO16aOTK4oNXgZ5/+F9FvA76zYEgW+NlVH6hBn9XmaT2060I1VGJntZqXa8GDuP1CsYnZo2BgVUP58GlvtBrxe9CmJoG3f86dfsHxv9iLEC/AfUo3/EznTPFx/I6bEtdoq0o+4+O9lt/d3jKIM2GTo5tHUddRxCml7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8reAJIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8reAJIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4D7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775526933;
	bh=PJX3J6PoqvzVQMm03Y51kUgjOIfOgWvr2siUqCQrElE=;
	h=To:Subject:From:Date:From;
	b=A8reAJIliXbBcL+WLdKesiFzoJ8092b2ioOIZtydqZgyJZvkgS6kNzhtWiJv38LEp
	 9feC/ViDf4j2ctM6ZHDX9GOR6JAgadwKHJS+CNr9rVO1AzNfGOQmes9lxJ66iohswB
	 JV+KMbstdYQsLTDGXFARJTVDfyl074GFdr2U5shtriPLN2MlS9RzTxp8bV/PpFTnsC
	 8sKaIoiUYSdzdiYKZ5mkcMNL//bSzoTQEShWX81O+6cYqJVQG77L8VTg0rAB216rYv
	 +/T6yd3mJ9qt3QvSTwbQ64EeibPBH8WpW5J9AOVSBh+61ZrITJoguItfr1ceQH2F7V
	 nF3Em4VGqX4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC45FB5181
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552693369.22619.15943574438517137557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd5d9db1459900ab8ae8a671e8caffa65c0e6cfbc7357abcf56e9547007b4d7
Date: Tue, 07 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775526933
