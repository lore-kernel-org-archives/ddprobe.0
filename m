Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB791DD0D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743790794; cv=none; b=cENNVyLRvCUin/yvIZft3JjrWr1bs8thX2aSHQPDusvoToDdYfhm5vp0novfnfB+qgAjqv5oQAIqI1n6qdOK4AWm6ZzwZCp73DYTParhHOmD+u9ANtAVKdPRUK4iPP3ElkRufNU84igcSy/P3WLbFgQsnlETpq7Dpf8cyYx2h70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743790794; c=relaxed/simple;
	bh=lrzmYrt0WAGETq1LyD2clPF3w0v4tcw/DDyHwdKG4RA=;
	h=To:Subject:From:Message-Id:Date; b=JC9bcH+rWU60C4hZO714rcDeW3xReyIwr1xy0HZ/adkQ5vRkfxew/TCNHdkiOSUc7HIcXVtviEobJg90ere0ADBt4ULZYyxAYyedwf7OxGjNMWc/sMRvZi3Mra07zOE2VHeHrDpcQlRB3G0FqAxb6/RZClUzbeP5WYrnZMijNnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3p8T2fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3p8T2fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743790793;
	bh=lrzmYrt0WAGETq1LyD2clPF3w0v4tcw/DDyHwdKG4RA=;
	h=To:Subject:From:Date:From;
	b=B3p8T2fHOP5HhB54mz+vtgBFh72OOM3P7y2kLU+nP013jfInh99LY0YYmeKZ8QneX
	 TCrg2kLZt4UT4qFKHAXok4diglCrTI0NN7eUmmR8JIBPqWDfG1Ihpa3wjYgwcc1noc
	 pDHG8XakTMqfgyznJ7cO/wTdI1DbfDg+vfocASDdiBzHaAPVHTZPeXYYa18msW2NwM
	 j8l4/ZeqvnOwWm7ba1ny8LO7fNeWbom/Z6NHrz/pxOiVW4imIWm95uJjnhfxaoy0fl
	 CBuEkxM+VeWBJZbY72SnN1cGk1Asl4FTakytg0DHzzk41cTFSWHILwvbx0/eJPUD7b
	 t6BAXz9dxW4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96386C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379079359.19254.5700343847331612868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0557d58b6dace00ff59ad6f932612077e2c3c9c2a51c7669f4942030efda2f31
Date: Fri, 04 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743790793
