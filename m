Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F6C2236F2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768506834; cv=none; b=IetLoT+5IdV0GgsUxG1ATzsHu6/f0CLOYFcfNM9tIJ3NbWp3Kb2s+Tmy8oveYOZz2vOaCvXZFkOTSS30WtXy2G4i5NtoXkgR/5cfn93isvEJ+qGhtcFWEd5QBEiXR6kCI53sMMwTJGTyjZQSevQ5rzXyvzKb1AhQJ4FuLiCWFqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768506834; c=relaxed/simple;
	bh=+EctXACT9sP79N6FEn6IrTc+NvguQZ/WKseGT2ioYJ4=;
	h=To:Subject:From:Message-Id:Date; b=ccMgKWtf/j9P7q16qpBgucLFC6d4C1HRqwWimQF/FkmzRiG0lD/CLa5Fpkhbielhkl/JbdpoaDpbKjIHGI62SX4FoSZtwstZKirAqr4QlbrcD7JfZ8bhQxgl5fy4jo0BvaBJrJgQbkr0H88HK2EbFb+LukopvGLGOzbt76f64AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eORAMJjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eORAMJjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6807C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768506833;
	bh=+EctXACT9sP79N6FEn6IrTc+NvguQZ/WKseGT2ioYJ4=;
	h=To:Subject:From:Date:From;
	b=eORAMJjZ5jBk2wNoW2mrbg2kS1Gzn2olfozjlp+GULwb4vaX+cVlhdwbtAg8WkpZD
	 q9QXongLJplLGR2rTl0ISOwV5MsWEODiX9+/ofB+0+/JSfaRnH/T4vnm9p3WB07IZO
	 rsYe3RvIdCPxEyoEIeNINHWG5igW8bWHkgsjJUWljaSUA8tYEh+oaJ5NDBxxu1ojvC
	 KKDMazViM0/iECfegVF9pgbfvIUVhEyxfRFb3uNfj8udgEqiTuKdlSlNLNcnsUoIgD
	 oB0Yevfm2yl901LraB9MwUMOyUrgIc2UByt75u+iLz9VSWwF9SmH4fYMHVNEp8Zlvy
	 KsELquKarfCBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF0D4661B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850683358.11619.15563717984396178104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcdc9f7744e65e4285cd46add7ce5fbdb70b67436a17ac6cc7349163c723248
Date: Thu, 15 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768506833
