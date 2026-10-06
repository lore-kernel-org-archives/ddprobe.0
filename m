Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A8F2C15BB
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791264034; cv=none; b=WNeewSnb+rycE7As3MK8J/9GEjH/DtgXy4B8rr76S2lEiXGw9d2LGe5OMgbPgGluCUJDSWboEJbFcaqDhISA28GoUnYcJZezyxa27ZE0OKGIWMDJ8ZVGGF5QQeTnUSqPsN51dNsiblNXyK/GDRD/t7vVMpR6XDiRy0Lvjve0JCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791264034; c=relaxed/simple;
	bh=wTzRO55tOth58QEyX6Kzjy4yj+UbHtRyAR4sWDomMSY=;
	h=To:Subject:From:Message-Id:Date; b=k1eSBjgGSvhBKHvGGny+w8Ikw4wmDCDsgnw41O8tX4vXVb0aRCwRhnYVjuno66BIS9GgRYrYBxTaX1D9AMWb49YgVIKRkPFslqXkdsezNxB1Pzw7lMPExCX/eW0ZgP9y+PfTGTQrWUvXa++JyQ2hKEEA6Z5mmNYwyPdcwl7WF0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHfRBNHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHfRBNHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB524C4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791264033;
	bh=wTzRO55tOth58QEyX6Kzjy4yj+UbHtRyAR4sWDomMSY=;
	h=To:Subject:From:Date:From;
	b=HHfRBNHuDSFM4nKMEoQIY7EYflaD3dTd9x6Jg07AvkGtmqR1bAQbkFbTYAxCcB0bZ
	 xKs+qIvCqIc1cnihBn1ObfLxcCLtYBLakJRBRObwQkslGAhb8REPUCLQmFB5mJBpkk
	 mvYiIM8QarKM0AkpPVofSkBcm/aKSsua1OMS96oDThyXmiHQRqDcKPfJvWXFnllUVk
	 NRzKTJ/l/MrhNn+tFy4JVtH5lzS/85n+XRp4ank9JEt7OPQIMSgX98C99JJPOZ+MVK
	 MzcRzefjDHJc5KUb394LLXFmQJNRtWydEIIiVrt9YRYCJ7+Rs1rkT/grImfdCI0ii6
	 yBefWGpT8LGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A973FCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126403368.25660.15998925905679617576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbfe98535850db53978dbea56da38947bc5aec4e90efa2db78db2d51b6c5254
Date: Tue, 06 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791264033
