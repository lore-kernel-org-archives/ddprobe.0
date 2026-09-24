Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374173D0BED
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790217034; cv=none; b=HoMfS0TPYmm1VlCG03+tGp+q9R9i4v/ygLLA5yohx8lEDXaglK6/VXQUDByl3xjdOQ+V+IxEfgxwgC+7A1HQtAYECnTeBr9QQFgSirAJUyz9xY947FSF/mPnS5WGFIlWZxBfw2IskHnOCq6RaQLR9rNIb/PTeL06JyVMyiPxqdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790217034; c=relaxed/simple;
	bh=xMBB/hzL5eI4CkDfHENeYKWTOZupmZa4CwNO3uBtxms=;
	h=To:Subject:From:Message-Id:Date; b=dW1QxrgnbHNwVWNxTUPP7fQjKwfIkqTUP/4VLeP2WqyyAgCquDSAioqN21VnzuV0X/zFU3iZ13sJNXv+kvt3h8vo4UtL0kAq0pYDuWOP0QsDGnKLqRLS20zAVmoRMDXhhhGxXEVVJgB+cHbx6VX8eLR8g7UqmlEQnMTKT/DFtLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIzeYhpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIzeYhpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F1EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790217033;
	bh=xMBB/hzL5eI4CkDfHENeYKWTOZupmZa4CwNO3uBtxms=;
	h=To:Subject:From:Date:From;
	b=lIzeYhpvHPd3KzWTfHjMinSTMXyvSdiI/xvZbyOj38qR4E5c4cL13btXR5Lp3o0Cg
	 5SLCreM4kVoANuIrFUuPeem4ux4AZIOdmMGSpY4EwEmwFfAMYjRKs0SQ0WhIwIXgU6
	 MIISECgLFDEoKMCjm8XpDri9a+UgYbCO48qHeNLDphGkC4SWU65GxY+JfyOjCGF8es
	 Hp81h2AV0HLh8Xf76lKO5ndkJISlotswMC/YSKNTpWe3Z5QZ9SNtKeRhnUf6vTgEf3
	 gRTuSR012PC9UAWA2lcUeXdbFa9RVrGG9LU7yGXZIyNdRpJLuKXt8PHtQrbsKq2W9f
	 K4ehqOlhxDJIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12DFC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021703371.26700.18025847936097122664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c46913c7674518870637e542bb5764019ef9475fa3f855e0d708d689a44573f
Date: Thu, 24 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790217033
