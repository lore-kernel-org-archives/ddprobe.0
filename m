Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54FF171C4
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711520897; cv=none; b=jvEJl/ihnOXPALD5m2X0krEaXo/OTZQOHkCHH7GlPcfiRjzRVHjAVBKLqHKy/I8EH0mbABgICXQngv81ZPnw8td8ISantU7ZxCqfAFNHhSeKcZNNYIDH6VyapWHczEMqWXQ25P+9CfN4z32u3vh1vSi9knTshmx5Zd9AIpI9UcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711520897; c=relaxed/simple;
	bh=vbJihCMtaUBW4ZEqjO4CqJKYXkRDhwNjd4WRuGtbynI=;
	h=To:Subject:From:Message-Id:Date; b=J+YqyIJO9AUDhO8xQSeHqC4g82dxY/55UxQLd3BagR3QP+tjsYpgPnjkOQFTRzgt8GsK6XwGLBpuyPZ5G/8RyWDFuXysAt+tg5USfa/TYEWWzMzubYQNQIMmYHppIeakPmBUUNSRtSAquX8pb29vQyQPOXCO0mvlZG0V87IFuyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzIKN+2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzIKN+2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC4DC433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711520896;
	bh=vbJihCMtaUBW4ZEqjO4CqJKYXkRDhwNjd4WRuGtbynI=;
	h=To:Subject:From:Date:From;
	b=FzIKN+2DPeJVv2ll6rsvv48fIc61Sw6a1qT/xkmvc/9x46aVCK0M5oZk0MAclbSW7
	 NNOMNl74T6x9tZs99s1FsayMSqI0Er2Xn7XShpv2WQjVM3uwWQ0uVRcuYjV+KI0abE
	 INV7EsTqU5NdcVt1unpIw3IDjHSwsQSMymW8bIEtnkYEkjGMuuvtfp7WQZqXRRhq10
	 DAqUZKWQ8/UwHtn6mZP6NYh4iRMY2HmLRNwz28b7CZcdhi4exTzmdA+Qlv9f3liZRw
	 SaxpzNMcIEBJTOFKe8uZuCMp3t1+8xjxVmByeaENyQrIjjA1G2dgaf/WTXEbSrdrhC
	 q/vF5Ab9oBpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AC5C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171152089641.7223.7331485502825424907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0615f6aaab439b0b65a84d6ab6fc8bf5aaa422854b3bf18a10d718a4fca815
Date: Wed, 27 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711520896
