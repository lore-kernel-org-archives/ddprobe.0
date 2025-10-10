Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AC2239E97
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760092794; cv=none; b=PTmM64eX4sJkviC/HnKrObD/ki7itpNZ3tA8482izXqCbgtAk5r6pPD4HE9wgyFfWnHvXBcHAdmek2yV+C108CgWxFaYdhue0z40n0SzvAQZV/CuJ8Xb0mWhS+bkindN5+nwEhsdwUK5YY7VFBegc2dOwldJ4aGI+8/4EIl8eNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760092794; c=relaxed/simple;
	bh=ZuxsDTJkGYNP6aSS+GvA0xv1FtOcunoI/+hbSIf4VOw=;
	h=To:Subject:From:Message-Id:Date; b=dcg/M7ghKGoK4XthLYG4UWGpWJSgDDds8CuxHTLZIUisANYVwt62BIrkfRcHrkd/c/C0w8JTskVMAH+srSTqcvD+kNh6OgxPkg1m2WCPBTPndf/s10kGOHlTgGeBIFbQeuMfoamKFNcuWKm6fDJfwZ+3WzWddpYoaH/V+3MoIBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFq5g1OJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFq5g1OJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5140C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760092793;
	bh=ZuxsDTJkGYNP6aSS+GvA0xv1FtOcunoI/+hbSIf4VOw=;
	h=To:Subject:From:Date:From;
	b=OFq5g1OJmEMOP5EQA6g8nAI3cziPXTt5+Dx+Gg8Gtqe6RdDNnst+cCjyuamt572rO
	 HTF6hlOoAtzTCOa5TF3vHQ25FiacB3u2fMcnDQe73yZHOI2t+iNTzDokmRF3EJfmdO
	 DP7HrZJDgsIc3EdPVlAloXTIn3f3Xm4TS5BzojzDr9fVQIfyu0FeE3mT4gzdJo7569
	 EOu5sgd4F0CqTmm/3ddM8wbcW4t5UnkM7dPSizMMFcwGRS/oW7nI/11EK8O/v47ax4
	 T+IPcVZI4RM4ob2OIT3BXwzD8VR7h5SmNmgslX25lweEBIRxlA09XpJv1UAEI5MMP+
	 Hfe7TyAJddcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA9CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009279359.6237.4876219562365268565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caa317e9ac2529239cd99bb6bdcd9206e9ff10dd3742a5d3a145d0899c574d4
Date: Fri, 10 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760092793
