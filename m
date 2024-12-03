Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8B91EF0BE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733232354; cv=none; b=e0MM1UvZRAvTaeZlLLdXNw8S8QubJuWTqoOmaBVTEX+DXePi2bF5VAdV6RK3/Lzmc0XyZZxzO1h7PT44WYkIBG6wZ+YYuFVrbZhG6YIY214URRN6qy02rGEpMmVs/tuJwUYAVlSkGVWPcPRrPuyWOkPqKowiG8EvDGg0sbrveZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733232354; c=relaxed/simple;
	bh=Qh/kTzrKU/JEY+ljYy0Ok3hlWhLFvWFuuEup1qwLuAY=;
	h=To:Subject:From:Message-Id:Date; b=l69hhYmHVZk/oU+K8rbnBzJAj1vHgEx3PdgVpfZsWRE7FDr836fxCFrzOU0gw1u5i8qs/GJNz1U96mDyEPWuPYC/WfTUw4Ob0eEZCzXV6BDQodMn32itCsYVF509koDjlsh7JxfdDmc5i1ev8jdWg7xZBzaEo+HSSiGVDGqalLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGRmnXV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGRmnXV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38DBC4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733232353;
	bh=Qh/kTzrKU/JEY+ljYy0Ok3hlWhLFvWFuuEup1qwLuAY=;
	h=To:Subject:From:Date:From;
	b=iGRmnXV3jJn0wb7r4kyji1soZMI8Akd6b1J61r/inxjTOAq4823me6UE05rIlnKF6
	 nyU+UoMI04AU429gu/0A80FxRRQLgJ1kkFHa9aKd4MPC5n1EwFqMVauV0Mmh0wYFpO
	 AqXWJ1tSQR0fNS/WZAiuiPKWR3oMo6ZEY7HPF2Z36HrQqSqLeUxZiV0fjL70GwXvGq
	 fxy5TsWBwQkLc/iIiI8u6UqBUxOHy1qwrEObsJLZmkQiv2P1os0ENLikbjvMKbcyh4
	 yP3LfPLI1mwGTqPUrUjRvOqIWb2aHlkSW76GYRZ/Be/jp7jvP3jlcBlMm69SKZfZvt
	 jNAJ1wadafpKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D85E64A8F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323235364.7503.9587489352620961036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a09dc6dd7c7f122e431cafed71fcca3a0ef8bd52820cc6ee3a0af2bfcd2d30
Date: Tue, 03 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733232353
