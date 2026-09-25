Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72653ECBCF
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790356235; cv=none; b=r5wNtvZUVrFXNaeCmxAK9Kao30G5aIiqsb0W2Yuh5evblTxWhO4tCYECSMJBJKRqU5eu8kwgGkEaG7wHWwmFFi7+LPFirIlUte0WZ0hE9qvBPU04X1+m1WtLtBmgwDDxXXsQJNGXNDfm6WiZaUWlR+kVY3Gt4gV45UP7jYqsShw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790356235; c=relaxed/simple;
	bh=+Ib5bRSjws+ZW3rzvu0O25ceZCQzphfpB5fzT1Md1rg=;
	h=To:Subject:From:Message-Id:Date; b=CrfaW+B80pKdIvpU4vQilu4tCfpI5IEDGh6B90jzgA+7l75gphufs94YQ8L4f7Caf1CNJ3J19xvM80t8CXp+EFlBI5jA3zpG7ObNBxAxsGGkaPgtDhJ8GFu5T6CAyWYRoUoTe0ZMqit2Ai7xSExAbl+IshsYIyLrD4Lmbm7x3aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNeIxut0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNeIxut0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27BEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790356233;
	bh=+Ib5bRSjws+ZW3rzvu0O25ceZCQzphfpB5fzT1Md1rg=;
	h=To:Subject:From:Date:From;
	b=dNeIxut0A9Z3cp2Cx1mcyB5r3Uw3MITgKgAgKoA/bb5fi0vxCW3zaDUdF3qiv0BLe
	 gn6dkfNkck3G85MJXAtVjHc2jbaf5Nbix7Bg38LtOGWF30hFbZWs51H2ukPAcPaoxw
	 TTXUFdPiJVm0VoqfU4WikNertIAQuxVYIQVTIqyJrssECvtk+YcrHoBi8UyxufHcog
	 8UeSOda5Wasn+V7tQvPHXmyh783tzYHSO1ktZqfKUfX0FHbl6xAFuazhHHYs468U1m
	 1te1RPZ8DQqTY/bfHH/ydTo+Msj4M3T8/GH3wzxFAxh0fPWENy+frlMacIiuCxVD9M
	 iBJx+ad3RnUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B178BC98328
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035623368.6344.13463527182604661688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b11567572b3c52ccb3141ff93a0588dcd0cd19e81638feb8675fc22cfa522f8
Date: Fri, 25 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790356233
