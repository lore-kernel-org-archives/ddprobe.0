Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CA61E22E9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758806994; cv=none; b=K1pbity/iszdji2UXb3QU9Wz6wAK7tAR40ksciHcn6RRrvpeiPilnDPFtNdo7b0yo9gIJx1JFw6nboWFp/ITi1GolL6AFYB0X5pakDAhmhv6zJ3m5nt7i/wsCUnzBvNNbUrQ7x009RYbXNoxs8S+g4kErQXWNrJTqCAKqQbKzKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758806994; c=relaxed/simple;
	bh=DnmWDYWklQ7oXK/p77Bf0dz87nLe+SQrF0S3wMzX0cc=;
	h=To:Subject:From:Message-Id:Date; b=C0ZOjYv60h6UQDkoojZhmPeT6VMuq2e9GoWBBy9Uemw1RxxAo8gjaHvVUEWixC0dLr6Bmocli4acYC+Icv/V0bTGzOJVp8voLUa0RGIM2LS/Bk5i5/1Y3LuYvhFJQhtt7aV3++zyrsxQJ0kFxbjAhLOv+cvQTh/tgSGv5PMoXKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo4hWTsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo4hWTsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B6BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758806993;
	bh=DnmWDYWklQ7oXK/p77Bf0dz87nLe+SQrF0S3wMzX0cc=;
	h=To:Subject:From:Date:From;
	b=Qo4hWTsMqK6bClcGqOGDz61nTJMFGXJwPMf6LP81bjke/EoC6bVz1O9I79SznMfrQ
	 dBE9gsvSrmtZRZLh1AnTnMZs9j4u431ap6MiQHGv8REr/+lUgqnHatsmOzJWzIean/
	 AeJxAammQQ5vxCBaA3jTsz6TouDjVtMAu72XMW+WFvVG8YVZ0up5pXG/K3NhjGiuWD
	 Hyd17WiaKyr0Buo83Y5SIsMxE5ymiPKZ38ssRFxTj3hsptTk+EyqqNZ6GkkMy4F0mI
	 /yKegrO/z4m357OEKI/yUfaBcxfRd/ejcOjwgjwdpx+aumRCY7IxAkxjg5n4LDM/1+
	 NirkIxepNs7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A06CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880699359.30479.15654036211220106347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d434eff88074c4c80d11ed841b61907294a13a3d1fc91b258d4bde10df339a
Date: Thu, 25 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758806993
