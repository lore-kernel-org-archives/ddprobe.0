Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D69EDDA9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748652594; cv=none; b=JpIcVsKjf66/RxkZdp6llmdu1IH9zvK3Z+A40m2ZjilML8xRPs741KOWBadYLTN6q+yOF8FdMN4cL4aAKwgQgM9RUygx5QFK8SLe7fT9L0eNc4WaMI/H97qAINJiiLwVV/mlLARUv+O4YhPMbuh744O739OlfdWbdGoqIEQZCTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748652594; c=relaxed/simple;
	bh=DBpsFPQRQYdixJaV+o982DxkePGr8JlQeHHWzsCvzww=;
	h=To:Subject:From:Message-Id:Date; b=rm3HnOKXREICpdmo2xr5JKkInxZgqpWuzRGqTARwtps1i0Lb2gxrtCqApyquRZnMkVOYaFx3ordnJoUVW0/z2lhheUQ2XaXTnlbjpXNH2gvHkHyuQfSuqxjynQRWZr1gfj9mg5UZStAPWE1epxf1C1tiL8EZ57Qh3G4zc2HkNvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkPcw6Nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkPcw6Nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BAEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748652593;
	bh=DBpsFPQRQYdixJaV+o982DxkePGr8JlQeHHWzsCvzww=;
	h=To:Subject:From:Date:From;
	b=tkPcw6NhUUGtpQqssC2JniQd4Ucmc+SnZtX+Z/RRyOG9Uw+R3uzFQ6SM/9S08g1Wt
	 j8k5+hruOq12426roy+YyqNBZk8+KoC9IGDjz8/XqACLPuzQlw8Y+J6lNoxXxy06IQ
	 OflXCG66NkPoIvoOZ71zgrMZ9+4AB8VC1N6C31u/BLbtWENTqdHuFWK8+bTEnDqEkl
	 Lr3vnX3ovbTSeEc0n/PmilH0xH0TW/ZKdbDL36+dVgORviak13hqx+Xi9TCC2Dtmjg
	 IR7pcm4ehn+JYOgaCv0H+phHNCorCZOrqsLxTB+o2j+st+4r/V4Gu2xaWCrWzT4Ve3
	 A47HKRvm9FozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA8C5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865259357.8318.11398296835556973303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46214280dc9c987c64529c0cc48a5ff66f2a9d15987e41cf9ffec49a21be7ae8
Date: Sat, 31 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748652593
