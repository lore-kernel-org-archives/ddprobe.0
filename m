Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B83B19CC27
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737153954; cv=none; b=OuhXF2fJsg3akBJivYfXWzx6ev3Ev5FEVNq7y1jY3bbAhaV2FaJzu3+00g5xSV/K76frgIPxgXSptKYRbaJykLd5zookpSVYUtA64WnkUwCCwK74ZvDSaW2HWwroubKY20yLBuZ8XgXTfEUrXziGosKQog1r2SslAIQ4eve1qaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737153954; c=relaxed/simple;
	bh=Vq6Z8OEZ1JewAHkaXRGWDAcs8myROE5/NAHMYhKJuLw=;
	h=To:Subject:From:Message-Id:Date; b=iby2nbT/NbJS4Wrre5prRFrmAO2Iu/MNDTwjvBKSqKYY7MYjFscP6jXD4L2flPMP8Oxv8ygQQqTilGNXZbUkJTxcKTj253OqJ+M6TVKF4y9yxIlBkSRhQ8cz3nKnaJz9V3OvQmuj5reM7XZUaXSKYxrc/7b3q6K55s7dzpxB7zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru4404gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru4404gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4AC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737153953;
	bh=Vq6Z8OEZ1JewAHkaXRGWDAcs8myROE5/NAHMYhKJuLw=;
	h=To:Subject:From:Date:From;
	b=ru4404gxAGPY2SJ9+xDk5Ij2nCijDsDouEsP5QjvwKVT/sWBvrvdizEOFZPoYfVRy
	 6egFnnlpM/88mXDqm7MCB6SYimqYOjdJNe7QoEG02vFgvcSmbNJBID5jHTL9CImxrN
	 4vUx21oV17N9RDrF1ZRCJcUO7yMTZFHMO1+KADZ/YtUBut1/JFM8ZJ3BX07vJpCOdU
	 eeRXKn7A01XiRwh4qlMwTDUen9BBW/hFHqhyqWol+J0xGuyhGugv9am5t/KHS2MnWE
	 /sujxQ8/XnmQEA8ESFoa5Zw0qB+/PI7saIXs2IlVowPhqIav6BNBWbHFbv2GqzdgQv
	 FW2UYGAMn832w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F7C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715395358.4587.5896289167979082812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5870c0ce0a12c58083a8f78fc179870c7ae556898d54455bbda2d8225ea2b99a
Date: Fri, 17 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737153953
