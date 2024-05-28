Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFB150297
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716883463; cv=none; b=tzC/AXmRLYM0gAI5CaGfs/Jj5BWyZ7OiH20RMSZM6ma8QJnxMOdUKz/nI98nwUb+PZ9KMfQTRhzuXQ282CE3eSxKaLSJv1l74PdoP0YjOrt01YGofcEuGo2DBhmcmjt6XzbF8qW2XNX+h5jtGEFsCljhzFwDTo8J3mImk2i8+UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716883463; c=relaxed/simple;
	bh=Q1/YLsRWUd2idKacAt5+qZ53XK1Ptg4lbJa3Vory3Jc=;
	h=To:Subject:From:Message-Id:Date; b=DgSURijK5LTsxXcJutOzxk+o+5IrNZ9AnHtCW8DszdwkEQaCrbv51l7MUbnQlzMdfk1R2qfC83RzmereSWPUgQrTClayEVRHV6wOloOM2XqISPMYfqqJX+gSnHtCmKa2FGYzD0bWP/k1NiD185t94DU3sMKtpaKOMi28wIfFZgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGLwJLf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGLwJLf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D187FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716883462;
	bh=Q1/YLsRWUd2idKacAt5+qZ53XK1Ptg4lbJa3Vory3Jc=;
	h=To:Subject:From:Date:From;
	b=gGLwJLf6ZUy/OG+1CBtY5BsbQuFdKQrfV7SUNKKTthCab667zVlX46BORspVKjCp/
	 OqbIj7Duv0p1mLOZlwoOP6McxkLPwNFZojlk3UUPKyAXXzBeUbPcGL1LHNVWlRS1cu
	 5sJdJTFLCWmaKCenriVLKYdVjerdAa64mXrPpU4Mp4ABI5fyVYCWjD6gF8tyPUKDo6
	 LQbD+usKbygSjsG3a2ill8ERrUHECteAMVD+exqAhU+WP2uumbAkyod2vB5t1YwFv1
	 rTDGJwcZhvVWN2HwSpmr4ahKfnSrPVvxAgcRxGDCnyEVdjwPosbvg73dWhp9HbIcVK
	 ALLSbqWLBv6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFCCC25B79
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688346277.27831.5914551408588865595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42db7c4a4217335ae0a4f8669993515637ea55bdf49adfc7e900f65c0cd6cbe
Date: Tue, 28 May 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716883462
