Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB7426B2D7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755712194; cv=none; b=IwzPoolcsDKtTluF26pOO5PPOWuhoQlOINoEQLPD2eNTrVDiExjcP9gAZ7VHxFRZYu51JfonPvxck9+nRLROjAr6FhbV1UQXDCWuqX7Ak1rLgrRQ0xpZhRetrpi9oKiorHCoafRliug2N7EFICJuWCP5aUepGkvG2x5DdrMKLMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755712194; c=relaxed/simple;
	bh=kW5a4HN8H0UopcueiQNWuJrjzdMSEEKmxUpXIAAdWOA=;
	h=To:Subject:From:Message-Id:Date; b=aJNbl8wdHpFHpA2sMzq6vdxuZLoiGU1sPswJTAGmgpZoOcaT8abrv+YDXXRteHsulZI/TmOY0Slrp8HI2ZDhVl38F4Ey0fFcfgvFL/ob+oCejNe+xaB+0G1Rjpqxdu1GNRwKWPb2m6tSqr2V5ausUi3dHrJc8VmW0hDCf8FMyrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hprcal3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hprcal3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F639C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755712193;
	bh=kW5a4HN8H0UopcueiQNWuJrjzdMSEEKmxUpXIAAdWOA=;
	h=To:Subject:From:Date:From;
	b=Hprcal3Tc6rnKSpkB/97TEaWicutUOosX0/BlZmU4xExfAK2yxPd6ra2mkpFard2Z
	 6NNrK0lQ4AUyrtf5cxETo97VVQ31pGCmgMUesB2dWPVsXgbqECp9hN53OA20e5PaI5
	 L5Z4c1U7TplhCl0diQXG0eCYSgA/+LtzV5AT/dNNlSAvwKTQJXuCp6UhdLaREQ6Jld
	 RPRwIn7kFRV5DGYK0/TsCnplpW0I4UCk5nPOj1yG68smBByndi8r2olFa2EnvqoSzi
	 X/0RuHznd/45P0fTdR3Vl1sB7RcslcLEVj0wxCB8KGnAricXZaAVhQYmSEqT/uW3/I
	 FTQeglNs4SVXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE8CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571219358.24217.17786810097879971050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeaa90abc5fc88fec5d19c3907be2a3c0365a89483c0c50cec1a7ac099c336ab
Date: Wed, 20 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755712193
