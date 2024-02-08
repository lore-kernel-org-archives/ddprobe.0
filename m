Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249522E820
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707365897; cv=none; b=FMjn/0kVKuyj8qRHROhUPamYZenynZqjNl1+p3Z25D6Y4xg7wEhnPRZeuGnK3lPZDTOJc+Scs79kk55CHmxqq594XP6KdeuWYREivLi0bufvCjuOUmfKPXMSn6eiJXlARTEmQpgdwOSIJ2yJ+ElMc+RXro8qeMqrzfIRbL5k3b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707365897; c=relaxed/simple;
	bh=YDnWj8toyGtFQJRTLoPon1xsEDxp+TMLqJ4aJU7v6HA=;
	h=To:Subject:From:Message-Id:Date; b=KTza28BCXsujcsDnn1vqiBJHQZlYsMa3WpNlGoswpIU9H466GI+XyXrlRrNTZf1SLTVRgdao/+Ek9Tcsp7wrL+RC7AMLyRogwE+Uh+QRgV3nUEkfCyAA4EcZ8dMEODGrEy3QPDyuh883h8KquhOS/TlyH0JXku6F4305+F0ABbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7hK947O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7hK947O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B7C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707365896;
	bh=YDnWj8toyGtFQJRTLoPon1xsEDxp+TMLqJ4aJU7v6HA=;
	h=To:Subject:From:Date:From;
	b=n7hK947OQmklLI99wdDBc9jo1G5m7EKitFXxVdCUY9DkAj1Z4nOUXYVGABmkDxNRf
	 IRBafiXBtOATnXGYi+r7kaOWeq46VJm5JJYRo8Tc7ovlcg5rwaUf7W3Oh7/Lxbo9c1
	 EpvcwOaGhEPxKfprlW3oMOa04JzHqPBlVuSKsQaGqIheqLjiza0Kl5xxEkL4s1WMIf
	 j5Gyj3uRoMrWvZKE/d1hAI35hKBiy/lCUbhO32ccxjkScWbC3jZ1TzZbbRKeAuhPYp
	 1sxWjNpcgRsghPh04UXSVMc4NZjBZr9GQ9G3uSqkrLRhTFP/LFepmwHl7x62xqk4MI
	 uq9hJzR5USaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C705C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170736589643.24981.8515335891510641649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a4b767b62041aae47e71661eb31c232250214eed6481685ff5f6927c1d6fdb
Date: Thu, 08 Feb 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707365896
