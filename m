Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632ED3AFD18
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791880234; cv=none; b=BIR7mqPYp2ryMMVNsmHvLCDoU4nPu0I73qcnvAibCcX3RtA5qRS9sXllUnrMjSLNIa/N8o21SxIrCvfJ9PuxJBtRU06eyjLZki836lwwZVXsA14rcu+mPPSNeLVYDniDXt2WI9PJmIX8+kVtpLta3QeKxhhQ4J3342imXvtFQHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791880234; c=relaxed/simple;
	bh=k6eT0pWAPqlZ5xQdp3FJ1fqZf9pN1b73OZjXvwV+cCc=;
	h=To:Subject:From:Message-Id:Date; b=e0mjmX6aS3hHAtz6px/gsUIaUtBLm7jhDltl1qarKEzUGjDaEl3dWfCpSFIMdS49KjIQZ0+KfO0SnlLUQTkgmES008uAKxJaaW+DHQ1DgtwW2f8hvViASFMA8m4LyT85zCubXSJhPT1dx5fl+bVrUDxu+HyFuQiOt4wRHgIJ0U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEdbL19x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEdbL19x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F09C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791880233;
	bh=k6eT0pWAPqlZ5xQdp3FJ1fqZf9pN1b73OZjXvwV+cCc=;
	h=To:Subject:From:Date:From;
	b=iEdbL19xCsbOj46ozyu/PyMpdkoft0PZ0sWSuGvoxNHKaad7+HcbhuxRc3iGd1d7P
	 xfl/CjneJmqBADHwHIVO5q9KsaFmeieDFaQUIpj/wEYnIywWU9DJOg2VWjtCbWqAPT
	 bglF0YbuFPPqXMMR7p5Vc4xw6GWQchdzi2QOIPPD3WEl5iYFYniMtHAH0bopW60w20
	 0/VQ1veubrdn1GLR1rh4zr8D9pQXN4ztHNuh9ol5kenhEJEoENQ33peGbQAgrNNsgr
	 gKIZebam+NASEcLwfL/CRlYYmsmOV63+Nf3XPdetjHyPR8Bl0QlviZOdjBEFUIV803
	 27JsZeCfsWN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB00CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188023369.9322.1473821469550965353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e4529905d355b107bf6d5fcded030eb4ac48481ceccdf1c47417991e22151b
Date: Tue, 13 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791880233
