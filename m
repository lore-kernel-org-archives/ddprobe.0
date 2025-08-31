Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23697F9D9
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756642194; cv=none; b=kghLZse8mY/7Kb6dx0gepSHp6BiRbVycjSimD7CxK8KNZlsMGdFaq1uTF/cmeRQ/K3DADcWzRgOnI+StJBXmRn3D5XIKTzooUr8kFC8R1CcusAgvUuODm1+eIgc6vgqzx32m76T8aZS+GVrrXgLHIrK6zXbPWhO+7zXzqGlkDD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756642194; c=relaxed/simple;
	bh=5f6JRBRhzcnxADRHCYIjwbfIsJGvNqnmGTi49R4IyqA=;
	h=To:Subject:From:Message-Id:Date; b=OeuwiCHt55KAiI0Jo5m91Nl5yafWlAnCSBnbwyTmvUg31CaMSz71EGLSXE/0+2eKNHB9pjxRJ9zgR8zoEPSHtz/ySvuLhPafiSRVEv+GXKkz/DrvxQew0eZgm9S5RUQVhK8wLltxLS/12pbB+Exp8B83thyiBKj3Aeb+tlWddVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbs1GazW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbs1GazW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756642193;
	bh=5f6JRBRhzcnxADRHCYIjwbfIsJGvNqnmGTi49R4IyqA=;
	h=To:Subject:From:Date:From;
	b=mbs1GazWdJ+Mdiobk1xDRnq3W7L+nKGSZHsPkHVzQrr9cb6LWGziAga8kp4BXaf4U
	 JP6HkXMwfp/7ozYJQJWUpoFGE4rcMO8+IyArSAO3oYmxvNK8UKBJ5luh0SZCuRQ/DI
	 3A7JWd4hTHzpfm1iMEI+02oJBKQrmMtPH7Nez5/9XO6up2Y6Ijmxc4SGpZSD8CJN4E
	 xOob0sxPpI89JoX6IayNvahSGwKlGsm4vkpkGiK/bIksyL+vd7d1328Jj6vw0zJ0YY
	 eHGmDjeO+YLFaxDRS7I+Nznf5BItc9xNj3BwlZvYL6nsUa31cYKsPwsWL+MP05JvDT
	 b46sXVbDaBJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0BCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664219357.30808.13430450339813029133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d5d40a0f9ae15fdfcedacd61e236699191a9b1261e6573c96462eb49d4dbab
Date: Sun, 31 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756642193
