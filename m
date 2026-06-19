Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A34D3A9612
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781892394; cv=none; b=G6KH4RTGOfVG0E5gRRGpQUQ50SZy+sFpE24RRfVk/8PLImLh3yzkg4n3Wt6+sxFNccazuXRFqb7c+yO4P5gBlBRWYlvNv5kH/ZGUccsz47Bck9qLPhHAhMkzKvUAnHg4ujWJLrnIpIqCBOH9JSNQFlFWvyc7zjhn8saR7h7mJA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781892394; c=relaxed/simple;
	bh=XOkGFp5qjFg5ioJYjJHQB1xo0Qv45V2Q6uEOQaww6/A=;
	h=To:Subject:From:Message-Id:Date; b=uBRPPOvR2/8P80cDWMc7ZC71MqevLF4XP8u0ROyb8q9NrM7gQDo6gKJkuoMQQdMAmVwJiQwn753xSGaNURm+QUfA+d49pJUNnHaJTUCYhKnYxhhaabzU8RykR5dKfAJ52Nq+Bzvolqq+vTWh0d3SdNQA6+roHVl6l1ccvQjc6TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhfdO6iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhfdO6iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA37C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781892393;
	bh=XOkGFp5qjFg5ioJYjJHQB1xo0Qv45V2Q6uEOQaww6/A=;
	h=To:Subject:From:Date:From;
	b=RhfdO6iw6ANoZwXM0lgYm1pc3IAKmzUPhvxUhqGDiMA4wPCoh7giRyem5MmXSGV6A
	 KUkdTB5JF90c9VPH+C5rCGi3B/VuXRyxyrahfavDR1CDQ8ofOhubQTxzTUAkwzapKg
	 VY2RyCdsx+oDmMtVWEq6AhC/Fd77PaPVk6ONIGyFcXS1/gX8TtheuBL8Ci5DjXVfMi
	 rUuXsFfAyh5pJcTn7V+A+lRoDjnamgqKINheuW/1w6NreWXfJkp1gmM1TfRgvVjbI+
	 waCnS3A6ypM135ib99wW6b9THydSeGFJ8BIF7EL1XvlSuyKTyCczGIRE/Jh+Pd+R2U
	 72KnhDS5iADWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B134ACD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189239371.7171.814973918735206583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3d444bc7e7e6ac03203017b2abb984e3a1a03f0402e4b209637db8e528cc0a
Date: Fri, 19 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781892393
