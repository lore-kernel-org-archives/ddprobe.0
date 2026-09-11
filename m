Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C337F31F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789114834; cv=none; b=jVC71Vo/wKWNpXyGHd1rT4iUoomxAIn9o+LeZ0b0YQpu7T4l2GfMGJni+eIIZdn1B3IhOVq3vldAVVhQV+CnxKJqp6LKM0XVM426y6nHWvwQFB2maRNTYCGDav7xxKMMTWfBK4WtbjUyR4HhIVCn1waAORG7OHu4nQoSXsxBxUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789114834; c=relaxed/simple;
	bh=gESOUGVSzkdJCE56TSPvOjm5b/EDh9Xb8A+io2v2vd0=;
	h=To:Subject:From:Message-Id:Date; b=Melf1xZO2SbcSgwLNMzNxPx5Ex1IL8n28Axeh9847UfSfjxF24aWM2L6eFhC+JodD9pGaQkVAqG4NQRKaY30QkalqIM0CzK/l07a2koasTfUKSUfmKohPRrip4TuSlYDRHCeh6EAe7uTgWI2VK31TqFKVYrUEfbHkmR/02Kkd4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5WF2G+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5WF2G+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB77DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789114833;
	bh=gESOUGVSzkdJCE56TSPvOjm5b/EDh9Xb8A+io2v2vd0=;
	h=To:Subject:From:Date:From;
	b=C5WF2G+uhVhK8qV3+9N6LiQ8IbbRwWVnUzo1T3CH1VuxnPjhkHTGK/o1AhmSwZJbO
	 3fvXl2H3VfJ0suwJxkbkoCmmkPAXI7CinUx+3OdH3ozYklZbIRuAPUrdvPaJbvk8jR
	 Ixp9SsnAv2ArfKQdJ7Sqq9xtukY6PWIBajRqHbAkH8RtPDnHefutK1LQFuB9q+zD1p
	 Ooq2VQ1i27OlabUnhWbRGBcpBG1ddbZdte/mbHRNbwxkMs/oHrFJ94MhQaIlvwLNEY
	 iiP1pIOKiuOTZeECwsdpn0eJv1nKcGmmapr7VUuFMya03AAgyXM2cXpIJYWaLsZB7z
	 YxYqgw+GdoW4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA054C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911483368.2070.9679618203638772457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad11dcf7ffcb21d10b7038d1bce61205125d7c6ac7c8fbabd696a361f101f31
Date: Fri, 11 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789114833
