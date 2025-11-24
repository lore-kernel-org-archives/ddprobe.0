Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1D62DF71D
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763967114; cv=none; b=e49Px1Kg04Ljw2vigDA7WbfChWFWStOQmFJV2c+1qz1VSQ4bDpJNMYPighttHIP4yW5E39VdwzvVKJJh0dxQUQ7Ecv0hsqwXVVLuzHv5A0emU6PSB+v45y3R1yU5ik992/WtqNZiy9rwbtnel3qD+ZEhpAGiEN1xxwCVeoru+Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763967114; c=relaxed/simple;
	bh=egQGKnoQzlqV2uLjjiuPOnXSJxXt/giJ9hRJoJVXTes=;
	h=To:Subject:From:Message-Id:Date; b=XhFWVdOBnw6IbnJAc+W4/YEFMjc0pF71MMZCenA7oiUgkZIC2j8ejpYfeaQtHtyzGCaDA02up/O/Fpb4CWB1vQ3YFzLvN2gn241wM49qpl6UR2ymqzha1kpW2z4KWfS/C018n3wPW10LAgdmuDlnakW/aLiGUkbPBJUJoNmufXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhpzReFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhpzReFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763967113;
	bh=egQGKnoQzlqV2uLjjiuPOnXSJxXt/giJ9hRJoJVXTes=;
	h=To:Subject:From:Date:From;
	b=OhpzReFCsee5VfKWQaJckUjRk8hkMvb7vHdtJbkguCXP/g1YjOdsOX1AIufQg2sU2
	 a5tkR2yv4DGMwmb0JDqZvRqhNqXljXRr0MQWiejir0jMiuTsYMfHyADiX+LVVYe+4a
	 mvemNOh7gQj8v7691e2CW4ozIdneG/lhpm20Uq37nqv6PMxuZ1RP3HHuQKXV0MZLSC
	 +uEx/RTqXtauLnE3UYVB9b1LyhY43thH2jyQEpu7t6/KZQ7Fx2ZuBlbjRmjwtRxVf2
	 bULSrSEI2QSsi+Hp/RLZZUZzfYMN+aU2idgbAQfmVSGxDGxGPZghCDYTpztpql52n+
	 DRy60ciRq2pbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A4CCFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396711358.28177.17235408143885347175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cae73ccee8b32992c82bf6939875e6d676681cfe6dc140f3beff420a95b6c7
Date: Mon, 24 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763967113
