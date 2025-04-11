Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C9C1EE00C
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744350594; cv=none; b=kmnlv/d+lCtoR9MZxOhm0M/SR8p7YJzogub/XGEcRJE05eCdGpsQ4i/gcF0XLBh5wXOqr6+5FvUTYrlSXWVck3/EZPTkLQQCTzcqDPU+ACFuAJnTi1wtQ2s3e9fM9bExIs2MT4w0AIXjtK/nKdEAapHo9scYb/FsJlp2RzTSWww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744350594; c=relaxed/simple;
	bh=hV2OPHiG/dnfpGxG3zg/NNMwWNmnPZ+godM7UR6tUG0=;
	h=To:Subject:From:Message-Id:Date; b=R+SX2qfdcfp9zGSZWJvf7ZJ1ZiGw/+X4xNQvy2siU29LhKdWLSdR7QJKxJIQWEpupPe7eiFhCh8UkSD3Fbrse8ftQOiE2HsWNO7pdSqMWH+xQwx1zGLeQ1ULrqGTcwW2RZ5i9phkWoq8WfUt5IZRbrzAeq6kD81XZGJbc9bbLIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw+V1y6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw+V1y6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD830C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744350593;
	bh=hV2OPHiG/dnfpGxG3zg/NNMwWNmnPZ+godM7UR6tUG0=;
	h=To:Subject:From:Date:From;
	b=Iw+V1y6/cUKTMtAXiu2+xc5HXgW8Y/oNPIxXl5l+iIh1Cq18Bw0RR0TOp8+HTePTt
	 IgD9NfuTpv6bcS4SKwO6WZGc18Li+Cl6HujB8yefTU8lo9WUnb3sSoxzpbGhu3YxVq
	 fhUxZ/i3xkgYWKNMnJdQxOjvz7xXNtItdzqJaPlyXyRd0fCQy4uVnrVfAqqAwOp+cw
	 mKf9wwXIcnEfLNvRd1NxSQB5TQ7hNeSK4C/arXESoQxqSNHSPedaqf9fUN/9IYEav+
	 JgNLNdBpy/DPPgcJzXuR2tIRAbPpqbbLSm6qeVjHofjDW18BalD8UUpBz9lwwmVUmP
	 sWgDc60ViCB5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B90BC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435059362.28528.15030793094869346870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7402c2e33ec198bddc3577ec3d86d414360deb3178eb73c9164ce67d6186396
Date: Fri, 11 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744350593
