Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA581F7569
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773528893; cv=none; b=UrgGJjkQ84prO9R2Y+u0piMa3k8PVMJCIoY05FoIo+EPbek8Uks6y2XthpXjofe6BjMoazlNe+mZhS0gRl7IIpQI5w6tY/b6Zq03+iCTe4JIc+dipLKyA5LMDzN0bflAHEELlfJzmirIiYGAuR17TjBYb2UlhcIJxoFETF3rOT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773528893; c=relaxed/simple;
	bh=AUaDotHQJLb40WgxyhW04JvL0YhAXAstqXI7qx5gzoQ=;
	h=To:Subject:From:Message-Id:Date; b=ofVZMcRzSG8U6F6M7cPxX3kUUzlYDcQKQ2Hyc+JPBLRo6ariujqse1X1GA9F4CxQKdEiimlR5XikTb+GwmhpeuZzhUT4hXkuvuUwtLOOltb5xEQU48aVbSMrWpPR6y08MMmKMlQF5+1C0hPYOgbOnEIQ03J2D5mA/EB2RaS30wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo1kiEHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo1kiEHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0BC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773528893;
	bh=AUaDotHQJLb40WgxyhW04JvL0YhAXAstqXI7qx5gzoQ=;
	h=To:Subject:From:Date:From;
	b=Vo1kiEHsjv3qIqEfuALwj8bzYQ6u3YVGp8mccYjDHRFnAAgAVZN9eEJlALUoOvVLl
	 gzkTGjWGiWPFmKCPffOpdzj4+0W7m6W1JjPq3xXeKe6jA7imwu4Vvh2ERTxTh/Uby7
	 GSNcfPEfaaQkJ/DYNYZ24tl94Drd1+UCEslDN+LZNzPJyIK8PveeLKKF0sP5w9M+Dy
	 KvTeLaGRz8y87kjlXqQXqxpnokriwtNYeg14DKBgT4GKaWaFJHMfs+A5wb0QUxnlV6
	 Ug9kqK/0hzoqup2bZDvlzN9bie8XIGgFVY8BonaZGpBpTtohTqUgOS3uk+9EFfzJFS
	 LsGRKC87xGycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F610854B4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352889357.13821.16149623794952113114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7219a42ec016900a5c41ee26f3fc2ec225bdbcb966b2f10567245c53413b8a
Date: Sat, 14 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773528893
