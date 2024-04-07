Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27F13B78D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712515097; cv=none; b=r0XNsGMbISnhiE0aIVvocfbR4CKZJtZf9KFouIN4TyW0QoNXmFfemVwQ7VkmhHVyKTIRHAPALk4cDHq/kN0MgXAFOTprHyMq1OzsDNAZjzrOsRto5LXhTpOD1k+T468vl0LnJejnI1dMXXQ0efNgX5NniitufWNkS5DS53CQSf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712515097; c=relaxed/simple;
	bh=f+dQfKe8lrSGlFhdfV0jPyYDau30lhd1ycy9ipWqayc=;
	h=To:Subject:From:Message-Id:Date; b=erH1btq0TtK7C3cqRR0vssvG94Jn8vruvfNDSH2BEiuZ96+RbtH8A+2xOEuJYRI4atxo2QrPZWW3oYK3E7NxAehL8XqHMbjSvZkLfqkXYEBsmiLONKQ8NwyXWeodPNWSR5ndtlQnXx7zLDwCA/wEvy80RQWt1PSqnYwi79myRBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egN8nvDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egN8nvDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76749C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712515096;
	bh=f+dQfKe8lrSGlFhdfV0jPyYDau30lhd1ycy9ipWqayc=;
	h=To:Subject:From:Date:From;
	b=egN8nvDJa5OjMqpmTo6M7aR6+AQnYh+PajN4sbrJZD2A3XxvfGtA/9gjQG3UqO6X7
	 wdB1xyJwDWCUJBX8UrOyC313MS7zRSpM9RakjHdx0VBQsFlodFvkSC4DRxvrCKLPDf
	 r+8uDnwnjG+3klFLbYbnS6QKhDLblh6E2o8OnIOLOqLKYerDr/eO1XgGC6lqM0kwyR
	 XpAV3seWvCIQV5Vh9zu0fsQvR/GEGMGzPIqdlZb3O7ugp1BcYQgQ2i8r7w95MyfIJN
	 5Icjufv5mEtEOHl+Fv4Ih43Dp4z7H+orBUjj0BnZ44lQZb+TouMbMhbhG6xI8MnRkN
	 a8n39rIsHXDug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626BACD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171251509637.29668.10088868532022365173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad5af443e0610e89303053114a74dfe93201f103f8f9c48146e0bb245d884d6
Date: Sun, 07 Apr 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712515096
