Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C978623A994
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757766593; cv=none; b=c0Cw0iUX6rzbvWyiQn8FTQd05TESBYnVL0FAR5vWUUZfm0wE/FBgQdc+cMkGZ0OzUoBAXHbFYHuDOlYsTmIMjX70wtglZOo9YKblvlikxa4X+AjuClhwere8nwhRBn8XdgRKUl4FHCzWhQIBlxDXtzlySnXBezKd+g61FRLiyF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757766593; c=relaxed/simple;
	bh=1qGj2iluYeS2+YMlHe4b+t2lL6cE6vfoZMkZ0DBNrgk=;
	h=To:Subject:From:Message-Id:Date; b=Jf+5Cd1MqrjwUoLOZCHmOqHsKO0fQAxy570Qyv27UUHnHOECmFQHJyg2d/Y86L8Zm+edaoc4v62lIQUXavWX6TG/fwh+vvY2SyhdiYMF1wWOye9gAD5aY5jsR2edqaalOrnNl2w4JAnXR7glpzACU3s1DYHGeFt4EDhhAiP65hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur5SLw/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur5SLw/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E64C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757766593;
	bh=1qGj2iluYeS2+YMlHe4b+t2lL6cE6vfoZMkZ0DBNrgk=;
	h=To:Subject:From:Date:From;
	b=ur5SLw/XI7/cH3iJ3qbdp79a8rRkTdrnFkwzghDMS0Nu4TkxlR5Ky3zxH92oBrfL+
	 RXYDaa7pBv5RzkDwNZ3VoO72fOxJH7iiriO7keh3bINUJc78WO4jDSwiaxjuvxrUrw
	 SsrbNsLGuZRninY9FSM4Ptve/NuwhdO7ls1SRgcVJKp996EdtRzus39x9YDfVvALsO
	 LcSPFz6hVckqRMnfvEyTU5UQcIXDEKMoBQKxhcw8qn6HuWkzFYIXBgWElaUOzsltEK
	 acAxGbg/MrBNsl8kMuNbacahyHr4rFy/8sQ7vcOZUtIgAPIfVBo8V0rtgQTAK9GkiU
	 uO6tfH4nGwnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776659358.426.13714144550336398614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a685af9ef769aacccef486694566611b6421e723a3cd802f9492b22c8ad3b732
Date: Sat, 13 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757766593
