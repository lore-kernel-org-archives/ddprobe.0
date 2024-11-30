Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C50829A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732942554; cv=none; b=dxrjnAGz5uAihw+YC1dMiWa6FvhFtkmuWV+kHOALn/Y325n0C3M3SBhJY3APSgZxvyGGoAQUGwexgGeEW7Lh9gvPP7CSzsLK9Ybp9FIX95VunrApr/fOVHAN6ojIglIR5J8uSJv3dGF2VBffJ1OzWFwrRFlSdToTX3UrelY8aU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732942554; c=relaxed/simple;
	bh=sxsdDsbCVNbUmlOweQafcjvx8tIPyDS7FPnX5KQ7Tfs=;
	h=To:Subject:From:Message-Id:Date; b=pg4w9aLTIgQStPvLYya/RcVt45pE+9mSKdykrNynPaO8N9En4dmEYjwM/syDP81tmqzycV1G3h0b0YwmezjL9YCS4qHGYKkEFVPwZnMMLD7eOrc/55DLvJWBWFnKcCSbDhOaIKlTBPXWe4a4aE5ZSV6aOLoFaxjNOlBBi+mqTBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DF4CH6ne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DF4CH6ne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA1C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732942553;
	bh=sxsdDsbCVNbUmlOweQafcjvx8tIPyDS7FPnX5KQ7Tfs=;
	h=To:Subject:From:Date:From;
	b=DF4CH6nego6vdYLfFtnZV2x9Q+lbS30rv41xzHgrAnxIrpaM5avrU6BalVCYmv1oE
	 wkhKhpeI2rHfUPHhBInOnH9BNUwZYwyV+27bZ08neW7FHcm1jAwu89VH6uhZbF2rAg
	 agj02rp/fVvfh9OX8vQlSRR0dg5StCpMb06BEKzWrMnqOGz2dkxtC5E8xlf1OWcuJG
	 EQP1DuHXHWoaxljKLURuOzf6ma8iSq/0kkehNEclI6yIRHADr2IPC95D5/YU7CyFlB
	 S5PFyzYxof0dQ0gM//LdJUdEmQMZrVXK4QWmqj3jiRDrr7Inn9yT2pr/4OnVDg83Hv
	 gvYh55MUlrlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C10D735F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294255358.6881.11250640724934602352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbdd023a62c3653ed565bab4af8a50c266d1ebb736b8a141f04c6f8384c0b9b
Date: Sat, 30 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732942553
