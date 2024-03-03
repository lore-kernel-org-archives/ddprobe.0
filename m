Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A727493
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709482697; cv=none; b=Njs5CMt8uXmYmqBf/58+U9W56DBdM/6AEu1x3BFIBsA9+l9hUuUqfaqnW/7ozHDQX/UNBwDTNOkxabXfGzOTVCc3InNIXyVafjL8+DmqH7UJZDK3MlOs5BpBb677FNzMRIIPDkKtZCgnI5To0K1JCdif4qvAL4AhRB6BYkHsBqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709482697; c=relaxed/simple;
	bh=L2tuF07wOVRaXfMGeLQvObJGZvNOIpuKIi3nLW54poY=;
	h=To:Subject:From:Message-Id:Date; b=L2a1871RrN2/5yeWVE9dhoYeKHbD+pr8EV4MSBPjzy4eiwBXY+8lu1Pk8+e54AoNZMfphQTDcExrnvuZlqc1btpyJoCigeo+rWo6AoLtbvTbCkjY7NeodihRyRtrAgLsDlpTPP3Kzl6cUckwtqa4B0Oz9QSNegRFN2X7BO0pjoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWGhO2Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWGhO2Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E42C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709482696;
	bh=L2tuF07wOVRaXfMGeLQvObJGZvNOIpuKIi3nLW54poY=;
	h=To:Subject:From:Date:From;
	b=IWGhO2Qd1+1wa85vnYxdS/SkzGJMVe5ztlN5jJPDy81yCNIIOx8IK24tXkfvgm7q+
	 EE4rTcW88ikXkLbbhGmCfO91QkPiXstxK9ipeiY8u9lXABe9NRkKTllNbZ83FW6Pgd
	 W86pMvES9JvQq4lrirOL/oUjJ+b7jCifqtOx1I00sOwtfCPnYOOly+M5WTcKoK7HXB
	 SZVet/5rUkUdkR+B1+IVLWPCA/Ui7DtO7ORV2L0x97JNu5POdc47kaBUEtC2WOTHRN
	 +kQm1ekclwOXmYh0MycYyahfuSoYNL4DduQI+T94cIQS530RRusx/7lfw4ddCRA1f5
	 4uKj1ooE6zFCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C628C48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170948269637.17978.1569973221333914902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5caa7e72d3f37598ec5f560698d018bd1f52e62d869d14743e84e1111168e2
Date: Sun, 03 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709482696
