Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CD048BD25
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780514674; cv=none; b=HBtRnTcCNfs+U3A5dd7NpiS+QU7EemAScSdoeBhDApti7bza90ba3VnxndUUiUu54g703Rq3snQg5YT4b5imASVV/4wLaIF/Gf2SVf1Ujp6/J7kUWcEwxPB+BZOdIYf4gYu4+WJmQe2eli95pY5aPpdq5lVTLioilo+i5W4xbSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780514674; c=relaxed/simple;
	bh=AjdwoIsoqHzTOCdYCRZ0vOXeIkcBTTONwxPXSF+y+zA=;
	h=To:Subject:From:Message-Id:Date; b=jtuTskXZtBBnHGqb8dPFlf2xO9OTnZOm8SdNZu3CdwxfQTwxwADb7HYLLN8j0axf+RDPVl63aMNllJD6847s9GJnK6WDuxA/FkwOE5toi3r9oKmFb/98jFNopt0Upt/ptX1ZulzrcOscVW1ZSyCdgto57cpZnrFUH7nISEKw9PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFVusfuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFVusfuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA690C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780514673;
	bh=AjdwoIsoqHzTOCdYCRZ0vOXeIkcBTTONwxPXSF+y+zA=;
	h=To:Subject:From:Date:From;
	b=CFVusfuTcajWUVieiOTSpJX2lw3azk74f4iJCDJ24XXIJBx4R1a6KRAQ9RUcdCVFw
	 MimLVF2nQJyvMzfWLZRb4tcFkkHX2WYQanP4sJhYDRSNHesao7rlx9RJRRcttuKBs7
	 S3Li0dZMiNT9F5g4fSFSFT22rl2P8nsC01hSkAjw9nBQ1z7ymQ6farpEdJW3HOrFKu
	 AaF+OCV9L5PCUjAadnXGGvfddfWflnVqR/edOYDwXzDQ4O7pbL/U5BJpng8sXtvM2P
	 GtLqdVEymSusfkem2oC656BKOH2/nk+bsEiAU1YZyPqfphwyjq3TxjrpKbVXNa9E7H
	 WvSe3B0O3hQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF92BCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051467370.30620.17791404249115474842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12f2b15111d035d986bafe0bfac80d6444739590bec98ebb2320c9dad74a6c2
Date: Wed, 03 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780514673
