Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B0CCA6F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079334; cv=none; b=nB9zZHkrGmHir1vVhyvZ9WcENFTeqIlczuXZPgYbUAwvWQOvWqP+khsR2ik0LcozWDCsnvfPb1UgSaqvIQOyj8JfbD9M7jPBXWSOTTA7661Oa7QzdP9eEha/Rz/zKZiTZVnHxIVQdUsROJl41V6i30OxPy9Z/tSfZ0Sh2OsYzrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079334; c=relaxed/simple;
	bh=TD4zdReyu2YeGTSCEKCsw5bXrMm3dRpvACQJfxTIctI=;
	h=To:Subject:From:Message-Id:Date; b=sXgLH0GdS3jiS5kV4157nrQIkKUdxQ1ydbuGvUoyUfluZ0EhByGYAzr40fSYFQDNCG3aNGktV7K3v3pIY8pntDHuvWC6cmo13oSdCww6HFaCIgoC8OvO5AqrySxLjBKBAFp0BcDi9UIgrGGFbq2uqVq7++KtUE53LXXIuKIzC8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snqMc6YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snqMc6YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19A9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781079333;
	bh=TD4zdReyu2YeGTSCEKCsw5bXrMm3dRpvACQJfxTIctI=;
	h=To:Subject:From:Date:From;
	b=snqMc6YJEK22qn6i7TCkhXwV6PjAXO85Hkw89PpJFhw2vrTOD1Vy7S0HnEr65958r
	 sRhBa+Um6EKPXn9Mrikvd2CNqaSCVXJ/4h+rDjAZCFFFS438T5wwJKAWQUZlHTjMLx
	 FY7z/MU2VLP2lQ+poLfrpdm3vmkFdxeCn6ePfAo9vAgzNOWl6DQX+c5FFbfAnDc30V
	 Qb0PLVuFT33nwXCaQXiduk1p0BTWJwaeIh2jvXBVO2GL0ThcV79d5bB1PJZi7lLHQa
	 aSfQs3UbbRtAixVXaKmzucfpMGwMCeuwPp5+bZv2uhfFzBYIRieDD8yNHZMx2Faklt
	 XkmjOrDizDRTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA9CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107933368.26047.4668612416117975454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c3f809bcdf234b37b03f399c4ec94f4fffc0d14c68611f302cd37f1d9e9377
Date: Wed, 10 Jun 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781079333
