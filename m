Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469227260F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776620854; cv=none; b=WSqGgNWFguw7jfCoHuImtFeNmJ7EMOwHl/8LlX6ssZIPxrXdi9oV+hXyu267D4rPNNzrR0hBxpNBnSLQRgNZF77j9T9L16jXti1HRQRKfRMRQxBTJDta47j7QE+l7KMTxQNjGxBfBjapUEzvALkMNT2EC8dYdH2Mmry1JFYUinM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776620854; c=relaxed/simple;
	bh=ZEsETTdKIaEwXOWGSrnnnnqdCzr6TbVHZ16QgUrUbJs=;
	h=To:Subject:From:Message-Id:Date; b=EJjltSIinRJOHa8rr//jh/0MxuH0uuf++hArxBddqYwKmFK5SMmF+7EtHCeuzMYowvM6TruiQeIa2U2CssrjvAxq9igYoeOBNJEVwuxSOzTStaV3mvEUuySKKPVQdzpIp99PvZcQ+46bZeaH33UAEWFlB0sIYQury1pahL+/OSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxL5pOsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxL5pOsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC7EC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776620853;
	bh=ZEsETTdKIaEwXOWGSrnnnnqdCzr6TbVHZ16QgUrUbJs=;
	h=To:Subject:From:Date:From;
	b=QxL5pOsSVJCKbsxEd61ho3bTN58MPIjvfmqUKbnWrxdgGScu6OZthPHHfJhk+wZnX
	 Q5x0UEoC9lOxpJgtE0DQMuyxnJxMqoqOo5MdD2MklkufHU1KmyZWHvTutLdorNyCp3
	 gAe6Lw72XftH9XJBV0AZ9ERoCAC84cnxE82/FfahZiRy33FFx5HDl1WGNBSkqDGGQ+
	 G6r9aSNtiiIaKx0Q4OjmgH5iPD8+V7z652f5KAfAf8slm48i1ozoV79zd6M9oCTqpg
	 oMQWn6dgajzk7jnO7URIieaO2gQKZWOx+bUwhMkzMDzRppKZUHCNzBJyorOWP7fJtd
	 QHfPBDudhdptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC24EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662085368.32763.1816257722630329422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7ebf98e3561d66a3b1ec41f1e478e36287465a50aaa82b3ce2461829845098
Date: Sun, 19 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776620853
