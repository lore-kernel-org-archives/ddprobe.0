Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2B8200CD
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720822163; cv=none; b=cW+xf37TLu9n+GDQ7At7jvC0iQ2a6hhyKR32UsexpNohWhlTlbtfUOrLjLblhUj+2S6KO85SQmeFsp10AGjRNibsbk6uy6kJAqxWosLbDVwIgHl5h2RaTRXWReHw6SlO1QJjalt+vV4wChhirmDJs35SwCcX5xoXmEgmLRG2ctg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720822163; c=relaxed/simple;
	bh=NBGufVcuwJEPLx0cgkdsMylQBQDAk0sfqN4FjRBQ4MI=;
	h=To:Subject:From:Message-Id:Date; b=Ktadplp9rL3GOJw9fRlh+6wC0rHgnbOL2HQFW+oFa8lQC+8vN+HhCgVTg2jkT3a0e+rjb/8GMFLEQ3wA/VO4zeWHJD0IG4V3EzYIFgNV8w4jtPgX3NVh4ZYrnqiEjdt0cqeJI62jFxY7DAicIYHf2B6OyS7bRkg784KgpK00arQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHBRpseG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHBRpseG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF017C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720822162;
	bh=NBGufVcuwJEPLx0cgkdsMylQBQDAk0sfqN4FjRBQ4MI=;
	h=To:Subject:From:Date:From;
	b=EHBRpseGy7VsHughTHm38/Whs0f7pIZklOJ3SMDoEs7GVX88HA3xuro1vm0SdgYoG
	 GRJUPqm+RZHBNZPqKwZsF92EMyyXGvN7b5JJ9ePG3eYvGEX6d8qYrobzZ+6aNQEgQc
	 /9NMi9wRZs4Ixh64voS4EG/ETUKFvxdnboE11fw42nbaWofO1XsT7CsOIJngXGHJK0
	 QRQFwEMmr8oQ9XvJ4L+5ebhMmlLEbDxsSSjFQqD14fq3I9YPOqe+RBvq+OQQViJJe6
	 YqHWuZsEVbe+2tDyGKRRxudYVFz+0LTAkwim6sN+EwVC/UayHHbft30XVmu/tHX71h
	 AbNkdRSD0GBmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51ABC3DA4B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082216279.29330.7526004435985538783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf7f89939b29e4611439979128ebb4f682e2775e81799890a241ffbb86026c
Date: Fri, 12 Jul 2024 22:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720822162
