Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542D15916B
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719374003; cv=none; b=KQmEY01G9rSz7ZDm3JxeQutgjUfW4FMgXsJMGlZVuIUTrxZ50PS2VwCj75Twe1Ptj5zU1oeIrriImnW9tYe/22tT66HQksGLHMJV/MqfVl7C+LffUv4TlfsvwUQGwKG0XUWpGL8THHTWneLBkZtKs1PRz5nKXn6vxTTpbvC45g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719374003; c=relaxed/simple;
	bh=HviNkXBmXIfUmkzzx/pnpBO5Cv336HRbx1CqupwevvU=;
	h=To:Subject:From:Message-Id:Date; b=c5QFyRFk8HoEKOF1m1v5f0YsTLmUAveZfsY4q+Zbz7RLkYax+Cvhe3vAtwIeyT7tFV8GXobtMJw5Mgi4F2vJ7c10EAJomLrwKJAeDC8/yq4/K7dFFyzKMpQWyugdA6tmt/0LqPXoqVaNlLhOC+UR34MoqwaqOd9dJxVZ7CrOM7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TssCnmm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TssCnmm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3ABC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719374002;
	bh=HviNkXBmXIfUmkzzx/pnpBO5Cv336HRbx1CqupwevvU=;
	h=To:Subject:From:Date:From;
	b=TssCnmm+MgZDJNbSJaG9a42/lEmkj50B8zgWrlLGeLN7x9YoOYs32SW0j+zuRjBd3
	 RroIo2Ap9R+dJUKXa9YVaaHIfaHddYthKKKcy2AdxTc5vkknf2pHCURJPnAE8jWwdP
	 mKVOUqqXIzPF4dBddIpxtjPQt386mMFd4+U7OQmlQWjT/79jjw91hsScKfPOsxGlo5
	 kbaRhrjVTRhxqYQULqtrUW6p7evUKLPId+Nte2Lp9zTS4Kb8TrDOR4uoMrnAlUqfo/
	 dPO8vOPBFFLZqUz7PZ5f7kHnh9t6VR8dAq91N1ucBHZfpx+nqV7zzQUZX52NRYUYcM
	 OxmSyeAFW1Rhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8BDC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937400276.31250.8785472420013868058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac75badf1b777696676dc6d79f67e4501b51eb8eb1c3778560176b7c4e8814d
Date: Wed, 26 Jun 2024 03:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719374002
