Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06E4345721
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774130093; cv=none; b=RChW5aVNwGh/GieYmL0dWg3W5dzYjgJRKjnfETB/kLYASeZVsyJwto6swNCvw8eqS7lmYJz4HMsNK7f/vx951XDq/IpparEdUkC+SfLxthAMJlIOYm0Akn8av9OHjIzk4SsMfL3C0Kn9STM69Wmdy4gmFqwoJXnThcyy9O90CQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774130093; c=relaxed/simple;
	bh=m9lMDLbCwgotwxUC+lWqb5uPgkhB4eWbPC1VKs++KpI=;
	h=To:Subject:From:Message-Id:Date; b=rMumURnw4AmhOB9Iy4+aAM8D025f0sJvAdiaSCdUk9r/f2cTJE8HXJDNmaCMPRLXrhiDl8oLPMPXcixJ2odiO+LcLsB0vQJY0iF2HFHLHdJeBCZKzA6ZbKgJgm5Vpj00VidNf2n7oj8DV/7sfrHTIyh07APbu7ckbjJwLj3PAz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGwoxmWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGwoxmWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5FC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774130093;
	bh=m9lMDLbCwgotwxUC+lWqb5uPgkhB4eWbPC1VKs++KpI=;
	h=To:Subject:From:Date:From;
	b=FGwoxmWfDigEl4R5OSd7Z7821BYONP/goMrcTxQAWeXe702mKMkQITXI3oJfMYRK7
	 GXT61MPulLhryHjZ4mipBOGKezQpGKmirhutGkj4WnfQs9Agwsn2/8I+MFXE1gyEvC
	 aLc6PRPeQfRfsY4UC/v9N1b/w0LQbwruR1kPfgtzEOFZBPDKePINkmQlcOuyzq9lDF
	 5EAYjYC4uG7E9gZcKXoAGQZkajervEsiD5OlbrJ+xp9Jds0+792U6wnvmxIzMK+huK
	 bO9/jglvy+0TQGyt6FGIwkyol68x1gfyxQ+KdmVOVNrD4snSdjpSSDsqvuoeyYNgbf
	 UUXNdrziBuN/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932CF109449E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413009357.7182.3430461038244632876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12b9ba9015a115a8630cfa4ee6dc7165a6c6034f5160fbee840db2045398bbb
Date: Sat, 21 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774130093
