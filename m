Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E1F4908C9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791634234; cv=none; b=MWq9WqTIWVHvBW3txDqOsTYFNdyCVfYa9KxhqQmE5sVL/JRESSR+Us8RS9ZZTjhB7xZ5ckTdYMIF+tcRaqbpukFRymU6XhDcxHpw3xyj8AGOsYqv/iNPcTAawdEkYBf5ux7WD8l13WK1+3+CpQmFBNqpOWlv2VmtPMsJBKc4CXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791634234; c=relaxed/simple;
	bh=64EaEHQz+2vdHqYojKdUYqmD9uNciHoNTBuRoIXdJGg=;
	h=To:Subject:From:Message-Id:Date; b=DyZHALa83AXMTkw2Vjuk8SR1mE3hRAgedJRdUXCcxvkrrgAVxCKSsc+cRTr3rjQYfAIpBYDBZ2PtDxRHPjdjTLGu4YTcYu3ANBJVMotmyOfrkXlcYHK0QNpppIH12a5YU0snoQ+DmgRMnFLjAthBiJ2IM7wFIbpzBKJY8NPe2U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXH/DaMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXH/DaMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E97C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791634233;
	bh=64EaEHQz+2vdHqYojKdUYqmD9uNciHoNTBuRoIXdJGg=;
	h=To:Subject:From:Date:From;
	b=EXH/DaMJf5tKwBmFM44e47HjfxGnFzeBOXEmDO6iPGr/+XUP+X1TCBFRVBErLIv49
	 fOIOm2Kmtw/Et0UOwrpMDM0VMoO8PHanH1UyEu51AsVu7Q4oNeBsQ9wylD6qhm++p/
	 1Dn6GfnukWV1V1X8W5XHDeY6nPnWBE554xjYh3HhIJdkS5hdZTxXs5rnveVhRest7n
	 Q4T5IiGDZtbCG6562JB7stG4kGx9DNEM8uq1lO2EKmzBw+qTQNfJZvFCfgzq0fCU6+
	 RFQGUXVxdyJrXKxpHRCe1LfuQjxxhMYhYXc+uKr7wV/SgdglBsOJr6Rp8KSZm7sE1G
	 Ebrp6s1OKgIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC020CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163423368.19360.15621863992868878349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399ef7431a4c6ec72723ce3532c65de0fa29110465717d1505ec06737c30759b
Date: Sat, 10 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791634233
