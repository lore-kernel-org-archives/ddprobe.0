Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE3A1F151C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777799853; cv=none; b=fC/NGdC7OwD05MRpjztQvkOQh3P6LrZqKkRruG4jxij9o9hZv6e3KdbJwqck6OQXGuDnARQTTTfldG1aTwQ8MiuxJrKMJPkbfkvt0PO5qzQmfhNVBCvVfu0bds8U90j26e/L/rRspz2r2mAhuz5y1tgVKpWUVb/ItHDtjrqdSlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777799853; c=relaxed/simple;
	bh=XHbvncWKlZY/16rppgbiEPYJHqOlpeWurpZnncbJS3Y=;
	h=To:Subject:From:Message-Id:Date; b=Thy1zdIWkAR0gZZOwfLY6HJWHJW8suu24ncN8Klfl5+qIQb5wDiL0/TVqy+x8i83EE9bCHH/EzE2q549QUcK7K3s3Db/jA/jGkQKeUmC8HmhR6BRRjiUZSRd+eGG0ZtFv6JMpXNy6a3gjo4x879GZgPLRupixkCimXJ1vCh4EAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD+uot+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD+uot+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B872CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777799853;
	bh=XHbvncWKlZY/16rppgbiEPYJHqOlpeWurpZnncbJS3Y=;
	h=To:Subject:From:Date:From;
	b=KD+uot+wcPPn6pEkkNGczS/K3Yc3+J9u0ZSbke07BCbt/M+u5W66P3rt0L3RiE2R3
	 07Fi4ADFLnx9qYUKKdkrbDBLr1h7WR0pH8GFG5g60P1nDqkJLjHGl1/+cYHx1EVuZ2
	 HjmjSy0C8N2TpnM/SM8D4/W5ECgGugqtRnXERwp57Wa73A9JPItsXbf42KT6FsIoLF
	 WFn0Ca0KZaRHP7OQugBlRNz1Ct1okViXp7XB45ucO1ApzrWdzpN8e9zUP6EgEUmivK
	 KoywLyl9mD2S0/04WeHYDSEnhwWg2ZJXxxKTP4MY1xkfO3pGPRy+gEhnGu45KAsGt/
	 G3MuiE329fw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D1FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779985368.25560.13047484381640097078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5805cccc3f01023e6ea398097ee0068378910bb6cd8f01f10cfbf39d495ca501
Date: Sun, 03 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777799853
