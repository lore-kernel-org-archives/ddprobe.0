Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9B91C3045
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732832754; cv=none; b=OHprS30fISfCQ7JJrVh4AG7lMm7Lpnq/PIu3tJ0aQiRnF+u6IWmiGZLbYJm+fWyoPeItnlC5+BoyDkcAF0v5nFHKy5yTtTLYAojzFQJj/4EHagIS/9V53LxDl86a+azz1jcvkLk/7TE6bUPapGRR4kOw/9n8KQIpVDJXbbK9y+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732832754; c=relaxed/simple;
	bh=6jamtTNUbM1kf3yYYg0OOCn8Z+HhC1WMpJW1sxi4AGk=;
	h=To:Subject:From:Message-Id:Date; b=BK2u3VGurxc9tCz6N10Sc1MB9s0K2C07IbBlzIJ8tp/WxQ4EkSFM9yyjaD0mA/CvWMPUS/qvToTw4KKWbyIJ+OyhMuXo17NoyAUzOV1GOsC6P1nx+PMFqkfR180meOqcIQn6vum81Ibrk1q6CoXvQSehGESAdtLPS/k2ewBRHC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISQYAYZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISQYAYZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B303CC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732832753;
	bh=6jamtTNUbM1kf3yYYg0OOCn8Z+HhC1WMpJW1sxi4AGk=;
	h=To:Subject:From:Date:From;
	b=ISQYAYZ+L7jCR59+oBdSk0+BSCGfDS2I6jnrLzycB1UfDgoLiH7+VM5fsnhliaplX
	 KHn9DN8yMH3rAB2+0xGoJGwLURRFy3E3WcQ3gmFu+6jxnczs3ZgK+AWW10PckhWNYf
	 wwWIcUIOeljcR13NlCZY1YrxErr8VTSi1PAqeOC/TXKjFDDmJDQEPEf0aqpZrIwYZ/
	 0l3hSCePOQvcgCgjtW0wnyfwTJ+g9MCP/sFy4lBeu3PM6Ko0PKkls12eeTtQ2kYXg2
	 1fvBHWRTMwJpmSpAibjy8XeuKAfeKnX+sHpmDo5zS/GRO20zDDNUP2OkkkuPbNeko9
	 U+ImUur4BuvZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF96D70DF8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283275359.23737.210508827109854852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3b37872565815f388b10c53330a83f50b6bc7c4e621f1e235718cf6105158e
Date: Thu, 28 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732832753
