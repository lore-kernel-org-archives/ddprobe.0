Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C7719ADA4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777144054; cv=none; b=ktfkTxEzzKFr5e8DqAaTRNzGlENI8IWsnJET1PxZCGakC3CrhnRqfEqHFlEx/KXFbOZpIki2/cjdZo5ANkKtpOEA9VWrzQEK+1EjHdAPflwgHTkMT0+J2jmPwkM7DU0QQqc8AgkJLXGbUwoFlGZKcSlfXptRw/ed3r7l+DVhcmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777144054; c=relaxed/simple;
	bh=78Db5dMkQzAc2AZEnHiOeYQdm7o+vegjZf981eTRR/Y=;
	h=To:Subject:From:Message-Id:Date; b=N2AH5lUWKhul290AcjrgGLJgIWUQlav8DGiGpQK9ALE+CZCWo7AGYM17AnpFMh+7kjtwUhsx2Q5PupXXViYv+FzBn2og+ZcQ2/BgXb+/3ouujcpt4X6uzJMqHb2EttiFd80BPeWd1J2PKDgzgPt2B2lq7LHgwuI1z99ChMp/ndA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNwhYYqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNwhYYqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAD5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777144053;
	bh=78Db5dMkQzAc2AZEnHiOeYQdm7o+vegjZf981eTRR/Y=;
	h=To:Subject:From:Date:From;
	b=MNwhYYqpUwhpMkNJSFDnvO26yn5zv78fCVzxvrbW+2bYTF7YGsGkKh2cFrDi4Ln0Y
	 Klg/mdGSzJoM5G4iQKiTWeeyfeBIDJ0LJ6VeAQEyQUn6MogJkhNWuI2r1K/HlP03mT
	 qN+GPUeiTZwz1n4L1PdYkVwSq0Bt9QqDkrRMIawWxqvb6vOKlN+aBHV/fSqCmOsXJ9
	 4141wgfTVtm9GvMcUHJTxiV+PFO690dfCj+ZnSLaydx8VhhP31qc6l6f66aQyGzcZx
	 Vju7jQXoEov+wd6Phybg1s4CflekA0Ir40aYw8+F8rKL9oq/avf4fBYtxWO01rCLqX
	 0vuErIodmIJig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC21FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714405368.27015.14476559477955590208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e838480690b20a26e6b9e22fdcdf15e54ae43c5bd6c74097d54317e328261c
Date: Sat, 25 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777144053
