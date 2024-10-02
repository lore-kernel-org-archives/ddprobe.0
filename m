Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53305168B1
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727843755; cv=none; b=ounaUsHA6CEpXfdgWJsSu5cyNmQJGTRKhwnXWeD/9Jd69Ao48YbX46MlNmqzh+iAdO44Zg0KnEj37xxpYtjPN6urbWyik7OFSp/oDyBVb+LB+7UmLmde4rb3CbmxulIO7IfzmHourTJdLpHwPrH/m0im7JJUUIAt6uWyfkZqY68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727843755; c=relaxed/simple;
	bh=naIPRtdDx9/ZXO2xkBh2qAMRpTsmlD7K5anz5mwAAVk=;
	h=To:Subject:From:Message-Id:Date; b=SnM5788wdeVRior2GgOmi3Q2HsutC0sZ1Nak0cyXnPi91Q8DzhPIp5u9c/IOW2I/E4xFL4nFNSolL1Po1h/bN0OTmWlOY7QksZO4IgLSi1TRdOLozaIy2P3HpBfmnlM8wiGdkUvkLBKHFYmgX0UOz+fspE/XKzzdd71v0HNSz1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdCBqec0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdCBqec0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9518C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727843754;
	bh=naIPRtdDx9/ZXO2xkBh2qAMRpTsmlD7K5anz5mwAAVk=;
	h=To:Subject:From:Date:From;
	b=sdCBqec0SkbaIKsO1rLgaEhmfuXWJb4ZtQ6Zw0WRslKOjC3VPgPlU34HzkgIKBGfB
	 HvqZTqFk8pbcAsBPewCDafEDkfwl5jO/2X2cE6Qd0Dn0DNJc/iacBce6DxxUMqHsts
	 pYDVFqoni3Vfr0I50J92OpMGi6XV/mbSwWbKNa7fulGel7gEHCvb7HS7RihVaFlKN7
	 v4FxoGhDgc23YDZUAKlc6Y5l3diHKCrAElzu69tTINtVTJnK9hsULx/JbRAmosjIh3
	 FjxbYIThK4vI/jm1g9Qi4+ooHZIWg91D42twGLUEInRIiH6xeAYpzKhyj8VychufA9
	 c8HYfcPIKm1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC955CF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784375367.12323.3541714771209841734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18af444f76edc156583c401a5074bedeef3269bb33e2f54b5fe09ef1e160fb2
Date: Wed, 02 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727843753
