Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3124B1A2397
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740267534; cv=none; b=CoeZYHh3ZSDU7kEiTHuALABAEMu0hFrlueOQfYBUAaiABBaS5o0DORdpEotVcAN9AjeWW8Q3EuDIkqC2lIVy19JrWRFNWJ0SdGfg0h1cSbNP8qb0WmU5Wvqxgh2KS13akAff7t8tIdMP3IZ/5aAQJ1WAu+a+N/k0lCT3jTc+qmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740267534; c=relaxed/simple;
	bh=TlGurW/7Oy4WyyQgmcCNnSKtnA+w5XYJeZe8+QPtHnc=;
	h=To:Subject:From:Message-Id:Date; b=u3QXfKYui/Cm4HiY26kKFgC1xOhgs+fqzScUMpDzloC0bYEesYTjlUWDGlQ3iyRdT2wgFClvsIQcrFva3kE5t0pY23PIqGgfnncUlyLKXSBcjeffDl8sXuH58LYh1n1FeC522QuQVbP3sgJ/edEI/lz0icpj5WYP5ZgowLJBnRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIcWTNaS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIcWTNaS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A1C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740267533;
	bh=TlGurW/7Oy4WyyQgmcCNnSKtnA+w5XYJeZe8+QPtHnc=;
	h=To:Subject:From:Date:From;
	b=aIcWTNaSrh811+v9PcaqYpLiOB07dPLKiQKkLtUiCsK4zYHSUlyzro2j2UaNmdILO
	 e4H9WlCN28ztIAr3x6liOmk17h2/xChzHbj+xqFn6gsmRoe2qXJtvjYWEyu5E1ktPv
	 aTurGnPPiJLqKd4Ydr+6Wlzxp5PU5QXj2av/aDb2MKMnYKO18E1WyJk+n6bDA1S571
	 akTcyMjFVzssLWFIcT7FawYjl3a2u2a4oSLgXLf0InyzJl6b9tbteXLwgrIy2DZVEH
	 g5S3yNfoExZrwKGkpLvbsMyVCs521705jXpo52S/KLuvqKG0qniYCdI/ezlC9Q6KCT
	 fJgdFVmXp/VRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148CC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174026753358.25199.3244272151243483443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc2a6a784ec127c8fffc7c0e2c2625100cb7abfc56fe33b1eb87eb826f9aed1
Date: Sat, 22 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740267533
