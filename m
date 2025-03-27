Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B551B042F
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743095394; cv=none; b=UlH4h832qowM6dGy3lH7whIcztItrNHfaVFV72fs08OX6enmCcLnDUYdiMHz8ajXKov+qWVk7b6uqYH+BUcfBDeog113ilMOjPQhTHIL4WlzZfK9OLv8s1vEKgVNTuI/xDYSBu/4/4Vai7Uh+eYbBT0yHaqqDTOBrefZMGb3YUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743095394; c=relaxed/simple;
	bh=msftfGPe2C2GwRt/kcsvBScx8HMGYUT/fr9oHii7CeM=;
	h=To:Subject:From:Message-Id:Date; b=RgKi+5lgYANibDtqpdn3BiM3kMz51mAI1dsclrIVafi31HlIyp3bMwRAYrJ/6RugeGR0qwiNJ4mkP0QTbv34kSUNnIva/zhHnnAxn4YS/KMvm9hud+5z5AJ7f7gDvLeELnjJf2DC26J4iEg/deSnKIuVm/qqpWplJxNQLy4ZqDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6r8BJpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6r8BJpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32ADC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743095393;
	bh=msftfGPe2C2GwRt/kcsvBScx8HMGYUT/fr9oHii7CeM=;
	h=To:Subject:From:Date:From;
	b=I6r8BJpAnrJyAWdYTLka1FslQLxGCXeV3zZeQGqL/BV4tTqgS12yQGdmxLt/HQSu+
	 XhrrO7HozJQqF4wra3XOWQjenwn1sYW/hEbw12qmAY37qUqXIVNw1kGHFcows3k0Qp
	 bmDspHUQgbqwO2GZgGvEpaWzykOzzFkzBt4AauWGY6P0n6GL+U4ledCVTFFt1xOmh7
	 Gu4qCVZj70zTgSkSIT9x0IY1BxVhFakaO4MBcNgDPnOxMobpsVnp3dFhAGCsFgXnI/
	 SozW88Hrwhy7O3uR8nOLo09oIN4ZgsTKRabyQ0E7s6pAZRxRqlcstyPjZvYt26GqLs
	 bXmMbSFdybQTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD4DC36010
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309539364.28753.15652394127861022345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfee3ff535541176760e17b8fb105861881750a59078a3004f8c4005e18412b
Date: Thu, 27 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743095393
