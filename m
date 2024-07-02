Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A8E3770D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719929123; cv=none; b=bYBmFVEwttuwIpdjkUxCrasknlhu46wObCYh93ckx97d1zH9jK8Ee97kRWJOQwH0T13LJ6sL0xf9bwD4xmjfehOCnidOfoPnK5YuyT9Yyc4aL9okQnqApSZ5BzmwnypfuTl6eYoAbkzYTXXumQdHyVBA1wYDccNEsXr8sYhPzCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719929123; c=relaxed/simple;
	bh=48wtGeALrGnMGEX+Zq4QXW4DSfDVujtaUpOcAUoUwwk=;
	h=To:Subject:From:Message-Id:Date; b=YnOfiHQtdrPlGEk2WUt6lrKeuWUO9dEUb9q8uqw8tjPUxeVfp1P8HeZHUQIuBEAfmW/RhJKi2IIll7MpvxHGJJef0fvpOEa79JA+YgMtXtXO6U8nEShzzv1yQ003bSgARM7CwrLodahm6K+yBT1zUTjalTSV5QyHojtA8W74tGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axyoD+J0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axyoD+J0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBA7C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719929122;
	bh=48wtGeALrGnMGEX+Zq4QXW4DSfDVujtaUpOcAUoUwwk=;
	h=To:Subject:From:Date:From;
	b=axyoD+J06LLQwlLL/lx9/1RleywhItTvtWHnd3Z757zbpxMrA/zzXkyQTD0OhFHUy
	 j7eeZOmx7S/28j+QRApm37wqaf78tBJzYwy5fW9ldTwK2XiS8NAjaMelC/8T9BNPkZ
	 t7ESq7E/rs/VJEf538qtDnXnISjV+CfCdMqzRfbFyKBOVxxywRl0g6nbd0y1hzqc3T
	 H+ZulTXH+DnvIEZ5W87QtQqY2HVrUNvXuQ9fXm7+eUjFHYYXAZJE/9jUipYPvGs/zT
	 BL35VsGrp28uPY++3yl0fq1UuIvWfbcztcrCy8iIKwIteVJZ5GnkKuXDUdk7vEOaJX
	 lo8qOld4lfwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAF9C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992912277.26904.7779660750082182662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7c570e512624f1fc9058b0d7af24d958e3729ba64930631f73b0a0f481feff
Date: Tue, 02 Jul 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719929122
