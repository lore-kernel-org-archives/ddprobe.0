Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E584B372B2C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774863894; cv=none; b=MsRE3wELv+tByYc7UCflt7RS8YKwd3tCl1aY4VuxSBhC4ZQ7kNlM48q9JynAWhTDwbPRAP8ykRHVfwNqnZJ9+D6UJsTpH7HOUSxWHFRKEzChUFoJ9FTn2/Tf7HAd+TXsto5GEF5HSELTB8uoqpKbDyYT4Tr7Yk7cG9lebFY1jLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774863894; c=relaxed/simple;
	bh=P+XMm+7juxuk8Ov/rAbt/6FCgehLuK3SXmYKKFdg35A=;
	h=To:Subject:From:Message-Id:Date; b=SnC78JVq55/69UQU6c9L5GmOUV+O9AgpJ25Vs7FnBKIBEYn8LCnETXB/x6Q/loWcqQKSGsN+XnXbU7JMzpo6pkS+WY49BfFr2F/VWcOljFp3tdn5co/Za0FnZifcryg0CiliPloNyA9NExZcYhXawNqbtX9BlSLzZUMwdsXGEsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMlGM8nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMlGM8nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A485FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774863893;
	bh=P+XMm+7juxuk8Ov/rAbt/6FCgehLuK3SXmYKKFdg35A=;
	h=To:Subject:From:Date:From;
	b=EMlGM8ntO9QAYm3K/1spZ7bcymtT/TTASNQD6m0BFDNl8f/4yiF11xD6OBvrX86KJ
	 aIub1Qq1XePCHpYzbynrvnGemngm+Em4evaNmVgp6eYCmcyW8vFctde+07VosxQ9hT
	 FUPRo645hUbDOwbCcNekApk9upjMkyDKr1Myiw77sAo5byJsuU6TjS/l8wfsVeSCgN
	 uFSjZE2UXtJ/jS8DtaRjKI2gBgVd0QwsLTk3wUIrXQetbCYnpGY3Gul4lzIQTGaWnc
	 //Sq9KOt/Ru3lCRxp8wGKrMnih/jCtzhaZky6E7IvkPNrmE7KLsgRF4mycz5ygH9p/
	 YzfG1Me35MDBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91240FB3CEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486389358.27619.13121909530147219355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bf399ebe55d49fbd114cc8192b76a462b61bfefbacd8a2e6f0263f53482f89
Date: Mon, 30 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774863893
